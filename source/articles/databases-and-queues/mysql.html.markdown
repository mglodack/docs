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

We replace the values in your `database.yml` automatically.

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
