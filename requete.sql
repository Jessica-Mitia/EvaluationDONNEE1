SELECT id, first_name, last_name FROM employee
WHERE team_id IS NULL;

SELECT e.id, first_name, last_name FROM employee e 
LEFT JOIN leave l 
ON e.id = l.id_employee
WHERE l.id IS NULL;


SELECT l.id, l.start_date, l.end_date, e.first_name, e.last_name, t.name
FROM leave l 
INNER JOIN employee e ON l.id_employee = e.id
INNER JOIN team t ON e.team_id = t.id;

SELECT contract_type, COUNT(id) AS number_of_employees
FROM employee 
GROUP BY contract_type;





