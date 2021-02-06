# SPES
simple mysql storage engine

# Spec
- supported version: MySQL 8.0.23 only
- CREATE TABLE, DROP TABLE
- SELECT, INSERT
- No Transactional

# How to build
## Download and Build mysql-server with this repository
```
$ wget https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-boost-8.0.23.tar.gz
$ tar xzvf mysql-boost-8.0.23.tar.gz
$ cd mysql-8.0.23
$ cd storage
$ git clone git@github.com:lrf141/spes.git
$ cd ../
$ cmake . -DWITH_BOOST=./boost -DWITH_DEBUG -DFORCE_INSOURCE_BUILD=1
$ make
```

## Start mysqld
```
$ ./bin/mysqld --initialized
```

## Install Storage Engine Plugin
```
$ cd storage/spes/install_plugin.sh
```