#!/bin/bash

# This script checks if /content/.system and /apps exist and are not empty.
# If they are, it copies new content into these folders.
# The main reason for this script is docker's nature of overlaying container content when using volumes.

if [ !"$(ls -A /var/www/apps)" ]; then
	cp -r /var/mowie/apps/* /var/www/apps/
fi

mkdir -p /var/www/content/.system
if [ !"$(ls -A /var/www/content/.system)" ]; then
        cp -r /var/mowie/.system/* /var/www/content/.system/
fi

