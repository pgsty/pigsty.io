---
title: "FTS - Full-Text Search"
linkTitle: "FTS"
description: "ElasticSearch Alternative with BM25, 2-gram/3-gram Fuzzy Search, Zhparser & Hunspell Segregation Dicts, etc..."
weight: 821
icon: fas fa-magnifying-glass
---

## Extension List

There are **28** extensions in **18** packages.

| **Extension** | **Package** | **Version** | **License** | **Language** | **Description** |
|:---------|:-------|:--------:|:----------:|:--------:|:---------|
| [`pg_search`](/ext/e/pg_search) | [`pg_search`](https://github.com/paradedb/paradedb/tree/main/pg_search) | `0.25.1` | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | Full text search for PostgreSQL using BM25 |
| [`pgroonga`](/ext/e/pgroonga) | [`pgroonga`](https://github.com/pgroonga/pgroonga) | `4.0.4` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Use Groonga as index, fast full text search platform for all languages! |
| [`pgroonga_database`](/ext/e/pgroonga_database) | [`pgroonga`](https://github.com/pgroonga/pgroonga) | `4.0.4` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | PGroonga database management module |
| [`pg_bigm`](/ext/e/pg_bigm) | [`pg_bigm`](https://github.com/pgbigm/pg_bigm) | `1.2` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | create 2-gram (bigram) index for faster full text search. |
| [`zhparser`](/ext/e/zhparser) | [`zhparser`](https://github.com/amutu/zhparser) | `2.3` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | a parser for full-text search of Chinese |
| [`pg_bestmatch`](/ext/e/pg_bestmatch) | [`pg_bestmatch`](https://github.com/tensorchord/pg_bestmatch.rs) | `0.0.2` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | Generate BM25 sparse vector inside PostgreSQL |
| [`vchord_bm25`](/ext/e/vchord_bm25) | [`vchord_bm25`](https://github.com/tensorchord/VectorChord-bm25) | `0.3.0` | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | A postgresql extension for bm25 ranking algorithm |
| [`pg_tokenizer`](/ext/e/pg_tokenizer) | [`pg_tokenizer`](https://github.com/tensorchord/pg_tokenizer.rs) | `0.1.1` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | Tokenizers for full-text search |
| [`biscuit`](/ext/e/biscuit) | [`pg_biscuit`](https://github.com/CrystallineCore/Biscuit) | `2.4.3` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | IAM-LIKE pattern matching with bitmap indexing |
| [`pg_textsearch`](/ext/e/pg_textsearch) | [`pg_textsearch`](https://github.com/timescale/pg_textsearch) | `1.2.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Full-text search with BM25 ranking |
| [`pg_pinyin`](/ext/e/pg_pinyin) | [`pg_pinyin`](https://github.com/aiyou178/pg_pinyin) | `0.0.5` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | Pinyin romanization and search helpers for PostgreSQL |
| [`pg_kazsearch`](/ext/e/pg_kazsearch) | [`pg_kazsearch`](https://github.com/darkhanakh/pg-kazsearch) | `2.3.0` | <a class="ext-badge ext-badge--license lgpl30" href="/ext/license#lgpl30">LGPL-3.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | Kazakh full-text search extension for PostgreSQL |
| [`psql_bm25s`](/ext/e/psql_bm25s) | [`psql_bm25s`](https://github.com/Intelligent-Internet/psql_bm25s) | `0.4.13` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | PostgreSQL extension for BM25-family lexical retrieval |
| [`pg_fts`](/ext/e/pg_fts) | [`pg_fts`](https://codeberg.org/gregburd/pg_fts) | `0.2.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Full-text search with BM25 and BM25F ranking |
| [`pg_cjk_parser`](/ext/e/pg_cjk_parser) | [`pg_cjk_parser`](https://github.com/huangjimmy/pg_cjk_parser) | `0.1.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | CJK bigram parser derived from PostgreSQL full-text search |
| [`pg_jieba`](/ext/e/pg_jieba) | [`pg_jieba`](https://github.com/jaiminpan/pg_jieba) | `1.1.0` | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> | Chinese full-text search parser based on cppjieba |
| [`hunspell_cs_cz`](/ext/e/hunspell_cs_cz) | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | `1.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | Czech Hunspell Dictionary |
| [`hunspell_de_de`](/ext/e/hunspell_de_de) | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | `1.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | German Hunspell Dictionary |
| [`hunspell_en_us`](/ext/e/hunspell_en_us) | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | `1.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | en_US Hunspell Dictionary |
| [`hunspell_fr`](/ext/e/hunspell_fr) | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | `1.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | French Hunspell Dictionary |
| [`hunspell_ne_np`](/ext/e/hunspell_ne_np) | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | `1.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | Nepali Hunspell Dictionary |
| [`hunspell_nl_nl`](/ext/e/hunspell_nl_nl) | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | `1.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | Dutch Hunspell Dictionary |
| [`hunspell_nn_no`](/ext/e/hunspell_nn_no) | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | `1.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | Norwegian (norsk) Hunspell Dictionary |
| [`hunspell_pt_pt`](/ext/e/hunspell_pt_pt) | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | `1.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | Portuguese Hunspell Dictionary |
| [`hunspell_ru_ru`](/ext/e/hunspell_ru_ru) | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | `1.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | Russian Hunspell Dictionary |
| [`hunspell_ru_ru_aot`](/ext/e/hunspell_ru_ru_aot) | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | `1.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | Russian Hunspell Dictionary (from AOT.ru group) |
| [`fuzzystrmatch`](/ext/e/fuzzystrmatch) | [`fuzzystrmatch`](https://www.postgresql.org/docs/current/fuzzystrmatch.html) | `1.2` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | determine similarities and distance between strings |
| [`pg_trgm`](/ext/e/pg_trgm) | [`pg_trgm`](https://www.postgresql.org/docs/current/pgtrgm.html) | `1.6` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | text similarity measurement and index searching based on trigrams |
{.ext-table}


---------

## pg_search {#pg_search}

[**`pg_search`**](/ext/e/pg_search) - `0.25.1` : Full text search for PostgreSQL using BM25

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_search`](/ext/e/pg_search) | **el8** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Package** | [`pg_search`](https://github.com/paradedb/paradedb/tree/main/pg_search) | **el9** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **RPM** | `pg_search_$v` | **el10** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **DEB** | `postgresql-$v-pg-search` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
{.ext-table .ext-table--cate}


---------

## pgroonga {#pgroonga}

[**`pgroonga`**](/ext/e/pgroonga) - `4.0.4` : Use Groonga as index, fast full text search platform for all languages!

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pgroonga`](/ext/e/pgroonga) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pgroonga`](https://github.com/pgroonga/pgroonga) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pgroonga_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pgroonga` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pgroonga_database {#pgroonga_database}

[**`pgroonga`**](/ext/e/pgroonga_database) - `4.0.4` : PGroonga database management module

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pgroonga_database`](/ext/e/pgroonga_database) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pgroonga`](https://github.com/pgroonga/pgroonga) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pgroonga_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pgroonga` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_bigm {#pg_bigm}

[**`pg_bigm`**](/ext/e/pg_bigm) - `1.2` : create 2-gram (bigram) index for faster full text search.

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_bigm`](/ext/e/pg_bigm) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_bigm`](https://github.com/pgbigm/pg_bigm) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_bigm_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-bigm` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## zhparser {#zhparser}

[**`zhparser`**](/ext/e/zhparser) - `2.3` : a parser for full-text search of Chinese

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`zhparser`](/ext/e/zhparser) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`zhparser`](https://github.com/amutu/zhparser) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `zhparser_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-zhparser` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_bestmatch {#pg_bestmatch}

[**`pg_bestmatch`**](/ext/e/pg_bestmatch) - `0.0.2` : Generate BM25 sparse vector inside PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_bestmatch`](/ext/e/pg_bestmatch) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_bestmatch`](https://github.com/tensorchord/pg_bestmatch.rs) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_bestmatch_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-bestmatch` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## vchord_bm25 {#vchord_bm25}

[**`vchord_bm25`**](/ext/e/vchord_bm25) - `0.3.0` : A postgresql extension for bm25 ranking algorithm

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`vchord_bm25`](/ext/e/vchord_bm25) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`vchord_bm25`](https://github.com/tensorchord/VectorChord-bm25) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `vchord_bm25_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-vchord-bm25` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_tokenizer {#pg_tokenizer}

[**`pg_tokenizer`**](/ext/e/pg_tokenizer) - `0.1.1` : Tokenizers for full-text search

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_tokenizer`](/ext/e/pg_tokenizer) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_tokenizer`](https://github.com/tensorchord/pg_tokenizer.rs) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_tokenizer_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-tokenizer` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## biscuit {#biscuit}

[**`pg_biscuit`**](/ext/e/biscuit) - `2.4.3` : IAM-LIKE pattern matching with bitmap indexing

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`biscuit`](/ext/e/biscuit) | **el8** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Package** | [`pg_biscuit`](https://github.com/CrystallineCore/Biscuit) | **el9** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **RPM** | `biscuit_$v` | **el10** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **DEB** | `postgresql-$v-biscuit` | **d12** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **License** | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | **u24** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| | | **u26** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
{.ext-table .ext-table--cate}


---------

## pg_textsearch {#pg_textsearch}

[**`pg_textsearch`**](/ext/e/pg_textsearch) - `1.2.0` : Full-text search with BM25 ranking

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_textsearch`](/ext/e/pg_textsearch) | **el8** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **Package** | [`pg_textsearch`](https://github.com/timescale/pg_textsearch) | **el9** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **RPM** | `pg_textsearch_$v` | **el10** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **DEB** | `postgresql-$v-textsearch` | **d12** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| | | **u26** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
{.ext-table .ext-table--cate}


---------

## pg_pinyin {#pg_pinyin}

[**`pg_pinyin`**](/ext/e/pg_pinyin) - `0.0.5` : Pinyin romanization and search helpers for PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_pinyin`](/ext/e/pg_pinyin) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_pinyin`](https://github.com/aiyou178/pg_pinyin) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_pinyin_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pinyin` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_kazsearch {#pg_kazsearch}

[**`pg_kazsearch`**](/ext/e/pg_kazsearch) - `2.3.0` : Kazakh full-text search extension for PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_kazsearch`](/ext/e/pg_kazsearch) | **el8** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Package** | [`pg_kazsearch`](https://github.com/darkhanakh/pg-kazsearch) | **el9** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **RPM** | `pg_kazsearch_$v` | **el10** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **DEB** | `postgresql-$v-pg-kazsearch` | **d12** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Language** | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | **d13** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **License** | <a class="ext-badge ext-badge--license lgpl30" href="/ext/license#lgpl30">LGPL-3.0</a> | **u24** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| | | **u26** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
{.ext-table .ext-table--cate}


---------

## psql_bm25s {#psql_bm25s}

[**`psql_bm25s`**](/ext/e/psql_bm25s) - `0.4.13` : PostgreSQL extension for BM25-family lexical retrieval

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`psql_bm25s`](/ext/e/psql_bm25s) | **el8** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **Package** | [`psql_bm25s`](https://github.com/Intelligent-Internet/psql_bm25s) | **el9** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **RPM** | `psql_bm25s_$v` | **el10** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **DEB** | `postgresql-$v-psql-bm25s` | **d12** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| | | **u26** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
{.ext-table .ext-table--cate}


---------

## pg_fts {#pg_fts}

[**`pg_fts`**](/ext/e/pg_fts) - `0.2.0` : Full-text search with BM25 and BM25F ranking

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_fts`](/ext/e/pg_fts) | **el8** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **Package** | [`pg_fts`](https://codeberg.org/gregburd/pg_fts) | **el9** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **RPM** | `pg_fts_$v` | **el10** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **DEB** | `postgresql-$v-pg-fts` | **d12** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| | | **u26** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
{.ext-table .ext-table--cate}


---------

## pg_cjk_parser {#pg_cjk_parser}

[**`pg_cjk_parser`**](/ext/e/pg_cjk_parser) - `0.1.0` : CJK bigram parser derived from PostgreSQL full-text search

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_cjk_parser`](/ext/e/pg_cjk_parser) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_cjk_parser`](https://github.com/huangjimmy/pg_cjk_parser) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_cjk_parser_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-cjk-parser` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_jieba {#pg_jieba}

[**`pg_jieba`**](/ext/e/pg_jieba) - `1.1.0` : Chinese full-text search parser based on cppjieba

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_jieba`](/ext/e/pg_jieba) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_jieba`](https://github.com/jaiminpan/pg_jieba) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_jieba_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-jieba` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## hunspell_cs_cz {#hunspell_cs_cz}

[**`hunspell`**](/ext/e/hunspell_cs_cz) - `1.0` : Czech Hunspell Dictionary

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`hunspell_cs_cz`](/ext/e/hunspell_cs_cz) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `hunspell_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-hunspell` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## hunspell_de_de {#hunspell_de_de}

[**`hunspell`**](/ext/e/hunspell_de_de) - `1.0` : German Hunspell Dictionary

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`hunspell_de_de`](/ext/e/hunspell_de_de) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `hunspell_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-hunspell` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## hunspell_en_us {#hunspell_en_us}

[**`hunspell`**](/ext/e/hunspell_en_us) - `1.0` : en_US Hunspell Dictionary

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`hunspell_en_us`](/ext/e/hunspell_en_us) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `hunspell_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-hunspell` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## hunspell_fr {#hunspell_fr}

[**`hunspell`**](/ext/e/hunspell_fr) - `1.0` : French Hunspell Dictionary

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`hunspell_fr`](/ext/e/hunspell_fr) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `hunspell_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-hunspell` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## hunspell_ne_np {#hunspell_ne_np}

[**`hunspell`**](/ext/e/hunspell_ne_np) - `1.0` : Nepali Hunspell Dictionary

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`hunspell_ne_np`](/ext/e/hunspell_ne_np) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `hunspell_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-hunspell` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## hunspell_nl_nl {#hunspell_nl_nl}

[**`hunspell`**](/ext/e/hunspell_nl_nl) - `1.0` : Dutch Hunspell Dictionary

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`hunspell_nl_nl`](/ext/e/hunspell_nl_nl) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `hunspell_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-hunspell` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## hunspell_nn_no {#hunspell_nn_no}

[**`hunspell`**](/ext/e/hunspell_nn_no) - `1.0` : Norwegian (norsk) Hunspell Dictionary

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`hunspell_nn_no`](/ext/e/hunspell_nn_no) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `hunspell_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-hunspell` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## hunspell_pt_pt {#hunspell_pt_pt}

[**`hunspell`**](/ext/e/hunspell_pt_pt) - `1.0` : Portuguese Hunspell Dictionary

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`hunspell_pt_pt`](/ext/e/hunspell_pt_pt) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `hunspell_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-hunspell` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## hunspell_ru_ru {#hunspell_ru_ru}

[**`hunspell`**](/ext/e/hunspell_ru_ru) - `1.0` : Russian Hunspell Dictionary

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`hunspell_ru_ru`](/ext/e/hunspell_ru_ru) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `hunspell_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-hunspell` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## hunspell_ru_ru_aot {#hunspell_ru_ru_aot}

[**`hunspell`**](/ext/e/hunspell_ru_ru_aot) - `1.0` : Russian Hunspell Dictionary (from AOT.ru group)

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`hunspell_ru_ru_aot`](/ext/e/hunspell_ru_ru_aot) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`hunspell`](https://github.com/postgrespro/hunspell_dicts) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `hunspell_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-hunspell` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang data" href="/ext/language#data">Data</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## fuzzystrmatch {#fuzzystrmatch}

[**`fuzzystrmatch`**](/ext/e/fuzzystrmatch) - `1.2` : determine similarities and distance between strings

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`fuzzystrmatch`](/ext/e/fuzzystrmatch) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`fuzzystrmatch`](https://www.postgresql.org/docs/current/fuzzystrmatch.html) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_trgm {#pg_trgm}

[**`pg_trgm`**](/ext/e/pg_trgm) - `1.6` : text similarity measurement and index searching based on trigrams

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_trgm`](/ext/e/pg_trgm) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_trgm`](https://www.postgresql.org/docs/current/pgtrgm.html) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}
