#!/bin/sh
{
source /opt/py3/bin/activate
nohup /opt/jumpserver/jms start -d >>/opt/jumpserver/nohup.log 
nohup /opt/coco/cocod start -d >>/opt/coco/nohup.log  
} &
systemctl start nginx
