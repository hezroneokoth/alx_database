-- lists all cities with their IDs, names & respective state names
SELECT CONCAT(cities.id, ' - ', cities.name, ' - ', states.name) AS city_info
FROM cities
JOIN states ON cities.state_id = states.id
ORDER BY cities.id ASC;
