---
title: MySQL
tags: database
category: Databases and Queues
---

# MySQL

+ [Ruby on Rails](#ruby-on-rails)
+ [Django](#django)

MySQL **5.5.31** runs on the default port and the credentials are stored in the ```MYSQL_USER``` and ```MYSQL_PASSWORD``` environment variables.

The default databases created for you are **development** and **test**.

## [Ruby on Rails](#ruby-on-rails){:name="ruby-on-rails"}

We replace the values in your `config/database.yml` automatically.

If you have your Rails application in a subdirectory or want to change
it from our default values you can add the following to a codeship.database.yml
(or any other filename) in your repository:

~~~yaml
development:
  adapter: mysql
  host: localhost
  encoding: utf8
  pool: 10
  username: <%= ENV['MYSQL_USER'] %>
  password: <%= ENV['MYSQL_PASSWORD'] %>
  database: development<%= ENV['TEST_ENV_NUMBER'] %>
  socket: /var/run/mysqld/mysqld.sock
test:
  adapter: mysql
  host: localhost
  encoding: utf8
  pool: 10
  username: <%= ENV['MYSQL_USER'] %>
  password: <%= ENV['MYSQL_PASSWORD'] %>
  database: test<%= ENV['TEST_ENV_NUMBER'] %>
  socket: /var/run/mysqld/mysqld.sock
~~~

Then in your setup commands run

~~~shell
cp codeship.database.yml YOUR_DATABASE_YAML_PATH
~~~

to copy the file wherever you need it.

## [Django](#django){:name="django"}

~~~python
DATABASES = {
  'default': {
    'ENGINE': 'django.db.backends.mysql',
    'NAME': 'test',
    'USER': os.environ.get('MYSQL_USER'),
    'PASSWORD': os.environ.get('MYSQL_PASSWORD'),
    'HOST': '127.0.0.1',
  }
}
~~~
