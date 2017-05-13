# Mowie Docker Image

This image puts the Mowie CMS in a dockercontainer to easily deploy it.

# Usage

```sh
docker run -p 8080:80 -v /path/to/apps:/var/www/apps -v /path/to/config:/var/www/config -v /path/to/content:/var/www/content mowie/mowie
```

# Ports

This image exposes port 80.

# Volumes

This image has serveral volumes:

* `/var/www/apps` to store apps
* `/var/www/config` to store config
* `/var/www/content` to store the contents of your website

**You will (currently) need to re-copy apps into your apps-volume before running the installer due to docker's nature of overlaying data inside the container**

# License

Code copyright by 2017 Mowie and contributors. Code released under GPLv3.
