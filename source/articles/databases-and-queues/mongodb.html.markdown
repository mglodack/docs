---
title: MongoDB
tags: database
category: Databases and Queues
---

# MongoDB

MongoDB **2.6.1** runs on the default port and doesn't require any credentials.

If you want to use version 2.4 of MongoDB you can download and run it with code like the following.

~~~bash
# Change the path to the downloaded file here to update the mongo version
wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-2.4.10.tgz
tar xvzf mongo*
cd mongo*
mkdir ~/mongodb

# You can change the parameters mongodb starts with here
nohup bash -c "./bin/mongod --port 27018 --dbpath ~/mongodb 2>&1 &" && sleep 6; cat nohup.out
cd ~/clone
~~~
