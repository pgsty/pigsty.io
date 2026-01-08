---
title: 'PostgREST: Generate REST API from Schema'
date: 2022-05-21
weight: 650
description: Launch postgREST to generate REST API from PostgreSQL schema automatically
module: [SOFTWARE]
categories: [Reference]
---


[PostgREST](https://postgrest.org/en/stable/index.html) is a binary component that automatically generates a REST API
based on the PostgreSQL database schema.

For example, the following command will launch postgrest with docker (local port 8884, using default admin user, and
expose Pigsty CMDB schema):

```bash
docker run --init --name postgrest --restart always --detach --publish 8884:8081 postgrest/postgrest
```

Visit [http://10.10.10.10:8884](http://10.10.10.10:8884/) will show all auto-generated API definitions and automatically
expose API documentation using [Swagger Editor](http://home.pigsty.cc:8883).

If you wish to perform CRUD operations and design more fine-grained permission control, please refer
to [Tutorial 1 - The Golden Key](https://postgrest.org/en/stable/tutorials/tut1.html) to generate a signed JWT.

![](/img/docs/app/postgrest.jpeg)

This is an example of creating pigsty cmdb API with PostgREST

```bash
cd ~/pigsty/app/postgrest ; docker-compose up -d
```

http://10.10.10.10:8884 is the default endpoint for PostgREST

http://10.10.10.10:8883 is the default api docs for PostgREST

```bash
make up         # pull up postgrest with docker-compose
make run        # launch postgrest with docker
make ui         # run swagger ui container
make view       # print postgrest access point
make log        # tail -f postgrest logs
make info       # introspect postgrest with jq
make stop       # stop postgrest container
make clean      # remove postgrest container
make rmui       # remove swagger ui container
make pull       # pull latest postgrest image
make rmi        # remove postgrest image
make save       # save postgrest image to /tmp/postgrest.tgz
make load       # load postgrest image from /tmp
```

## Swagger UI

Launch a swagger OpenAPI UI and visualize PostgREST API on 8883 with:

```bash
docker run --init --name postgrest --name swagger -p 8883:8080 -e API_URL=http://10.10.10.10:8884 swaggerapi/swagger-ui
# docker run -d -e API_URL=http://10.10.10.10:8884 -p 8883:8080 swaggerapi/swagger-editor # swagger editor
```

Check [http://10.10.10.10:8883/](http://10.10.10.10:8883/)
