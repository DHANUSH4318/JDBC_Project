create database Employee;

use Employee;
create table EmployeeTable(EMPLOYEE_ID int, FIRST_NAME varchar(255), LAST_NAME varchar(255), SALARY int,JOINING_DATE date, DEPARTMENT varchar(255));
insert into EmployeeTable(EMPLOYEE_ID , FIRST_NAME, LAST_NAME , SALARY ,JOINING_DATE , DEPARTMENT ) values (1,"Venkatesh","S",100000,20150828,"BANKING");
insert into EmployeeTable(EMPLOYEE_ID , FIRST_NAME, LAST_NAME , SALARY ,JOINING_DATE , DEPARTMENT ) values (2,"Ragavi","P",75000,20150828,"BUSINESS");
insert into EmployeeTable(EMPLOYEE_ID , FIRST_NAME, LAST_NAME , SALARY ,JOINING_DATE , DEPARTMENT ) values (3,"Gopinath","C",50000,20160302,"PHARMA");
insert into EmployeeTable(EMPLOYEE_ID , FIRST_NAME, LAST_NAME , SALARY ,JOINING_DATE , DEPARTMENT ) values (4,"Dinesh","G",50000,20160302,"INSURANCE");
insert into EmployeeTable(EMPLOYEE_ID , FIRST_NAME, LAST_NAME , SALARY ,JOINING_DATE , DEPARTMENT ) values (5,"Saibabu","E",40000,20170708,"SOFTWARE");
insert into EmployeeTable(EMPLOYEE_ID , FIRST_NAME, LAST_NAME , SALARY ,JOINING_DATE , DEPARTMENT ) values (6,"Hasan","S",29000,20170708,"MANUFACTURING");
insert into EmployeeTable(EMPLOYEE_ID , FIRST_NAME, LAST_NAME , SALARY ,JOINING_DATE , DEPARTMENT ) values (7,"Divya","P",33000,20170708,"HEALTHCARE");
insert into EmployeeTable(EMPLOYEE_ID , FIRST_NAME, LAST_NAME , SALARY ,JOINING_DATE , DEPARTMENT ) values (8,"Aravindan","R",40000,20170708,"HEALTHCARE");
insert into EmployeeTable(EMPLOYEE_ID , FIRST_NAME, LAST_NAME , SALARY ,JOINING_DATE , DEPARTMENT ) values (9,"Sathish","MD",45000,20160302,"AUTOMOBILE");
insert into EmployeeTable(EMPLOYEE_ID , FIRST_NAME, LAST_NAME , SALARY ,JOINING_DATE , DEPARTMENT ) values (10,"Prasanth","PKP",34000,20160302,"INSURANCE");
insert into EmployeeTable(EMPLOYEE_ID , FIRST_NAME, LAST_NAME , SALARY ,JOINING_DATE , DEPARTMENT ) values (11,"Vijay","R",25684,20160302,"BUSINESS");
insert into EmployeeTable(EMPLOYEE_ID , FIRST_NAME, LAST_NAME , SALARY ,JOINING_DATE , DEPARTMENT ) values (12,"Sivakumar","K",54789,20160302,"SOFTWARE");
select * from Employeetable;	-- q1

alter table employeetable add primary key(EMPLOYEE_ID);

delete from employeetable where EMPLOYEE_ID = 12;

insert into EmployeeTable(EMPLOYEE_ID , FIRST_NAME, LAST_NAME , SALARY ,JOINING_DATE , DEPARTMENT ) values (12,"Dharneesh","J",90000,20160302,"BUSINESS");

update employeetable set FIRST_NAME ="Akash" ,LAST_NAME ="R" where EMPLOYEE_ID = 12;

select FIRST_NAME, LAST_NAME FROM EMPLOYEETABLE;	-- q2
SELECT FIRST_NAME AS EMPLOYEE_NAME FROM EMPLOYEETABLE;	-- q3
select upper(FIRST_NAME) as FIRST_NAME from employeetable;	-- q4
select lower(FIRST_NAME) as LAST_NAME from employeetable;	-- q5
select distinct DEPARTMENT from employeetable;		-- q6
select substring(FIRST_NAME,1,3) from employeetable;	-- q7
select position("a" in "ragavi") as position;		-- q8
select length(FIRST_NAME) from employeetable;		-- q11
select replace(FIRST_NAME,"a","$") from employeetable;	-- q12
select concat(FIRST_NAME,"_",LAST_NAME) from employeetable;		-- q13
select year(joining_date),month(joining_date),day(joining_date) from employeetable;		-- q14
select * from employeetable order by FIRST_NAME asc;
select * from employeetable order by FIRST_NAME desc;
select * from employeetable order by FIRST_NAME asc,SALARY desc;
select * from employeetable where FIRST_NAME ="dinesh";
select * from employeetable where FIRST_NAME ="dinesh" or "roy";
select * from employeetable where FIRST_NAME <> "dinesh" or "roy";
select * from employeetable where FIRST_NAME like "%h";
select * from employeetable where FIRST_NAME like "s%";
select * from employeetable where FIRST_NAME like "__a";
select * from employeetable where FIRST_NAME like "%v%";
select * from employeetable where FIRST_NAME like "%n";
select * from employeetable where FIRST_NAME like "%n" AND char_length(FIRST_NAME)=4;
select * from employeetable where FIRST_NAME like "j%" AND char_length(FIRST_NAME)=4;	-- q25
select * from employeetable where SALARY >=60000;
select * from employeetable where SALARY <=80000;
select * from employeetable where SALARY >=50000 AND SALARY <=80000;
select * from employeetable where FIRST_NAME in ("venkatesh","ragavi");
select * from employeetable where year(joining_date)=2015;		-- q30
select * from employeetable where month(joining_date)="January";
select * from employeetable where date(joining_date)< 20170101;
select * from employeetable where date(joining_date)>20160131;
-- q34 no
select  date(joining_date) from employeetable;
 -- q36 pending
select count(joining_date),joining_date from employeetable group by JOINING_DATE having JOINING_DATE ="2017-07-08";
select concat(first_name," ",last_name) as EMPLOYEE_NAME ,EMPLOYEE_ID from employeetable  where JOINING_DATE =20170708 order by employee_name ASC;

 /* Incentive Table Add*/
 create table incentives(EMPLOYEE_REF_ID int, INCENTIVE_DATE date, INCENTIVE_AMOUNT int);
insert into incentives values(1,20160201,5000),(2,20160201,3000),(3,20170201,4000),(1,20170101,4500),(2,20170101,3500);
select * from incentives;

select sum(employeetable.SALARY) + sum(incentive_amount)  as Total_Salary from incentives inner join employeetable where employeetable.employee_id = 1 and incentives.EMPLOYEE_REF_ID=1;



