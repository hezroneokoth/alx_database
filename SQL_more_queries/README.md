# SQL - More queries

## SQL      MySQL

## Learning Objectives

### General

1. What’s a database
2. What’s a relational database
3. What does SQL stand for
4. What’s MySQL
5. How to create a database in MySQL
6. What does DDL and DML stand for
7. How to CREATE or ALTER a table
8. How to SELECT data from a table
9. How to INSERT, UPDATE or DELETE data
10. What are subqueries
11. How to use MySQL functions

## Requirements

### Python Scripts

1. Recommended editors: Visual studio code
2. AAll your files will be executed on Ubuntu 20.04 LTS using MySQL 5.7 (version 5.7.8-rc)
3. All your files should end with a new line
4. All your SQL queries should have a comment just before (i.e. syntax above)
5. All your files should start by a comment describing the task
6. All SQL keywords should be in uppercase (SELECT, WHERE…)
7. A README.md file, at the root of the folder of the project, is mandatory
8. The length of your files will be tested using wc

More Info
Comments for your SQL file:
$ cat my_script.sql
-- 3 first students in the Batch ID=3
-- because Batch 3 is the best!
SELECT id, name FROM students WHERE batch_id = 3 ORDER BY created_at DESC LIMIT 3;
$
How to Install MySQL on Windows
Check out this comprehensive step by step guide to set up MySQL if you are using Windows: Installing MySQL on Windows: A Step-by-Step Guide

If you using the a Ubuntu instead then follow the guide below to install MySQL.

Install MySQL 5.7 on Ubuntu 20.04 LTS
$ echo 'deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.7-dmr' | sudo tee -a /etc/apt/sources.list
$ sudo apt-get update
$ sudo apt-get install mysql-server-5.7
...
$ mysql --version
mysql  Ver 14.14 Distrib 5.7.8-rc, for Linux (x86_64) using  EditLine wrapper
$
Don’t forget your root password

Connect to your MySQL server:

$ mysql -hlocalhost -uroot -p
Password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 42
Server version: 5.7.8-rc MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> 
mysql> quit
Bye
$
If you have some issues to upgrade to 5.7, don’t hesitate to cleanup your server of any MySQL packages: sudo apt-get remove --purge mysql-server mysql-client mysql-common

Use “container-on-demand” to run MySQL
Ask for container Ubuntu 20.04 - Python 3.4
Connect via SSH
OR connect via the Web terminal
In the container, you should start MySQL before playing with it:
$ service mysql start
 * MySQL Community Server 5.7.8-rc is started
$
$ cat 0-list_databases.sql | mysql -uroot -p my_database
Enter password: 
Database
information_schema
mysql
performance_schema
sys
$
In the container, credentials are root/root

## Tasks

### 0. 

## Contributing

Contributions make the open-source community such an amazing place to learn, create and more. Any contributions you make are appreciated.

If you have a suggestion that would make this project better, please fork the repo and create a pull request. Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (git checkout -b feature/GreatCode)
3. Commit your Changes (git commit -m 'Adding a GreatCode')
4. Push to the Branch (git push origin feature/GreatCode)
5. Open a Pull Request

## License & Copyright

Distributed under MIT license. See LICENSE.txt for more information.

In regards with copyright, all lie with the developer

## Contact

Hezrone Okoth

twitter @that_heazrone

Project Link: https://github.com/hezroneokoth/alx_database

## Acknowledgments

This is a list of resources that I have used during the course of this project;

ALX School Concept Page

https://www3.ntu.edu.sg/home/ehchua/programming/webprogramming/HTTP_Basics.html

https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies

https://docs.python.org/3/howto/urllib2.html

https://docs.python-requests.org/en/latest/