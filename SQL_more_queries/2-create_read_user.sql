-- creates hbtn_0d_2 db if it doesn't exist
-- creates user_0d_2 if it doesn't exist
-- then grants SELECT privilege on hbtn_0d_2 db to user_0d_2
CREATE DATABASE IF NOT EXISTS hbtn_0d_2;
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost' IDENTIFIED BY 'user_0d_2_pwd';
GRANT SELECT ON hbtn_0d_2.* TO 'user_0d_2'@'localhost';
