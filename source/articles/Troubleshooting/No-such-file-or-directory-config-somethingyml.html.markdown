---
title: No such file or directory config/something.yml?
tags: build error
category: Troubleshooting
---

# No such file or directory config/something.yml?

If it's a config file you ignored in your git repo create a something.yml.example with data that works in your test and add

~~~ruby
# project settings > test settings > setup commands
cp something.yml.example something.yml
~~~

to your **setup commands** so the yml file is correctly set up.
