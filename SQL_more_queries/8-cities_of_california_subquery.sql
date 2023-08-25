-- script lists all cities of California from hbtn_0d_usa db
SELECT * FROM cities
WHERE state_id = (
    SELECT id FROM states WHERE name = 'California'
)
ORDER BY id ASC;
