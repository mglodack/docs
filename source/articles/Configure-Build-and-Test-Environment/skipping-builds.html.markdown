---
title: Skipping builds
tags: testing
category: Configure Build and Test Environment
---

# Skipping builds

+ [Can I skip and ignore a build?](#skip-build)
+ [Can we limit the branches that are built?](#limit-branches)

# [Can I skip and ignore a build?](#skip-build){:name="skip-build"}

You can add ***--skip-ci*** to the commit message of the last commit before you push and that push will be ignored.

## Ignore pull request merges when I merge several pull requests

When you merge a pull request you can add the **--skip-ci** message on Github as well. Then the last pull request you merge without **--skip-ci**. This way it will only build the last time you merge, which includes all the former pull requests

## [Can we limit the branches that are built?](#limit-branches){:name="limit-branches"}

We build all branches you push to your repository. In our opinion every push to your repository should be tested.

We don't have a feature to limit which branches can be built. [You can skip specific builds](Can-I-skip-and-ignore-a-build.html).
