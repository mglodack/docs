---
title: No such file or directory config/something.yml?
tags: build error
category: Troubleshooting
---

# No such file or directory config/something.yml?

If it's a configuration file which you ignored in your repository, create a ```something.yml.example``` with data that works for your tests an add it to your repository. Then add

~~~shell
# project settings > test settings > setup commands
cp something.yml.example something.yml
~~~

to your **setup commands** so the yml file is properly set up.
