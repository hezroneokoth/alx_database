-- creates a table called first_table in the current database
-- database name is passed as a mysql command arg
mysql -u username -p -e "USE barding; CREATE TABLE IF NOT EXISTS first_table (id INT, name VARCHAR(256));"
