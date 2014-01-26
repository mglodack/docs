---
title: Run a command in the background
tags: testing
category: Configure Build and Test Environment
---

# Run a command in the background

Sometimes you might want to run a command, a server or anything in the background. You can use the following template to run any of your commands as a background process

~~~
nohup bash -c "./daemon 2>&1 &"
~~~

Sometimes your server might take a couple of seconds to start, you need to add a sleep then to make sure it is up and running

~~~
nohup bash -c "./daemon 2>&1 &" && sleep 4
~~~


To see the output append **cat nohup.out** to the command

    nohup bash -c "./daemon 2>&1 &" && sleep 4; cat nohup.out
