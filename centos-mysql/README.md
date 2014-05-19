## MySQL Dockerfile

### Basic Usage

Default settings

Database: data  
User: admin  
Password: adminpass  

```sh
docker run -d dlip/centos-mysql
```

Add volume to store data

```sh
docker run -d -v /mnt/mysql:/var/lib/mysql dlip/centos-mysql
```

### Import sql file on start

```sh
docker run -d -v <path_to_data>:/data -e "MYSQL_IMPORT_FILE=/data/dump.sql" dlip/centos-mysql
```

### Use different credentials/database name

```sh
docker run -d -e "MYSQL_DATABASE=mydatabase" -e "MYSQL_USER=myuser" -e "MYSQL_PASSWORD=mypass" dlip/centos-mysql
```
