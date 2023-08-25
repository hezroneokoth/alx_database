-- lists all cities with their IDs, names & respective state names
SELECT cities.id, cities_name AS name, states_name AS name
FROM cities
JOIN states ON cities.state_id = states.id
ORDER BY cities.id ASC;
