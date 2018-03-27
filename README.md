# Mowie Docker Image

This image puts the Mowie CMS in a docker container to easily deploy it.

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
* `/var/session` to store session data across multiple containers

# Docker compose

You can find an example docker compose file in this repository to get you up and running quickly.

To use it, you should first modify the `MYSQL_ROOT_PASSWORD` of the mariadb-container. Modify folders and ports as nessecary. Then 
simply run `docker-compose up -d`. This will spin up an instance of Mowie with a mariadb instance which is reachable from the 
mowie-container via `db`.

# License

Code copyright by 2017-2018 Mowie and contributors. Code released under GPLv3.
