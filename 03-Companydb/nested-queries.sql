-- nested queries

-- Find names of all employees who have sold over 50,000
select employee.emp_id,employee.first_name,employee.last_name from employee where employee.emp_id in
 (select works_with.emp_id from works_with where total_sales > 50000);
 
 
 -- Find all clients who are handles by the branch that Michael Scott manages
-- Assume you know Michael's ID

select client.client_name from client where client.branch_id = (select branch.branch_id from branch where branch.mgr_id = 102);

 -- Find all clients who are handles by the branch that Michael Scott manages
 -- Assume you DONT'T know Michael's ID
 select client.client_name
 from 
 client where 
 client.branch_id = (
 select branch.branch_id 
 from branch
 where 
 branch.mgr_id = (select employee.emp_id from employee where employee.first_name ='Michael' and employee.last_name = 'Scott' LIMIT 1)
 ) ;
 
 -- Find the names of employees who work with clients handled by the scranton branch
select employee.first_name,employee.last_name from employee where emp_id in (select works_with.emp_id from works_with) and branch_id = 2;

-- Find the names of all clients who have spent more than 100,000 dollars
SELECT client.client_name
FROM client
WHERE client.client_id IN (
                          SELECT client_id
                          FROM (
                                SELECT SUM(works_with.total_sales) AS totals, client_id
                                FROM works_with
                                GROUP BY client_id) AS total_client_sales
                          WHERE totals > 100000
);
 