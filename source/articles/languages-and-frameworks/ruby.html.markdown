---
title: Ruby
tags: ruby
category: Languages and Frameworks
---

## Ruby

We use RVM to manage different Ruby versions. We set <strong>1.9.3-p327</strong> as the default version. Currently we do not load the Ruby version from your Gemfile. You can always change the Ruby version by running:

    rvm use RUBY_VERSION_YOU_WANT_TO_USE

The following Ruby versions are preinstalled

### JRuby
    jruby-1.7.4, jruby-1.7.5

### Ruby 1.8.7
    ruby-1.8.7-p374

### Ruby 1.9.2
    ruby-1.9.2-p320

### Ruby 1.9.3
    ruby-1.9.3-p194, ruby-1.9.3-p286, ruby-1.9.3-p327, ruby-1.9.3-p362, ruby-1.9.3-p374, ruby-1.9.3-p392, ruby-1.9.3-p429, ruby-1.9.3-p448

### Ruby 2.0.0
    ruby-2.0.0-p0, ruby-2.0.0-p195, ruby-2.0.0-p247

### Setting the Ruby version through a .ruby-version file
You can also use your .ruby-version file on the Codeship. The .ruby-version file lives in the project root and its content is just your Ruby version, for example: ***2.0.0-p195***. You can just read the ruby version to use from that file:
    rvm use $(cat .ruby-version)
One use case is that you can change your Ruby version for different branches.

### Bundler
Bundler is preinstalled for all Ruby versions.

### Supported Test Frameworks
We support all Ruby based test frameworks from RSpec, Cucumber to minitest or others.

### Run with bundle exec
Make sure to run your commands with **bundle exec** (e.g. **bundle exec rspec**) so all commands you run are executed with the versions of the ruby gems you configured in your Gemfile.lock

### Capybara
Capybara is supported out of the box with the selenium-webdriver , capybara-webkit or the poltergeist driver for phantomjs.
