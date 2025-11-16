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

SELECT COUNT(id_employee) FROM employee e
INNER JOIN leave l on e.id = l.id_employee
WHERE start_date <= CURRENT_DATE and end_date >= CURRENT_DATE;

SELECT e.id, e.first_name, e.last_name, t.name
FROM employee e INNER JOIN team t ON t.id = e.team_id
INNER JOIN leave l on e.id = l.id_employee
WHERE start_date <= CURRENT_DATE and end_date >= CURRENT_DATE;




