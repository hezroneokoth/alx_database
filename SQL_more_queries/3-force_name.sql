-- script creates table force_name if it doesn't exist
-- db name will be passed as an arg of the mysql command
CREATE TABLE IF NOT EXISTS your_database_name.force_name (
    id INT,
    name VARCHAR(256) NOT NULL
);
