SELECT * 
FROM student;

SELECT name from student;

SELECT student.name , student.major from student;

SELECT student.name , student.major from student ORDER BY student_id ASC;

SELECT * from student ORDER BY major,student_id;

SELECT * from student LIMIT 2;

SELECT * from student order by student_id Limit 2;

SELECT * FROM student WHERE major='Biochemistry' AND name = 'Jack';

SELECT * FROM student WHERE major='Biochemistry' OR name = 'Jack';

SELECT * FROM student where name in ('Claire','Jack');
