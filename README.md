# Superset

Prueba de [Apache Superset](https://superset.apache.org) en Docker.

## Puesta en marcha

1. Crear el fichero `docker/.env` a partir del `docker/env-example`.

2. Arrancar los contenedores:

    ```
    make start
    ```

3. Iniciar sesión en [el servidor](http://localhost:8088) con `admin/admin`.

## Referencias

- [Using Docker Compose](https://superset.apache.org/docs/installation/docker-compose)
- [Option #3 - boot up an official release](https://github.com/apache/superset/blob/master/docker-compose-image-tag.yml)
