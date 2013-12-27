##Can I skip and ignore a build?

You can add ***--skip-ci*** to the commit message of the last commit before you push and that push will be ignored.

### Ignore pull request merges when I merge several pull requests

When you merge a pull request you can add the **--skip-ci** message on Github as well. Then the last pull request you merge without **--skip-ci**. This way it will only build the last time you merge, which includes all the former pull requests
