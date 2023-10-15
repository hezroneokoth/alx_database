# SQL - Introduction

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

## More Info

## Comments for your SQL file

    $ cat my_script.sql

    -- 3 first students in the Batch ID=3

    -- because Batch 3 is the best!

    SELECT id, name FROM students WHERE batch_id = 3 ORDER BY created_at DESC LIMIT 3;

    $

## How to Install MySQL on Windows

Check out this comprehensive step by step guide to set up MySQL if you are using Windows: Installing MySQL on Windows: A Step-by-Step Guide

If you using the a Ubuntu instead then follow the guide below to install MySQL.

Install MySQL 5.7 on Ubuntu 20.04 LTS

    $ echo 'deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.7-dmr' | sudo tee -a /etc/apt/sources.list

    $ sudo apt-get update

    $ sudo apt-get install mysql-server-5.7

    ...

    $ mysql --version mysql  Ver 14.14 Distrib 5.7.8-rc, for Linux (x86_64) using  EditLine wrapper

    $

Don’t forget your root password

Connect to your MySQL server:

    $ mysql -hlocalhost -uroot -p

    Password: 

    Welcome to the MySQL monitor.  Commands end with ; or \g.

    Your MySQL connection id is 42

    Server version: 5.7.8-rc MySQL Community Server (GPL)

    Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

    Oracle is a registered trademark of Oracle Corporation and/or its affiliates.
    
    Other names may be trademarks of their respective owners.

    Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

    mysql> 

    mysql> quit

    Bye

    $

If you have some issues to upgrade to 5.7, don’t hesitate to cleanup your server of any MySQL packages: sudo apt-get remove --purge mysql-server mysql-client mysql-common

## Use “container-on-demand” to run MySQL

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

### 0. List databases

Write a script that lists all databases of your MySQL server.

    guillaume@ubuntu:~/$ cat 0-list_databases.sql | mysql -hlocalhost -uroot -p

    Enter password: 

    Database

    information_schema

    mysql

    performance_schema

    guillaume@ubuntu:~/$ 

### 1. Create a database

Write a script that creates the database hbtn_0c_0 in your MySQL server.

If the database hbtn_0c_0 already exists, your script should not fail

You are not allowed to use the SELECT or SHOW statements

    guillaume@ubuntu:~/$ cat 1-create_database_if_missing.sql | mysql -hlocalhost -uroot -p

    Enter password: 

    guillaume@ubuntu:~/$ cat 0-list_databases.sql | mysql -hlocalhost -uroot -p

    Enter password: 

    Database

    information_schema

    hbtn_0c_0

    mysql

    performance_schema

    guillaume@ubuntu:~/$ cat 1-create_database_if_missing.sql | mysql -hlocalhost -uroot -p

    Enter password: 

    guillaume@ubuntu:~/$ 

### 2. Delete a database

Write a script that deletes the database hbtn_0c_0 in your MySQL server.

If the database hbtn_0c_0 doesn’t exist, your script should not fail

You are not allowed to use the SELECT or SHOW statements

    guillaume@ubuntu:~/$ cat 0-list_databases.sql | mysql -hlocalhost -uroot -p

    Enter password: 

    Database

    information_schema

    hbtn_0c_0

    mysql

    performance_schema

    guillaume@ubuntu:~/$ cat 2-remove_database.sql | mysql -hlocalhost -uroot -p

    Enter password: 

    guillaume@ubuntu:~/$ cat 0-list_databases.sql | mysql -hlocalhost -uroot -p

    Enter password: 

    Database

    information_schema

    mysql

    performance_schema

    guillaume@ubuntu:~/$

### 3. List tables

Write a script that lists all the tables of a database in your MySQL server.

The database name will be passed as argument of mysql command (in the following example: mysql is the name of the database)

    guillaume@ubuntu:~/$ cat 3-list_tables.sql | mysql -hlocalhost -uroot -p mysql

    Enter password: 

    Tables_in_mysql

    columns_priv

    db

    event

    func

    general_log

    help_category

    help_keyword

    help_relation

    help_topic

    host

    ndb_binlog_index

    plugin

    proc

    procs_priv

    proxies_priv

    servers

    slow_log

    tables_priv

    time_zone

    time_zone_leap_second

    time_zone_name

    time_zone_transition

    time_zone_transition_type

    user

    guillaume@ubuntu:~/$

### 4. First table

Write a script that creates a table called first_table in the current database in your MySQL server.

first_table description:

id INT

name VARCHAR(256)

The database name will be passed as an argument of the mysql command

If the table first_table already exists, your script should not fail

You are not allowed to use the SELECT or SHOW statements

    guillaume@ubuntu:~/$ cat 4-first_table.sql | mysql -hlocalhost -uroot -p hbtn_0c_0

    Enter password: 

    guillaume@ubuntu:~/$ cat 3-list_tables.sql | mysql -hlocalhost -uroot -p hbtn_0c_0

    Enter password: 

    Tables_in_hbtn_0c_0

    first_table

    guillaume@ubuntu:~/$ 

### 5. Full description

Write a script that prints the full description of the table first_table from the database hbtn_0c_0 in your MySQL server.

The database name will be passed as an argument of the mysql command

You are not allowed to use the DESCRIBE or EXPLAIN statements

    guillaume@ubuntu:~/$ cat 5-full_table.sql | mysql -hlocalhost -uroot -p hbtn_0c_0

    Enter password: 

    Table   Create Table

    first_table CREATE TABLE `first_table` (\n  `id` int(11) DEFAULT NULL,\n  `name` varchar(256) DEFAULT NULL\n) ENGINE=InnoDB DEFAULT CHARSET=latin1

    guillaume@ubuntu:~/$ 

### 6. List all in table

Write a script that lists all rows of the table first_table from the database hbtn_0c_0 in your MySQL server.

All fields should be printed

The database name will be passed as an argument of the mysql command

    guillaume@ubuntu:~/$ cat 6-list_values.sql | mysql -hlocalhost -uroot -p hbtn_0c_0

    Enter password: 

    guillaume@ubuntu:~/$ 

### 7. First add

Write a script that inserts a new row in the table first_table (database hbtn_0c_0) in your MySQL server.

New row:

id = 89

name = Holberton School

The database name will be passed as an argument of the mysql command

    guillaume@ubuntu:~/$ cat 7-insert_value.sql | mysql -hlocalhost -uroot -p hbtn_0c_0

    Enter password: 

    guillaume@ubuntu:~/$ cat 6-list_values.sql | mysql -hlocalhost -uroot -p hbtn_0c_0

    Enter password: 

    id  name

    89  Holberton School

    guillaume@ubuntu:~/$ cat 7-insert_value.sql | mysql -hlocalhost -uroot -p hbtn_0c_0

    Enter password: 

    guillaume@ubuntu:~/$ cat 7-insert_value.sql | mysql -hlocalhost -uroot -p hbtn_0c_0

    Enter password: 

    guillaume@ubuntu:~/$ cat 6-list_values.sql | mysql -hlocalhost -uroot -p hbtn_0c_0

    Enter password: 

    id  name

    89  Holberton School

    89  Holberton School

    89  Holberton School

    guillaume@ubuntu:~/$ 

### 8. Count 89

Write a script that displays the number of records with id = 89 in the table first_table of the database hbtn_0c_0 in your MySQL server.

The database name will be passed as an argument of the mysql command

    guillaume@ubuntu:~/$ cat 8-count_89.sql | mysql -hlocalhost -uroot -p hbtn_0c_0 | tail -1

    Enter password: 

    3

    guillaume@ubuntu:~/$ 

### 9. Full creation

Write a script that creates a table second_table in the database hbtn_0c_0 in your MySQL server and add multiples rows.

second_table description:

id INT

name VARCHAR(256)

score INT

The database name will be passed as an argument to the mysql command

If the table second_table already exists, your script should not fail

You are not allowed to use the SELECT and SHOW statements

Your script should create these records:

id = 1, name = “John”, score = 10

id = 2, name = “Alex”, score = 3

id = 3, name = “Bob”, score = 14

id = 4, name = “George”, score = 8

    guillaume@ubuntu:~/$ cat 9-full_creation.sql | mysql -hlocalhost -uroot -p hbtn_0c_0

    Enter password: 

    guillaume@ubuntu:~/$ 

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

What is Database & SQL? - https://www.youtube.com/watch?v=FR4QIeZaPeM 

A basic MySQL Tutorial - https://www.edureka.co/blog/mysql-tutorial/ 

Basic SQL Statements: DDL & DML - 
https://web.csulb.edu/colleges/coe/cecs/dbdesign/dbdesign.php?page=sql/ddldml.php 
Basic queries: SQL & RA - https://web.csulb.edu/colleges/coe/cecs/dbdesign/dbdesign.php?page=sql/queries.php 

SQL technique: functions - https://web.csulb.edu/colleges/coe/cecs/dbdesign/dbdesign.php?page=sql/functions.php 

SQL Technique: Sub queries - https://web.csulb.edu/colleges/coe/cecs/dbdesign/dbdesign.php?page=sql/subqueries.php 

What Makes the Big Difference between a Back tick and an Apostrophe - https://stackoverflow.com/questions/29402361/what-makes-the-big-difference-between-a-backtick-and-an-apostrophe/29402458 

MySQL Cheat Sheet - https://intellipaat.com/mediaFiles/2019/02/SQL-Commands-Cheat-Sheet.pdf?US 

MySQL 5.7 SQL Statement Syntax - https://dev.mysql.com/doc/refman/5.7/en/sql-statements.html

Live Learning Session - https://www.youtube.com/watch?v=PMCQsroWm5A&embeds_referring_euri=https%3A%2F%2Fintranet.alxswe.com%2F&feature=emb_imp_woyt 