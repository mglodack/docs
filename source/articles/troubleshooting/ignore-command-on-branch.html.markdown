---
title: Ignore command on specific branch or run only on a branch
tags: ignore command, branch
category: Troubleshooting
---

## Ignore command on a branch

If you don't want to run a command on a specific branch use the following syntax.
In this example we run your command on every branch except gh_pages

~~~shell
[ "$CI_BRANCH" != "gh_pages" ] && YOUR_COMMAND
~~~

## Run command only on one branch

If you want to run a specific command only on one branch use the following syntax.
In this example we run your command only on the master branch.

~~~shell
[ "$CI_BRANCH" == "master" ] && YOUR_COMMAND
~~~
