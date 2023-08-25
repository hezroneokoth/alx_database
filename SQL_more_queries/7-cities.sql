-- script creates hbtn_0d_usa db if it doesn't exist
-- db name will be passed as an arg of the mysql command
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;
USE hbtn_0d_usa;

-- creates table cities if it doesn't exist
-- id INT unique, auto generated, isn't null & is a primary key
-- state_id INT, can’t be null & must be a FOREIGN KEY ref id of the states table
CREATE TABLE IF NOT EXISTS cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    state_id INT NOT NULL,
    name VARCHAR(256) NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(id)
);
