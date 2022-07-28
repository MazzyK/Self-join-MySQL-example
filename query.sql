SELECT e. emp_id, e.name,e.manager_id, m.name AS manager_name
FROM   employee e
JOIN   employee m on e.manager_id = m.emp_id;