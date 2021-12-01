create database PayrollService;
show databases;
use PayrollService;

create table employee_payroll (
								id int auto_increment key,
                                name varchar(250) not null,
                                gender char not null,
                                salary varchar(250),
                                start_date date not null
							  );

desc employee_payroll;

insert into employee_payroll (name , gender , salary , start_date)
					  values ('Manu' , 'M' , '3000000' , '2020-08-15');
                      
update employee_payroll set department = 'Engineering';
alter table employee_payroll add gender char not null;
alter table employee_payroll add net_pay varchar(250) not null after income_tax;
alter table employee_payroll drop column salary;
alter table employee_payroll modify column basic_pay double;
                      
select * from employee_payroll;
select * from employee_payroll where salary = '400000';
select * from employee_payroll where start_date between cast("2021-10-01" as date) and date(now());
select count(salary) from employee_payroll where gender = 'M' group by gender;    /*SUM,AVG,MIN,MAX,COUNT */


delete from employee_payroll;