create database operators;
use operators;

create table ashokit_products_info(pid varchar(10) primary key,
                                   pname varchar(30) not null,
                                   pcost int,
                                   pmfg_dt date not null,
                                   pwarranty varchar(50) not null,
                                   company_code varchar(10)
                                  );
                                  
INSERT INTO ashokit_products_info 
VALUES ('P001', 'Mobile', 14000, '2022-08-05', '1YEAR', 'CMP1'),
       ('P002', 'Laptop', 12000, '2021-02-15', '2YEAR', 'CMP2'),
       ('P003', 'Tablet', 11000, '1998-03-25', '3YEAR', 'CMP2'),
       ('P004', 'Camera', 10000, '1999-09-23', '4YEAR', 'CMP1'),
       ('P005', 'MOUSE', 5000, '1997-09-21', '5YEAR', 'CMP3');

select pid,pwarranty,pname,pcost,((pcost*20)/100) as Discount,(pcost-((pcost*20)/100)) as final_price from ashokit_products_info
where pwarranty<>'2YEAR';

CREATE TABLE dept (
  deptno INT(2) NOT NULL,
  dname VARCHAR(14),
  loc VARCHAR(13),
  PRIMARY KEY (deptno)
);

CREATE TABLE emp (
  empno INT(4) NOT NULL,
  ename VARCHAR(10),
  job VARCHAR(9),
  mgr INT(4),
  hiredate DATE,
  sal DECIMAL(7,2),
  comm DECIMAL(7,2),
  deptno INT(2),
  PRIMARY KEY (empno),
  FOREIGN KEY (deptno) REFERENCES dept (deptno)
);

insert into dept
values(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');
 
INSERT INTO emp
VALUES (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10),
       (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, 30),
       (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, 10),
       (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 20),
       (7788, 'SCOTT', 'ANALYST', 7566, '1987-07-13', 3000, NULL, 20),
       (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, 20),
       (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20),
       (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30),
       (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 30),
       (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30),
       (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, 30),
       (7876, 'ADAMS', 'CLERK', 7788, '1987-06-02', 1100, NULL, 20),
       (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, 30),
       (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, 10);

select * from dept;
select * from emp;

-- Display all employees information who are not receving the commission amount
select * from emp
where comm is null;

-- Display all employees information who are receving the commission amount
select * from emp
where comm is not null;

-- Display all employees information who receving the commission greater than 100 and less than equal to 500
select * from emp
where comm between 100 and 500;

select * from emp
where comm>100 and comm<=500;

-- Display all the employees information who joined in the year of 1981(01/Jan/1981- TO- 31/Dec/1981
select * from emp where hiredate between '01-JAN-1981' and '31-DEC-1981';

-- Display all the employees information who are working as clerk 
select * from emp where job='clerk';

-- Display all the employees information who are working as clerk and salesman
select * from emp where job in('clerk','salesman');

-- Display all the employees information who are not  working as clerk and salesman
select * from emp where job not in('clerk','salesman');

-- Display all the employees who are working under sales department?
select * from emp where job='salesman';

-- Display all the employees information who are working as clerk and managers 
select * from emp where job in('clerk','manager');

-- Display the employees information whose salaries are 1250,3000,5000
select * from emp
where sal=1250 or sal=3000 or sal=5000;

-- Display all the employees information whose name starts with 'A' character
select * from emp
where ename like 'A%';

-- Display all the employees information whose name ends with 'S' character
select * from emp
where ename like '%S';

-- Display all the employees information whose name starts with 'A' and ends with 'S' character

select * from emp where ename like 'A%S'order by ename asc;





