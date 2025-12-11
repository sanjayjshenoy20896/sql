-- basic queries

-- find all employees
select * from employee;

-- find all clients
select * from client;

-- find all employees order by salary
select * from employee order by salary desc;

-- find all employees by sex and then
select * from employee order by sex, first_name,last_name;

-- find the first 5 employees
select * from employee limit 5;

-- find first and last name of all employee
select first_name as forename,last_name as surname from employee;
select first_name,last_name from employee;

-- find all the distinct genders
select DISTINCT sex from employee;

-- find all the distinct branchId
select distinct branch_id from employee;