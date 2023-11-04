create database Constraints;
use Constraints;

create table info(
	sname varchar(50),
    rno int unique
    );
    
    -- 1) UNIQUE CONSTRAINT
    
    insert into info
    values('Ganesh',2010030),
    ('Dhanraj',2010070),
    ('Vikas',null);
    
    select * from info;
    
alter table info
add constraint UNIQUE(sname);

insert into info
    values('Ganesh',2013403);

alter table info
drop constraint sname;

--  NOT NULL CONSTRAINT
create table info1(
	sname varchar(50),
    rno int unique
    );


-- CHECK CONSTRAINT 
CREATE TABLE parts (
    part_id int unique not null,
    part_name VARCHAR(255) NOT NULL,
    buy_price int(9) CHECK(buy_price > 0)
);
insert into parts values(01,'Engine',2500);
insert into parts values(02,'Horn',3500);
insert into parts values(03,'Mirror',1500);

select * from parts;
insert into parts values(04,'Mor',0);
