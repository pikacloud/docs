---
date: 2016-04-09T16:58:30+02:00
prev: /ssl/activate-https/
next: /ssl/play-with-api/
title: Renewal and alerting
weight: 20
---

## Manage your SSL notifications

In order to use our SSL services, such as

  * One-click [Let's Encrypt](https://letsencrypt.org/) certificate deployment
  * Use your own certificate and manage your renewal alerting

you need to deploy a [Load Balancer](/lb/) on **PikaCloud** : it will redirect your legitimate trafic to your domain web server.

Then you can [deploy SSL](/ssl/) on your [Load Balancer].

![SSL architecture demo](images/pika-ssl.png)
