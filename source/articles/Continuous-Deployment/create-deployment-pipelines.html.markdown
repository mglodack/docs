---
title: Create Deployment Pipelines
tags: deployment
category: Continuous Deployment
---

# Create Deployment Pipelines

+ [Set up a branch configuration](#setup-branch)
+ [Add additional deployment methods](#additional-deployments)
+ [Deploy another branch](#deploy-another-branch)
+ [Edit Branch settings](#edit-branch)
+ [Script Deployment for custom deployments / commands](#script-deployment)

On Codeship you are able to define **deployment pipelines**. You can configure branches that kick off your deployments.

Additionally you can add multiple deployments within one branch configuration. That lets you deploy for exmaple first to a staging app and if that succeeds to the production. That process is fully automated on Codeship and in case of errors you get immediatelly notified.

## [Set up a branch configuration](#setup-branch){:name="setup-branch"}
Go to your ```Project Settings > Deployment``` to set up your deployment.

Add a branch you want to deploy and save it.
![Create Deployment Branch](deployment/create_branch.png)

Choose your hosting provider or deployment method.
![Choose Deployment](deployment/choose_deployment.png)

Fill in the deployment configuration and hit save in the top right corner.
![Save Deployment](deployment/save_deployment.png)

On the next push to that branch (in this case 'master') and if all tests pass the deployment will be triggered.
![Saved Deployment](deployment/saved_deployment.png)

You can now add additional deployments or configure another branch you want to deploy.

## [Add additional deployment methods](#additional-deployments){:name="additional-deployments"}

You are able to add multiple deployments for one branch. They will be execute sequentially and can be re-ordered by drag and drop on the deployment symbol.
![Multiple Deployments](deployment/multiple_deployments.png)

## [Deploy another branch](#deploy-another-branch){:name="deploy-another-branch"}
If you want to create a deployment pipeline for another branch you can do so by clicking on "Add a branch to deploy" and enter the branch name.
![Add additional Branch](deployment/add_additional_branch.png)

By saving that branch you are now able to add your deployment methods for that branch.
![Additional Branch](deployment/second_branch.png)


## [Edit Branch Settings](#edit-branch){:name="edit-branch"}
By clicking on "Edit Branch Settings" you can change the branch name or delete that branch.

## [Use Script Deployment for custom deployments / commands](#script-deployment){:name="script-deployment"}

You can use the [Script Deployment](/deployment/deploying-with-your-own-script/) to run your custom deployment commands or to execute other tasks right after or prior a deployment.
