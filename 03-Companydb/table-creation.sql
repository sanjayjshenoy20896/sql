-- employee table definition
CREATE TABLE employee (
  emp_id INT PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  birth_day DATE,
  sex VARCHAR(1),
  salary INT,
  super_id INT,
  branch_id INT
);

-- in the above table definition, you can see super_id and branch_id are foreigh keys pointing to an employee and branch respectively.
-- the branch table has not been created yet so they cannot be technical referenced yet.

CREATE TABLE branch (
  branch_id INT PRIMARY KEY,
  branch_name VARCHAR(40),
  mgr_id INT,
  mgr_start_date DATE,
  FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

-- in the above table definition, mgr_id  is a foriegn key which referernces emp_id
-- here we are also asking to set it as null, if the referenced employee is set to null

ALTER TABLE employee
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;

-- in the above table definition, branch_id is a foriegn key which references the branch_id 
-- here we are also asking to set it a null, if the referenced branch is deleted

ALTER TABLE employee
ADD FOREIGN KEY(super_id)
REFERENCES employee(emp_id)
ON DELETE SET NULL;

-- in the above table definition, super_id is a foriegn key which references the emp_id 
-- here also we are also asking to set it as null, if referenced employee is deleted



CREATE TABLE client (
  client_id INT PRIMARY KEY,
  client_name VARCHAR(40),
  branch_id INT,
  FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL
);

-- in the above table definition, branch_id is a foriegn key that references the branch_id 
-- here also , we are also asking to set it as null, if referenced branch is deleted




CREATE TABLE works_with (
  emp_id INT,
  client_id INT,
  total_sales INT,
  PRIMARY KEY(emp_id, client_id),
  FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
  FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE
);
-- here we are defining the emp_id and client_id as foriegn key point to emp_id and client_id in the employee and client table.


CREATE TABLE branch_supplier (
  branch_id INT,
  supplier_name VARCHAR(40),
  supply_type VARCHAR(40),
  PRIMARY KEY(branch_id, supplier_name),
  FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);

-- here we are defining the branch_id as a foriegn key pointing to branch_id in the branch table





