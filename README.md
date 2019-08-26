Kallithea container, ready for postgres. As for writing, Postgres 9.6.14 is confirmed working.

1. Create a login on posgres for Kallithea (ensure login is enabled). 
2. Create a database for Kallithea, make sure user has admin rights for it.
3. Modift config.ini, be sure to set host, port, and connection string.
4. Create a folder called "repos" in the same folder as docker-compose.yml
5. Set owner

      chmod 1000 -R repos

6. Start

      docker-compose up -d

7. The default admin user login is admin:admin.
