## No such file or directory config/something.yml?

If it's a config file you ignored in your git repo create a something.yml.example with data that works in your test and add

  cp something.yml.example something.yml

to your setup commands so the yml file is correctly set up.
