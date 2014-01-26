---
title: Deploying to Heroku
tags: deployment, heroku
category: Continuous Deployment
---

# Deploying to Heroku

+ [Run migration after the app is deployed](#migration)
+ [Troubleshooting](#troubleshooting)
+ [Related Content](#related-content)

Within Codeship you are able to configure [Deployment Pipelines](/continuous-deployment/create-deployment-pipelines/). You can easily add a Heroku Deployment choosing Heroku as deployment method.

You are asked to enter the **name of your Heroku application** and your **API key** you get from Heroku. You need to create the application on Heroku first.

By clicking on **more options** you can configure additional settings.

### URL of your Heroku Application
We are checking after each deployment if your app is up. Therefore we call (wget) either the default *.herokuapps.com url or the url you specified here.

*Basic Auth* \\
If this url requires basic out please enter: ```http://USERNAME:PASSWORD@YOUR_URL```

## [Run migration after the app is deployed](#migration){:name="migration"}
You can either specify within the more options section to run the migration during the Heroku deployment. If you want to run your migration after the deployment you can add a [Script Deployment](/deployment/deploying-with-your-own-script/) below the Heroku deployment and run the migration there.

~~~shell
heroku_run bundle exec rake db:migrate my_herokuapp_name
~~~

![Migration after Heroku Deployment](deployment/script_deployment.png)

## [Troubleshooting](#troubleshooting){:name="troubleshooting"}
+ [check_url fails when deploying to Heroku](/troubleshooting/check_url-fails-when-deploying-to-heroku/)
+ [My push to Heroku got rejected](/troubleshooting/my-push-to-heroku-got-rejected/)


## [Related Content](#related-content){:name="related-content"}
On our blog you will find a full tutorial on how to [deploy a Rails app from Github to Heroku](http://blog.codeship.io/2013/09/26/how-to-deploy-a-ruby-on-rails-app-from-github-to-heroku.html){:target="_blank"}.
The Heroku part is the same for any application, framework, GitHub or bitbucket.
