---
title: Skipping builds
tags: testing, faq
category: Configure Build and Test Environment
---

# Skipping builds

+ [Can I skip and ignore a build?](#skip-build)
+ [Can we limit the branches that are built?](#limit-branches)

# [Can I skip and ignore a build?](#skip-build){:name="skip-build"}

You can add ***--skip-ci*** to the commit message of the last commit before you push and that push will be ignored.

## Ignore pull request merges

When you merge a pull request you can add the **--skip-ci** to the commit message as well.

## [Can we limit the branches that are built?](#limit-branches){:name="limit-branches"}

We build all branches you push to your repository. In our opinion every push to your repository should be tested.

We don't have a feature to limit which branches can be built.
