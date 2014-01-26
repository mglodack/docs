---
title: My builds do not run anymore
tags: build error
category: Troubleshooting
---

# My builds do not run anymore

In general a build gets trigger on Codeship on each push to your remote repository. For that there needs to be a hook set in your source code management system (github, bitbucket).

## Issues with the hook in your repository
+ Please check if the Codeship hook is configured and active within your project on GitHub / Bitbucket.
+ Check if the project uuid is the same as on Codeship. You will find your project uuid on Codeship in your project settings on the General page.

## Issues with Codeship
It also might be possible that there are issues on Codeship. Please check our [Codeship Status Page](http://status.codeship.io){:target="_blank"} for further information.



