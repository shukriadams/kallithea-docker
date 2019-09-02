# Kallithea container

- kallithea version 0.3.7 in a Docker container. 
- Postgres-ready, Postgres 9.6.14 confirmed working. 
- Includes LDAP support.

Docker Hub : https://hub.docker.com/r/shukriadams/kallithea

## Use

1. Create a login on posgres for Kallithea (ensure login is enabled). 
2. Create a database for Kallithea, make sure user has admin rights for it.
3. Modift config.ini, be sure to set host, port, and connection string.
4. Create a folder called "repos" in the same folder as docker-compose.yml
5. Set owner

      chmod 1000 -R repos

6. Start

      docker-compose up -d

7. The default admin user login is admin:admin.

## Build 

    docker build -t shukriadams/kallithea .

(or use your own name here)

