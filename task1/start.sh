#!/bin/bash


if [ $x == "app1" ];
then
	cp -rf /beginner-html-site-styled/*  /var/www/html/
	httpd -DFOREGROUND
elif [ $x == "app2" ];
then
	cp -rf /project-html-website/*  /var/www/html/
	httpd -DFOREGROUND
else
	echo "No page available to show" > /var/www/html/index.html
	httpd -DFOREGROUND
fi

