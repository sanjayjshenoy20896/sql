-- union -> used to combine multiple select statements into one query;

-- find a list of all employees and branch name
select employee.first_name as Employee_Branch_Names from employee
union
select branch.branch_name from branch;

-- find the list of all clients & branch suppliernames
select client_name ,branch_id  from client
union
select supplier_name,branch_id from branch_supplier;

-- find the list of all money spent or earned by company;
select salary,emp_id from employee
union
select total_sales,emp_id from works_with;
