---
title: SSH access
tags: testing, ssh, key, debug, access
category: Continuous Integration
---

# SSH Access

+ [Codeship command](#codeship-command)
+ [Useful commands](#useful-commands)
+ [Timeout](#timeout)
+ [NodeJS version](#nodejs-version)

## [Codeship command](#codeship-command){:name="codeship-command"}

Inside the SSH session, you have access to the Codeship command. It provides some convient methods to debug your project.

~~~shell
cs help
~~~

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

The Debug build will shutdown itself after `60 minutes`

## [NodeJS version](#nodejs-version){:name="nodejs-version"}

By default we set the NodeJS version to `0.10.22`
