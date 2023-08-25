-- script creates table id_not_null if it doesn't exist
-- db name will be passed as an arg of the mysql command
CREATE TABLE IF NOT EXISTS id_not_null (
    id INT DEFAULT 1,
    name VARCHAR(256)
);
