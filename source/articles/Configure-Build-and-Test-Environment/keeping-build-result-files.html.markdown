---
title: Keeping build result files
tags: faq, artifacts
category: Configure Build and Test Environment
---

# Can I keep build result files?

You can push artifacts generated during your build to S3 or any other storage provider. Each project has its own public key which you can use to grant access to your storage provider for Codeship only and for example upload files through SFTP as well. You'll find the public key in your project settings on the general page.

For making S3 communication easier we preinstalled the [aws](http://timkay.com/aws) tool, which you can use from within your build steps to upload artifacts to S3.

We don't keep your artifacts on the Codeship because we delete all data, after your build is finished, for security reasons.
