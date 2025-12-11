-- joins -> used to combine 2 or more tables based on a related columns
insert into branch values(4,"Buffalo",NULL,NULL);

-- Find all branches and name of their managers; (inner join)
 select employee.emp_id,employee.first_name,employee.last_name,branch.branch_name from employee
 join branch
 on employee.emp_id = branch.mgr_id;
 
 -- Find all branches and name of their managers; (left join)
 select employee.emp_id,employee.first_name,employee.last_name,branch.branch_name from employee
 left join branch
 on employee.emp_id = branch.mgr_id;
 
  -- Find all branches and name of their managers; (right join)
 select employee.emp_id,employee.first_name,employee.last_name,branch.branch_name from employee
 right join branch
 on employee.emp_id = branch.mgr_id;
 
 -- full outer join -> get all branches and all employees-> not possibke in mysql
 
 
 -- test
 -- Find a list of all clients & branch suppliers' names
select client.client_id,client.client_name,branch_supplier.supplier_name from client
join branch_supplier
on branch_supplier.branch_id = client.branch_id

-- inner join 
-- left join

