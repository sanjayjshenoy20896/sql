
-- Find the number of employees
SELECT COUNT(emp_id)
FROM employee;

-- find number of employees with superId
select count(super_id) from employee;

-- find the number of female employees born after 1970;
select count(emp_id) from employee WHERE sex = 'F' and birth_day > '1971-01-01';


-- Find the average of all employee's salaries
SELECT AVG(salary)
FROM employee;

-- find the average of all male employees
select AVG(salary) from employee where sex = 'M';

-- Find the sum of all employee's salaries
SELECT SUM(salary)
FROM employee;

-- Find out how many males and females there are
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;

-- Find the total sales of each salesman
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;

-- find the total sales for each client
select SUM(total_sales),client_id
from works_with 
group by client_id;

-- Find the total amount of money spent by each client
SELECT SUM(total_sales), client_id
FROM works_with
GROUP BY client_id;
