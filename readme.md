# phpMyAdmin as Docker container
This container may be used with MySQL or MariaDB linked containers.

#How to use
With MySQL:
```bash
docker run --name mysql -e MYSQL_ROOT_PASSWORD=my_password -d mysql
docker run --rm --link mysql:mysql -p 1234:80 lichti/phpmyadmin
```

With MariaDB:
```bash
docker run --name mariadb -e MYSQL_ROOT_PASSWORD=my_password -d mariadb
docker run --rm --link mariadb:mysql -p 1234:80 lichti/phpmyadmin
```

With External DB:
```bash
docker run --rm -e DBADDR=192.168.0.1 -e DBPORT=3306 -p 1234:80 lichti/phpmyadmin
```


After these commands you'll be able to access phpMyAdmin via `http://localhost:1234`, press `Ctrl+C` to stop container, and it will be removed automatically (because of `--rm` option). Feel free to change `1234` to any port you like.
