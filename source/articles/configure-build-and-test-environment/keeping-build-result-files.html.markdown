---
title: Keeping build result files
tags: faq, artifacts
category: Configure Build and Test Environment
---

# Can I keep build result files?

You can push artifacts generated during your build to S3 or any other storage provider. Each project has its own public key which you'll find in your project settings on the ***General*** page. You can use this key to grant access to your storage provider for Codeship or upload files through SFTP.

For making S3 communication easier, we preinstalled the [aws](http://timkay.com/aws) tool, which you can use to upload artifacts to S3 in your build.

We don't keep your artifacts on the Codeship: After your build is finished we delete all data for security reasons.
