---
title: Run a command after another command fails
tags: build error, command
category: Troubleshooting
---

To run another command if an earlier one fails you can use the following bash syntax

~~~shell
YOUR_COMMAND || (OTHER_COMMAND && exit 1)
~~~

This will still fail the build, but it lets you execute additional commands