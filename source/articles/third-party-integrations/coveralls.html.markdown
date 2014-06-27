---
title: Coveralls Integration
tags: code coverage, integrations
category: Third Party Integrations
---

# Coveralls Discount Code

Thanks to our partnership with Coveralls we can provide a 25% Discount for 3 months. Use the code **"coverallslovescodeship"** and [get started right away](https://coveralls.io/).

# Setting up Coveralls

There is no specific setup necessary to use Coveralls on Codeship.
You can follow the introductions on the [Coveralls docs](https://coveralls.io/docs/supported_continuous_integration).

# Setting up Coveralls for your Ruby Projects – a step by step guide

Starting with Coveralls and Codeship is easy. Their docs do a great job of guiding you, but all there is to set up your Ruby app is add a .coveralls.yml file to your codebase that contains your Coveralls key:

<pre>repo_token: YOUR_COVERALLS_TOKEN</pre>

It is also possible to set this in the Environment setting of your Codeship project

<pre>COVERALLS_REPO_TOKEN=YOUR_COVERALLS_REPO_TOKEN</pre>

then simply require the Gem in your Gemfile

<pre>gem 'coveralls', require: false</pre>

and put the initializers into your spec_helper.rb or env.rb depending on which framework you use

<code>
require 'coveralls'
Coveralls.wear!
</code>

If you want to combine the coverage data from different frameworks, add the following to your spec_helper.rb and env.rb (also take a look at Coveralls Docs – mentioned above – on that topic).

<code>
#Coveralls with Rspec and Cucumber
require 'coveralls'
Coveralls.wear_merged!
SimpleCov.merge_timeout 3600
 
#MAKING SURE SIMPLECOV WORKS WITH THE PARALLEL_TESTS GEM
SimpleCov.command_name "RSpec/Cucumber:#{Process.pid.to_s}#{ENV['TEST_ENV_NUMBER']}"
</code>

Then you need to add a rake task that pushes your coverage report as soon as your build is finished.

<code>
require 'coveralls/rake/task'
Coveralls::RakeTask.new
</code>

On Codeship – in the setup of your Test Commands add the following:

<code>
bundle exec rake parallel:spec
bundle exec rake parallel:features
bundle exec guard-jasmine --server_timeout 60
bundle exec rake coveralls:push
</code>

This will push to Coveralls only if your tests are successful.