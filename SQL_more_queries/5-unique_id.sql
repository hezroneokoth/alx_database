-- script creates table unique_id if it doesn't exist
-- db name will be passed as an arg of the mysql command
CREATE TABLE IF NOT EXISTS your_database_name.unique_id (
    id INT DEFAULT 1 UNIQUE,
    name VARCHAR(256)
);
