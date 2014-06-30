Docs
====

## Developing

Start middleman with

```
./start_server
```

when in Vagrant as the NFS share doesn't play well with detecting changes in middleman


## Conventions

***Tabs*** in the project configuration are referred to as: ***General*** page, ***Environment*** page.

***Code*** that's supposed to be entered somewhere by the user is written like.

~~~shell
bundle
~~~

```--skip-ci``` use skip-ci within ``` to make the double dash visible.

whereas code chunks like configuration values should be written inline like ```ruby-2.0.0```. Placeholder values are capitalized and should start with ```YOUR_``` if appropriate, like ```YOUR_API_KEY```.

***Acronyms*** like URL or HTML are written in capital letters without exception.

***Brand names*** like GitHub or Bitbucket are written in the original capitalization style.

Try not to ***abbreviate*** words like configuration (config) or repository (repo). Even if most people will get the abbreviation, you'll make it harder for the rest.
