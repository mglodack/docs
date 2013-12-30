## Environment Variables

If you set an environment variable it will stay for the whole build. You can set your Environment Variables in two different ways.
###Set in project settings
Go to your project settings and there to the Environment settings. There you can enter one environment variable per line:

    APP_ENV=production

We will take this setting and export the environment variable to the shell your build runs in with the following command:

    export APP_ENV=production

We run the export commands as the first step of your build. This is a pure convenience for setting up the environment but completely equal to export the environment variables yourself
###Export directly in setup or test commands
You can run the export command yourself as well in your setup or test commands. So for example you could have the following in your setup commands:

    rvm use 2.0.0export RAILS_ENV=test
    bundle install

There is no difference in setting ***RAILS_ENV*** like this or adding it to the Environment config of your project settings. The advantage of putting it into the environment tab is that secret values will not be stored as part of your build log.

###Default Environment Variables
The following environment variables are exported automatically. You can use those to build your own scripts, run specific commands only if you are on a specific branch or even add flags to your ***CI_MESSAGE*** and use those flags to influence your build.

| Name                        | Value                                              |
| ----------------------------|:--------------------------------------------------:|
| CI                          |  true                                              |
| CI_BUILD_NUMBER             |  ID of the build in our service                    |
| CI_BUILD_URL                |  URL to that build                                 |
| CI_PULL_REQUEST             |  false                                             |
| CI_BRANCH                   |  Branch of this build                              |
|  CI_COMMIT_ID               |  Commit Hash of the build                          |
| CI_COMMITTER_NAME           |  Name of the committer                             |
| CI_COMMITTER_EMAIL          |  Email of the committer                            |
| CI_COMMITTER_USERNAME       |  Username of the commiter in their SCM service     |
| CI_MESSAGE                  |  Message of the last commit for that build         |
| CI_NAME                     |  codeship                                          |
