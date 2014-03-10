---
title: Continuous Deployment to Elastic Beanstalk
tags: deployment, elastic beanstalk
category: Continuous Deployment
---

# Continuous Deployment to Elastic Beanstalk

+ [Prerequisites](#prerequisites)
+ [Configuration](#configuration)
+ [Deploy Script](#deploy-script)
+ [See Also](#see-also)

## [Prerequisites](#prerequisites){:name="prerequisites"}

This deployment method is not yet able to create Elastic Beanstalk environments, neither does it configure the S3 Bucket needed to upload new versions of your application. Please configure your Elastic Beanstalk environment by hand for your first deploy. All later deployments can than be handled by the scripts provided in this article.

## [Configuration](#configuration){:name="configuration"}

Please add the following variables to the ***Environment*** page in your project configuration.

~~~shell
AWS_ACCESS_KEY_ID="YOUR_AWS_ACCESS_KEY_ID"
AWS_SECRET_ACCESS_KEY="YOUR_AWS_SECRET_ACCESS_KEY"
AWS_DEFAULT_REGION="YOUR_AWS_DEFAULT_REGION"
APP_NAME="YOUR_BEANSTALK_APPLICATION_NAME"
ENV_NAME="YOUR_BEANSTALK_ENVIRONMENT_NAME"
S3_BUCKET="YOUR_S3_BUCKET_FOR_APPLICATION_DEPLOYMENT"
~~~

## [Deploy Script](#deploy-script){:name="deploy-script"}

We would then advise you to add the following script ( in this guide saved as ```deploy_beanstalk```) to your version control repository for the application you want to deploy. Feel free to adapt and modify to your specific needs.

~~~shell
#!/bin/sh

export APP_VERSION=`git rev-parse --short HEAD`
pip install awscli

# clean build artefacts and create the application archive (also ignore any files named .git* in any folder)
git clean -fd
zip -x *.git* -r "${APP_NAME}-${APP_VERSION}.zip" * .*

# delete any version with the same name (based on the short revision)
aws elasticbeanstalk delete-application-version --application-name "${APP_NAME}" --version-label "${APP_VERSION}"  --delete-source-bundle

# upload to S3
aws s3 cp ${APP_NAME}-${APP_VERSION}.zip s3://${S3_BUCKET}/${APP_NAME}-${APP_VERSION}.zip

# create a new version and update the environment to use this version
aws elasticbeanstalk create-application-version --application-name "${APP_NAME}" --version-label "${APP_VERSION}" --source-bundle S3Bucket="${S3_BUCKET}",S3Key="${APP_NAME}-${APP_VERSION}.zip"
aws elasticbeanstalk update-environment --environment-name "${ENV_NAME}" --version-label "${APP_VERSION}"
~~~

Once you added the above script to your repository, you can activate it on the ***Deployment*** page, via the *Custom script* option.

## [See also](#see-also){:name="see-also"}

+ [Latest ```awscli``` documentation/](http://docs.aws.amazon.com/cli/latest/reference/)
