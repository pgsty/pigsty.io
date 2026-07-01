---
title: PostgresML
date: 2024-06-23
weight: 2309
description: >
  How to deploy PostgresML with Pigsty: ML, training, inference, Embedding, RAG inside DB.
icon: fas fa-bolt
toc_hide: true
---


[PostgresML](https://postgresml.org/) is a PostgreSQL extension that supports the latest large language models (LLM), vector operations, classical machine learning, and traditional Postgres application workloads.

PostgresML (pgml) is a PostgreSQL extension written in Rust. You can run standalone Docker images, but this documentation is not a docker-compose template introduction, for reference only.

PostgresML officially supports Ubuntu 22.04, but we also maintain RPM versions for EL 8/9, if you don't need CUDA and NVIDIA-related features.

You need internet access on database nodes to download Python dependencies from PyPI and models from HuggingFace.


{{% alert title="PostgresML is Deprecated" color="warning" %}}

Because the company behind it has ceased operations.

{{% /alert %}}

-----------------------

## Configuration

PostgresML is an extension written in Rust. Pigsty maintains prebuilt packages for PG14-17 on EL8/EL9 and Debian/Ubuntu platforms.


**Creating a New Cluster**

PostgresML 2.10.0 is available for PostgreSQL 14-17. The example below uses PG17; if you use PG14-16, change `pg_version` to the corresponding major version.

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_users:
      - {name: dbuser_meta     ,password: DBUser.Meta     ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: pigsty admin user }
      - {name: dbuser_view     ,password: DBUser.Viewer   ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer for meta database }
    pg_databases:
      - { name: meta ,baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty] ,extensions: [{name: postgis, schema: public}, {name: timescaledb}]}
    pg_hba_rules:
      - {user: dbuser_view , db: all ,addr: infra ,auth: pwd ,title: 'allow grafana dashboard access cmdb from infra nodes'}
    pg_version: 17
    pg_libs: 'pgml, pg_stat_statements, auto_explain'
    pg_extensions: [ pgml, pgvector, wal2json, pg_repack ]
```

Pigsty resolves the `pgml` package alias to the platform-specific package name: `pgml_$v` on EL and `postgresql-$v-pgml` on Debian/Ubuntu. You also need to add `pgml` to `pg_libs`.


**Enabling on an Existing Cluster**

To enable `pgml` on an existing cluster, you can install it using Ansible's `package` module:

```bash
ansible pg-meta -m package -b -a 'name=pgml_17'
# ansible el8,el9 -m package -b -a 'name=pgml_17'              # EL 8/9
# ansible u22,u24 -m package -b -a 'name=postgresql-17-pgml'   # Debian/Ubuntu
```



-----------------------

## Python Dependencies

You also need to install PostgresML's Python dependencies on cluster nodes. Official tutorial: [Installation Guide](https://postgresml.org/docs/guides/developer-docs/installation)



**Install Python and PIP**

Ensure `python3`, `pip`, and `venv` are installed:

```bash
# Ubuntu 22.04 (python3.10), need to install pip and venv using apt
sudo apt install -y python3 python3-pip python3-venv
```

For EL 8 / EL9 and compatible distributions, you can use python3.11:

```bash
# EL 8/9, can upgrade the default pip and virtualenv
sudo yum install -y python3.11 python3.11-pip       # install latest python3.11
python3.11 -m pip install --upgrade pip virtualenv  # use python3.11 on EL8 / EL9
```

<details><summary>Using PyPI Mirrors</summary>

For users in mainland China, we recommend using Tsinghua University's PyPI [mirror](https://mirrors.tuna.tsinghua.edu.cn/help/pypi/).

```bash
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple    # set global mirror (recommended)
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple some-package        # use for single installation
```

</details>



**Install Dependencies**

Create a Python virtual environment and use `pip` to install dependencies from [`requirements.txt`](https://github.com/postgresml/postgresml/blob/master/pgml-extension/requirements.txt) and [`requirements-xformers.txt`](https://github.com/postgresml/postgresml/blob/master/pgml-extension/requirements-xformers.txt).

> If you're using EL 8/9, replace `python3` with `python3.11` in the following commands.

```bash
su - postgres;                          # create virtual environment as database superuser
mkdir -p /data/pgml; cd /data/pgml;     # create virtual environment directory
python3    -m venv /data/pgml           # create virtual environment directory (Ubuntu 22.04)
source /data/pgml/bin/activate          # activate virtual environment

# write Python dependencies and install with pip
cat > /data/pgml/requirements.txt <<EOF
accelerate==0.22.0
auto-gptq==0.4.2
bitsandbytes==0.41.1
catboost==1.2
ctransformers==0.2.27
datasets==2.14.5
deepspeed==0.10.3
huggingface-hub==0.17.1
InstructorEmbedding==1.0.1
lightgbm==4.1.0
orjson==3.9.7
pandas==2.1.0
rich==13.5.2
rouge==1.0.1
sacrebleu==2.3.1
sacremoses==0.0.53
scikit-learn==1.3.0
sentencepiece==0.1.99
sentence-transformers==2.2.2
tokenizers==0.13.3
torch==2.0.1
torchaudio==2.0.2
torchvision==0.15.2
tqdm==4.66.1
transformers==4.33.1
xgboost==2.0.0
langchain==0.0.287
einops==0.6.1
pynvml==11.5.0
EOF

# install dependencies using pip in the virtual environment
python3 -m pip install -r /data/pgml/requirements.txt
python3 -m pip install xformers==0.0.21 --no-dependencies

# additionally, 3 Python packages need to be installed globally using sudo!
sudo python3 -m pip install xgboost lightgbm scikit-learn
```





-----------------------

## Enable PostgresML

After installing the `pgml` extension and Python dependencies on all cluster nodes, you can enable `pgml` on the PostgreSQL cluster.

Use the `patronictl` command to [configure the cluster](https://pigsty.io/docs/pgsql/admin/#config-cluster), add `pgml` to `shared_preload_libraries`, and specify your virtual environment directory in `pgml.venv`:

```yaml
shared_preload_libraries: pgml, timescaledb, pg_stat_statements, auto_explain
pgml.venv: '/data/pgml'
```

Then restart the database cluster and create the extension using SQL commands:

```sql
CREATE EXTENSION vector;        -- also recommend installing pgvector!
CREATE EXTENSION pgml;          -- create PostgresML in the current database
SELECT pgml.version();          -- print PostgresML version information
```

If everything is normal, you should see output similar to the following:

```bash
# create extension pgml;
INFO:  Python version: 3.11.2 (main, Oct  5 2023, 16:06:03) [GCC 8.5.0 20210514 (Red Hat 8.5.0-18)]
INFO:  Scikit-learn 1.3.0, XGBoost 2.0.0, LightGBM 4.1.0, NumPy 1.26.1
CREATE EXTENSION

# SELECT pgml.version(); -- print PostgresML version information
 version
---------
 2.7.8
```

Done! For more details, please refer to the official PostgresML documentation: https://postgresml.org/docs/guides/use-cases/
