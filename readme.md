So, you wanna magento dev db, huh?
=========================

Well today is your lucky day buddy. Us folks at <http://www.getbrandid.com/> are sharing the script we use to automatically create a dev db from a prod db, including all the tweaks you need to set things up PROPERLY.

---

It's easy!
=====

* Download your prod.sql to the folder above this file

> e.g. if your magento root is /var/www/magento, then put it in /var/www/prod.sql
    
* clone this repo in the same dir

> `git clone git@github.com:arush/mage-db import`

* change your URLs, mailchimp API keys and choose which modules you want to modify in:

> scripts/live-to-dev.sql

* change your db name in these two:

> scripts/createdb.sql

> import

* change your magento root path in:

> import

* **Now you're ready to rock and roll**, so cd into the repo dir

> `cd magento-db-import #or whatever`

* **execute the script**

> `./import`

It will ask you your myqsql password three times, and in a few seconds, you'll be able to visit your dev site with a brand new db.


##### Basic things #####
* changes Magento URLs
* changes Magento cookie domain
* changes all customer emails so you don't accidentally email them
* changes order increment ID so simpler payment gateways don't get confused dealing with the same order IDs as your live site
* changes magento newsletter subscriber emails


##### Cool things #####
* turns Google Analytics and lots of other analytics services off (kissmetrics, mixpanel, chartbeat)
* turns Olark Livechat off
* changes Mailchimp API keys
* changes Sweettooth rewardsref personal url
* turns Onepica ImageCDN off

##### To Do (please help!) #####
1. automate the password steps, so you don't have to enter mysql password 3 times
2. prompt the user for dbname, url and magento root so you don't have to edit the files