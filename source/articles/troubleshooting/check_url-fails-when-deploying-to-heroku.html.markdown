---
title: check_url fails when deploying to Heroku
tags: build error, heroku
category: Troubleshooting
---

# check_url fails when deploying to Heroku

We are checking after each deployment if your app is up. Therefore we call (wget) either the default *.herokuapps.com url or the url you specified here.

If the build fails during ```check_url your_url``` that can have multiple reasons:
+ Your app does not return 200 at your root path.
+ An application error occurred.

## Solutions
+ Return *anything* (status 200) on your root path.
+ Enter in the heroku deployment config any url, for example http>//google.com, that is always up.

