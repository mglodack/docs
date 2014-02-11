---
title: PHP
tags: php, languages
category: Languages and Frameworks
---

# PHP
We use **PHPENV** to manage PHP versions. We currently have ```5.3 , 5.4 and 5.5``` installed. By default we use 5.4
These are aliases that are pointing to the specific 5.x.x versions we have installed.

***Do not rely on the specific versions we have as this can change any time and could break your build.***

You can change the version you want to use by running ```phpenv local PHP_VERSION``` in your setup commands.
For example

~~~shell
phpenv local 5.5
~~~

## PHP.ini

You can access and change the php.ini file in ***/home/rof/.phpenv/versions/YOUR_PHP_VERSION/etc/php.ini***

Make sure to change YOUR_PHP_VERSION to the one you set through phpenv or the default.

## Dependencies and Extensions

You can install dependencies through pear and composer. Extensions can be installed through pecl. If you need any other tools please send us a message.
### Pear

~~~shell
pear install pear/PHP_CodeSniffer
~~~

## Composer

~~~shell
composer install
~~~

## Pecl

~~~shell
pecl install -f memcache
~~~

## Phpenv rehashing
If you install a new executable through a pear package make sure to run

~~~shell
phpenv rehash
~~~

so phpenv is aware of the new executable and sets it up correctly
