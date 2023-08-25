-- script creates hbtn_0d_usa db if it doesn't exist
-- db name will be passed as an arg of the mysql command
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;
USE hbtn_0d_usa;

-- creates table states if it doesn't exist
-- id INT unique, auto generated, isn't null & is a primary key
CREATE TABLE IF NOT EXISTS states (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);
