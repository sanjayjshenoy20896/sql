 
SET SQL_SAFE_UPDATES = 0;
UPDATE student set major = 'Comp Sci' WHERE major = 'Comp.Sci'  ;

update student set major = 'Biochemistry' WHERE major = 'Bio' or major = 'Chemistry';
update student set major = 'Bio' WHERE student_id = 4;

update student set name = 'Tom', major = 'undecided' WHERE student_id = 1;

delete from student WHERE name = 'Tom' and major='undecided'