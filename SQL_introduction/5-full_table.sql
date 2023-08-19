-- prints the full description of the table first_table from the database hbtn_0c_0
-- database name will be passed as an argument of the mysql command
SELECT TABLE_NAME, CREATE_TABLE
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'hbtn_0c_0'
AND TABLE_NAME = 'first_table';
