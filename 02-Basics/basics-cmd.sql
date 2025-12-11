create table student (
	student_id INT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE,
    PRIMARY KEY(student_id)
);

create table student (
	student_id INT auto_increment,
    name VARCHAR(20),
    major VARCHAR(20) default 'undecided',
    PRIMARY KEY(student_id)
);

describe student;

drop table student;

alter table student add gpa DECIMAL(3,2);

alter table student drop gpa;

insert into student(student_id,name) values (1,'Jack','Biology');
insert into student values (2,'Kate','Sociology');
insert into student values (3,'Claire','Chemistry');
insert into student values(4,'Jack','English');
insert into student values(5,'Mike','Comp.Sci');
SELECT * FROM student;


insert into student(name,major) values ('Jack','Biology');
insert into student(name,major) values ('Kate','Sociology');
insert into student(name,major) values ('Claire','Chemistry');
insert into student(name,major) values('Jack','English');
insert into student(name,major) values('Mike','Comp.Sci');

