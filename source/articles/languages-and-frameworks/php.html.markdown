---
title: PHP
tags: php, languages
category: Languages and Frameworks
---

# PHP

## Versions
We use **PHPENV** to manage PHP versions. We currently have ```5.3 , 5.4, 5.5 and 5.6``` installed.
These are aliases that are pointing to the specific 5.x.x versions we have installed.

### Ubuntu 12.10
By default we use 5.4
Specific version: 5.3.28, 5.4.27 and 5.5.11

### Ubuntu 14.04
By default we use 5.5
Specific version: 5.3.29, 5.4.32, 5.5.16 and 5.6.0

***Do not rely on the specific versions we have as this can change any time and could break your build.***

You can change the version you want to use by running ```phpenv local PHP_VERSION``` in your setup commands.
For example

~~~shell
phpenv local 5.5
~~~

## PHP.ini

You can access and change the php.ini file in

~~~shell
/home/rof/.phpenv/versions/YOUR_PHP_VERSION/etc/php.ini
~~~

Make sure to change YOUR_PHP_VERSION to the one you set through phpenv or the default.

## Dependencies and Extensions

You can install dependencies through pear and composer. Extensions can be installed through pecl. If you need any other tools please send us a message.

### Pear

~~~shell
pear install pear/PHP_CodeSniffer
~~~

### Composer

~~~shell
composer install --prefer-source --no-interaction
~~~

### Pecl

~~~shell
pecl install -f memcache
~~~

## Phpenv rehashing
If you install a new executable through a pear package make sure to run

~~~shell
phpenv rehash
~~~

so phpenv is aware of the new executable and sets it up correctly

##Running your PHP Server

If you want to test against a running PHP Server you can use the builtin one to
start a server in the current directory. It will serve files from this directory.

~~~shell
nohup bash -c "php -S 127.0.0.1:8000 2>&1 &" && sleep 1; cat nohup.out
~~~

You can access it in your tests on 127.0.0.1:8000.

Also take a look at the PHP built-in webserver docs in the
[PHP documentation](http://www.php.net/manual/en/features.commandline.webserver.php)

Thanks to [Jeff Donios](https://github.com/doniosjm) for the tip.
