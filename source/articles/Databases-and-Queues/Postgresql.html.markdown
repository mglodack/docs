---
title: Postgresql
tags: database
category: Databases and Queues
---

## Postgresql

PostgreSQL **9.2.4** runs on the default port and the credentials are stored in the **PG_USER** and **PG_PASSWORD** environment variables.

We install the Ubuntu postgresql-contrib package. It includes the extension modules listed in the [PostgreSQL Documentation](http://www.postgresql.org/docs/9.2/static/contrib.html).

You need to activate them with CREATE EXTENSION as explained in the [Extension Guide](http://www.postgresql.org/docs/9.1/static/sql-createextension.html).

### Create Databases and run psql commands
You can run any sql query against the postgresql database. For example to create a new db:

    psql -c 'create database new_db;'

### Enable Extensions
You can enable extensions either in your database migrations or by running the commands agianst the database. For example to enable hstore for the test database:

    psql -c 'create extension hstore;' -d test

in your setup commands. The default databases created for you are development and test

### PostGIS
   PostGIS 2.0.x is installed in the virtual machine.
