#!/bin/bash
docker run -d -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo \
    -e POSTGRES_DB=postgres \
    -e PGDATA=/var/lib/postgresql/data \
    --shm-size=1g\
    --restart always \
    -v $HOME/odoo-erp/shared_postgres_data:/var/lib/postgresql/data \
    -p 5433:5432 \
    --name db-shared postgres:15


# version: '3.8'

# services:
#   db-shared:
#     image: postgres:15
#     container_name: db-shared
#     environment:
#       POSTGRES_USER: odoo
#       POSTGRES_PASSWORD: odoo
#       POSTGRES_DB: postgres
#       PGDATA: /var/lib/postgresql/data
#     volumes:
#       - ./shared_postgres_data:/var/lib/postgresql/data
#     ports:
#       - "5432:5432"
#     shm_size: 1g
#     restart: always