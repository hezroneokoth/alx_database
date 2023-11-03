#!/bin/bash

-- prints the full description of the table first_table from the database hbtn_0c_0
-- database name will be passed as an argument of the mysql command

mysql -hlocalhost -uroot -p -e "SELECT column_name, column_type, is_nullable, column_default FROM information_schema.columns WHERE table_schema='$1' AND table_name='first_table';"
