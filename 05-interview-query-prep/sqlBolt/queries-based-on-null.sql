


-- queries using null on condition

-- Find the name and role of all employees who have not been assigned to a building
SELECT name,role FROM employees WHERE Building IS NULL;

-- Find the names of the buildings that hold no employees
SELECT * FROM buildings
LEFT JOIN employees on buildings.building_name = employees.building
WHERE building is NULL;