---
title: Webhooks
tags: webhooks, hooks
category: API and Webhooks
---

# Webhooks

+ [Setup](#setup)
+ [Payloads](#payloads)

## [Setup](#setup){:name="setup"}

Go to the notification settings of your project and enter your HTTP endpoint.
![Webhooks](api-and-webhooks/notifications.png)

## [Payloads](#payloads){:name="payloads"}

We send you a POST request containing the following build data

~~~json
{
  "build": {
    "build_url":"https://www.codeship.io/projects/10213/builds/973711",
    "commit_url":"https://github.com/codeship/docs/
                  commit/96943dc5269634c211b6fbb18896ecdcbd40a047",
    "project_id":10213,
    "build_id":973711,
    "status":"testing",
    "project_full_name":"codeship/docs",
    "commit_id":"96943dc5269634c211b6fbb18896ecdcbd40a047",
    "short_commit_id":"96943",
    "message":"Merge pull request #34 from codeship/feature/shallow-clone",
    "committer":"beanieboi",
    "branch":"master"
  }
}
~~~

Whereas the `status` can have 5 different values.

- `testing` for newly started build
- `error` for failed builds
- `success` for passed builds
- `stopped` for stopped builds
- `waiting` for waiting builds
