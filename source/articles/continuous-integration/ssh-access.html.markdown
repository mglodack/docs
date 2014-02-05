---
title: SSH access
tags: testing, ssh, key, debug
category: Continuous Integration
---

# SSH Access

+ [Codeship Command](#codeship-command)
+ [Clear Dependency Cache](#clear-dependency-cache)
+ [Existing Directories](#existing-directories)
+ [Useful commands](#useful-commands)
+ [Timeout](#timeout)
+ [NodeJS version](#nodejs-version)

## [Codeship Command](#codeship-command){:name="codeship-command"}

Inside the SSH session, you have access to the Codeship command. It provides some convient methods to debug your project.

~~~shell
cs help
~~~

## [Clear Dependency Cache](#clear-dependency-cache){:name="clear-dependency-cache"}

If you want to start really fresh, you can clear the Dependency Cache by using

~~~shell
cs clear-cache
~~~

## [Existing Directories](#existing-directories){:name="existing-directories"}

There are a few directories in your home directory (`~`).
The most important one is the `clone` directory. The `clone` directory is your project root and contains your source code.

## [Useful commands](#useful-commands){:name="useful-commands"}

Get insight into Environment variables.

~~~shell
printenv
~~~

You can use `grep` to filter the Environment

~~~shell
printenv | grep CI
~~~

## [Timeout](#timeout){:name="timeout"}

The debug build will shutdown itself after `60 minutes`

You can shutdown the debug build manually by using

~~~shell
cs exit
~~~

## [NodeJS version](#nodejs-version){:name="nodejs-version"}

By default we set the NodeJS version to `0.10.22`

You can manage the NodeJS version via NVM.

To install a new version of NodeJS use

~~~shell
nvm install 0.11
~~~

or

Use a different version of  NodeJS

~~~shell
nvm use 0.10.22
~~~
