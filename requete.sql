-- 1. Afficher l’id, first_name, last_name des employés qui n’ont pas d’équipe. 
SELECT id, first_name, last_name FROM employee
WHERE team_id IS NULL;

-- 2.Afficher l’id, first_name, last_name des employés qui n’ont jamais pris de congé de leur vie.
SELECT e.id, first_name, last_name FROM employee e 
LEFT JOIN leave l 
ON e.id = l.employee_id
WHERE l.id IS NULL;

-- 3. Afficher les congés de tel sorte qu’on voie l’id du congé, le début du congé, la fin du congé, le nom & prénom de l’employé qui prend congé et le nom de son équipe.
SELECT l.id, l.start_date, l.end_date, e.first_name, e.last_name, t.name
FROM employee e
JOIN leave l ON e.id = l.employee_id
LEFT JOIN team t ON e.team_id = t.id;

-- 4. Affichez le nombre d’employés par contract_type
SELECT contract_type, COUNT(id) AS number_of_employees
FROM employee 
GROUP BY contract_type;

-- 5. Afficher le nombre d’employés en congé aujourd'hui.
SELECT COUNT(employee_id) FROM employee e
INNER JOIN leave l on e.id = l.employee_id
WHERE start_date <= CURRENT_DATE and end_date >= CURRENT_DATE;

-- 6. Afficher l’id, le nom, le prénom de tous les employés + le nom de leur équipe qui sont en congé aujourd’hui.
SELECT e.id, e.first_name, e.last_name, t.name
FROM employee e 
LEFT JOIN team t ON t.id = e.team_id
JOIN leave l on e.id = l.employee_id
WHERE start_date <= CURRENT_DATE and end_date >= CURRENT_DATE;




