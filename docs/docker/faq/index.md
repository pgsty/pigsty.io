# FAQ

> Frequently asked questions about the Pigsty Docker module

---

LLMS index: [llms.txt](/llms.txt)

---

--------

## Who Can Run Docker Commands?

By default, Pigsty adds two users to the Docker operating system group. One is the management user that runs the playbook: the SSH login user on the target node. The other is the admin user specified by [`node_admin_username`](/docs/node/param#node_admin_username).
All users in this group (`docker`) can manage Docker using the `docker` CLI command.

To let another user run Docker commands, add that OS user to the docker group:

```bash
usermod -aG docker <username>
```


--------

## Working Through a Proxy

During Docker installation, Pigsty checks for [`proxy_env`](/docs/infra/param#proxy_env). If this parameter exists, Pigsty writes the HTTP proxy configuration to `/etc/docker/daemon.json`.

Docker will use this proxy server when pulling images from upstream registries.

Tip: Run `configure` with `-x` to copy the proxy settings from your current environment into `proxy_env`.


--------

## Using Mirror Registries

If DockerHub access is slow in mainland China network environments, you can prioritize:

- Configure available mirrors with [`docker_registry_mirrors`](/docs/docker/param#docker_registry_mirrors)
- Or configure [`proxy_env`](/docs/infra/param#proxy_env) to pull via proxy
- Or directly use other public registries (such as `quay.io`)

For example:

```bash
docker login quay.io    # Enter username and password to log in
```



--------

## Adding Docker to Monitoring

During installation, run the `docker_register` subtask for the target nodes to register Docker for monitoring. You can also use its alias tag, `add_metrics`:

```bash
./docker.yml -l <your-node-selector> -t docker_register
```



--------

## Using Software Templates

Pigsty provides ready-to-use [software templates](/docs/app/) for Docker Compose. Install the Docker module before you start these templates.
