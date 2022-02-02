SELECT * FROM owners o 
LEFT JOIN vehicles v 
ON o.id = v.owner_id;

SELECT o.first_name, o.last_name, COUNT(*) owned_vehicles 
FROM owners o JOIN vehicles v 
ON o.id = v.owner_id 
GROUP BY o.id 
ORDER BY o.first_name;

SELECT o.first_name, o.last_name, 
ROUND(AVG(price)) average_price, COUNT(*) owned_vehicles 
FROM owners o 
JOIN vehicles v 
ON o.id = v.owner_id 
GROUP BY o.id HAVING COUNT(*) > 1 
AND ROUND(AVG(price)) > 10000 
ORDER BY o.first_name DESC;

