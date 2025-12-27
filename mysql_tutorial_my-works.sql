create database mysql_join;
use mysql_join;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(100),
    city VARCHAR(50),
    registration_date DATE
);

show tables;

select * from customers;
select * from attendance;
select * from books;
select * from employee;
select * from orders;
select * from students;


INSERT INTO customers (customer_id, name, email, phone, address, city, registration_date) VALUES
(1, 'Amit Roy', 'amit1@gmail.com', '9876543210', 'Kolkata-1', 'Kolkata', '2023-01-10'),
(2, 'Sneha Das', 'sneha2@gmail.com', '9876543211', 'Delhi-2', 'Delhi', '2023-01-11'),
(3, 'Ravi Kumar', 'ravi3@gmail.com', '9876543212', 'Bangalore-3', 'Bangalore', '2023-01-12'),
(4, 'Pooja Singh', 'pooja4@gmail.com', '9876543213', 'Mumbai-4', 'Mumbai', '2023-01-13'),
(5, 'Arjun Mehta', 'arjun5@gmail.com', '9876543214', 'Chennai-5', 'Chennai', '2023-01-14'),
(6, 'Anjali Bose', 'anjali6@gmail.com', '9876543215', 'Kolkata-6', 'Kolkata', '2023-01-15'),
(7, 'Manish Sharma', 'manish7@gmail.com', '9876543216', 'Delhi-7', 'Delhi', '2023-01-16'),
(8, 'Rahul Verma', 'rahul8@gmail.com', '9876543217', 'Bangalore-8', 'Bangalore', '2023-01-17'),
(9, 'Nidhi Kapoor', 'nidhi9@gmail.com', '9876543218', 'Mumbai-9', 'Mumbai', '2023-01-18'),
(10, 'Sunil Jain', 'sunil10@gmail.com', '9876543219', 'Chennai-10', 'Chennai', '2023-01-19'),
(50, 'Deepak Sinha', 'deepak50@gmail.com', '9876543260', 'Mumbai-50', 'Mumbai', '2023-02-28');

select * from customers;

select name, phone, city
 from customers;
 
 -- using like commands--
 select * from customers
 where name like "A%" ;
 

Update customers
set name = "khatun" where cust_id = 60;

alter table customers
rename column customer_id to cust_id;

select * from customers;

CREATE TABLE orders (
    order_id INT ,
    customer_id INT,
    order_date DATE,
    product_name VARCHAR(100),
    quantity INT,
    total_price DECIMAL(10,2),
    city VARCHAR(50)
);

select * from orders;

INSERT INTO orders (order_id, customer_id, order_date, product_name, quantity, total_price, city) VALUES
(101, 1, '2023-03-01', 'Laptop', 1, 55000.00, 'Kolkata'),
(102, 2, '2023-03-02', 'Tablet', 2, 30000.00, 'Delhi'),
(103, 3, '2023-03-03', 'Monitor', 1, 12000.00, 'Bangalore'),
(104, 4, '2023-03-04', 'Smartphone', 1, 25000.00, 'Mumbai'),
(105, 5, '2023-03-05', 'Headphones', 2, 5000.00, 'Chennai'),
(106, 6, '2023-03-06', 'Keyboard', 1, 1500.00, 'Kolkata'),
(107, 7, '2023-03-07', 'Mouse', 1, 800.00, 'Delhi'),
(108, 8, '2023-03-08', 'Printer', 1, 7000.00, 'Bangalore'),
(109, 9, '2023-03-09', 'Camera', 1, 30000.00, 'Mumbai'),
(110, 10, '2023-03-10', 'USB Drive', 3, 1500.00, 'Chennai'),
(150, 50, '2023-04-20', 'Router', 1, 2500.00, 'Mumbai');

select * from orders;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    department VARCHAR(50),
    admission_date DATE
);

select * from students;
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    genre VARCHAR(50),
    price DECIMAL(6,2)
);

INSERT INTO books (book_id, title, author, genre, price) VALUES
(1, 'The Alchemist', 'Paulo Coelho', 'Fiction', 299.99),
(2, 'Clean Code', 'Robert C. Martin', 'Programming', 599.50),
(3, 'Wings of Fire', 'A.P.J. Abdul Kalam', 'Biography', 199.00),
(4, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 250.75),
(5, 'Atomic Habits', 'James Clear', 'Self-Help', 349.00);

select * from books;

alter table books
add column Quntity int;

-- truncate table students; --
select * from students;
-- drop table students;

describe books;

alter table books
rename column Quntity to Qty;

select * from books;

select * from students;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    department VARCHAR(50),
    admission_date DATE
);


INSERT INTO students (first_name, last_name, email, phone, gender, date_of_birth, department, admission_date)
VALUES 
('Rahul', 'Sharma', 'rahul.sharma@example.com', '9876543210', 'Male', '2001-04-15', 'Computer Science', '2020-08-01'),
('Anjali', 'Verma', 'anjali.verma@example.com', '9876543211', 'Female', '2000-06-22', 'Electrical Engineering', '2019-07-15'),
('Amit', 'Kumar', 'amit.kumar@example.com', '9876543212', 'Male', '2002-01-10', 'Mechanical Engineering', '2021-09-10'),
('Priya', 'Singh', 'priya.singh@example.com', '9876543213', 'Female', '2001-12-05', 'Information Technology', '2020-08-05'),
('Suresh', 'Reddy', 'suresh.reddy@example.com', '9876543214', 'Male', '2000-09-30', 'Civil Engineering', '2019-07-20'),
('Sneha', 'Mishra', 'sneha.mishra@example.com', '9876543215', 'Female', '2001-02-14', 'Computer Science', '2020-08-01'),
('Arjun', 'Das', 'arjun.das@example.com', '9876543216', 'Male', '1999-11-28', 'Electrical Engineering', '2018-08-01'),
('Neha', 'Patel', 'neha.patel@example.com', '9876543217', 'Female', '2002-03-19', 'Information Technology', '2021-09-01'),
('Vikram', 'Joshi', 'vikram.joshi@example.com', '9876543218', 'Male', '2000-07-17', 'Mechanical Engineering', '2019-08-10'),
('Kavya', 'Nair', 'kavya.nair@example.com', '9876543219', 'Female', '2001-05-09', 'Computer Science', '2020-08-01');

select * from students;

-- delete commands --

alter table students
rename column id to student_id;
delete from students where student_id in (4,6);

select * from students;

alter table students
rename column student_id to id;

select * from students where first_name like "%a" and gender = "Female";

select * from students
where gender = "Female";

show tables;

CREATE TABLE employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    gender ENUM('Male', 'Female', 'Other'),
    department VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

select * from employee;

INSERT INTO employee (first_name, last_name, email, phone, gender, department, position, salary, hire_date)
VALUES
('Amit', 'Sharma', 'amit.sharma@example.com', '9876500011', 'Male', 'HR', 'HR Executive', 35000.00, '2020-01-10'),
('Priya', 'Verma', 'priya.verma@example.com', '9876500022', 'Female', 'Finance', 'Accountant', 42000.00, '2019-03-15'),
('Ravi', 'Kumar', 'ravi.kumar@example.com', '9876500033', 'Male', 'IT', 'Software Engineer', 60000.00, '2021-06-01'),
('Neha', 'Singh', 'neha.singh@example.com', '9876500044', 'Female', 'Marketing', 'Marketing Executive', 38000.00, '2020-08-20'),
('Suresh', 'Patel', 'suresh.patel@example.com', '9876500055', 'Male', 'Sales', 'Sales Manager', 55000.00, '2018-11-10'),
('Sneha', 'Reddy', 'sneha.reddy@example.com', '9876500066', 'Female', 'Finance', 'Auditor', 47000.00, '2021-04-12'),
('Vikram', 'Joshi', 'vikram.joshi@example.com', '9876500077', 'Male', 'IT', 'System Admin', 50000.00, '2019-07-22'),
('Kavya', 'Nair', 'kavya.nair@example.com', '9876500088', 'Female', 'HR', 'HR Manager', 60000.00, '2020-10-05'),
('Arjun', 'Das', 'arjun.das@example.com', '9876500099', 'Male', 'Operations', 'Operations Associate', 45000.00, '2017-02-01'),
('Anjali', 'Mishra', 'anjali.mishra@example.com', '9876500100', 'Female', 'IT', 'Data Analyst', 52000.00, '2021-01-15'),
('Raj', 'Malhotra', 'raj.malhotra@example.com', '9876500111', 'Male', 'Sales', 'Sales Executive', 40000.00, '2019-05-18'),
('Divya', 'Kapoor', 'divya.kapoor@example.com', '9876500122', 'Female', 'Marketing', 'Brand Manager', 58000.00, '2020-09-12'),
('Nikhil', 'Mehra', 'nikhil.mehra@example.com', '9876500133', 'Male', 'Finance', 'Financial Analyst', 49000.00, '2018-12-20'),
('Tanya', 'Gupta', 'tanya.gupta@example.com', '9876500144', 'Female', 'HR', 'Recruiter', 36000.00, '2021-03-30'),
('Manish', 'Bajaj', 'manish.bajaj@example.com', '9876500155', 'Male', 'IT', 'UI Developer', 61000.00, '2019-06-11'),
('Meena', 'Rao', 'meena.rao@example.com', '9876500166', 'Female', 'Finance', 'Payroll Officer', 44000.00, '2020-01-28'),
('Yash', 'Tiwari', 'yash.tiwari@example.com', '9876500177', 'Male', 'Operations', 'Logistics Manager', 57000.00, '2018-04-05'),
('Pooja', 'Bansal', 'pooja.bansal@example.com', '9876500188', 'Female', 'Sales', 'Sales Analyst', 43000.00, '2021-07-19'),
('Deepak', 'Yadav', 'deepak.yadav@example.com', '9876500199', 'Male', 'IT', 'Backend Developer', 59000.00, '2020-05-09'),
('Ritika', 'Chopra', 'ritika.chopra@example.com', '9876500200', 'Female', 'Marketing', 'SEO Specialist', 46000.00, '2021-11-01');


select * from employee;

select first_name, department, salary from employee
where salary <=40000;

-- SQL Operator - Special

show databases;
use mysql_join;
show tables;
select * from books;
select * from attendance;
select * from employee;
select * from marketing_employees;
select * from students;
select * from orders;
select * from customers;
select * from students;

select first_name, phone, position , salary
from employee
where salary >=60000 and gender = "Male";
 
 select last_name, salary, department from employee
 where department = "IT" or salary <30000;
 
 select * from employee;
 
SELECT department,
       SUM(salary) AS total_salary
FROM employee
GROUP BY department
HAVING SUM(salary) > 200000;
 
 
-- today from here practice done--
 show databases;
 show table status;
 show tables;
 select * from customers 
 where city = "Kolkata" or name like "A%";
 
 select * from customers;
 
 select * from customers
 where city = 'Chennai';
 
 select name, phone, city from customers
 where city in ('Chennai', ' kolkata', 'mumbai')
 ;
 
 select distinct cust_id, name, city from customers
 where cust_id between 3 and 8;


 
 select * from orders
 where total_price between 5000 and 20000;
 
 select *
 from orders;
 
 
 select sum(distinct quantity) as total_qnty
 from orders;
 

 -- todays 27/12/2025 --

select * from orders
 where city in ("Kolkata", "Delhi", "Chennai");
 
 select distinct(city) from orders;
 
 -- MYSQL OPERATOR - AGGREGATION --
 
select * from books;
select * from employee;
select avg(salary) from employee;
  
select max(salary) from employee;
select min(salary) from employee;

select count(*) from employee;

select sum(salary) from employee;


-- now here 27-12-2025  --

show databases;
use mysql_join;


CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    date DATE,
    status ENUM('Present', 'Absent', 'Leave'),
    check_in_time TIME,
    check_out_time TIME,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);


select * from attendance;

INSERT INTO attendance (employee_id, date, status, check_in_time, check_out_time) VALUES
(1, '2025-08-01', 'Present', '09:00:00', '17:30:00'),
(2, '2025-08-01', 'Present', '09:15:00', '17:45:00'),
(3, '2025-08-01', 'Leave', NULL, NULL),
(4, '2025-08-01', 'Absent', NULL, NULL),
(5, '2025-08-01', 'Present', '09:10:00', '17:40:00'),
(6, '2025-08-01', 'Present', '08:50:00', '17:00:00'),
(7, '2025-08-01', 'Present', '09:05:00', '17:20:00'),
(8, '2025-08-01', 'Present', '09:00:00', '17:30:00'),
(9, '2025-08-01', 'Absent', NULL, NULL),
(10, '2025-08-01', 'Present', '09:20:00', '17:50:00');

select * from attendance;


select * from employee;

-- Group by cause --

select  max(salary), department from employee
group by department;

-- maxium salary in indivisual department where more than three emp have --
-- group by and having clause --

select  max(salary), department from employee
group by department
having count(department)>=3;

-- order clause --

select first_name, phone, department, salary
 from employee
order by salary desc;

select * from employee;

-- dropping indivisual column from table -- 
alter table employee
drop column experience;
-- added new column --
alter table employee
add column experience decimal(6,2);

-- experience calculation --

select last_name, gender, department, salary, hire_date,
 timestampdiff(Year, hire_date,curdate()) as experience 
from employee;

-- union operator for avoiding dublicate values

CREATE TABLE marketing_employees (
    emp_id INT,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE sales_employees (
    emp_id INT,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    location VARCHAR(50)
);



INSERT INTO marketing_employees (emp_id, emp_name, department, location) VALUES
(101, 'Rahul Sharma', 'Marketing', 'Delhi'),
(102, 'Anjali Verma', 'Marketing', 'Mumbai'),
(103, 'Suresh Kumar', 'Marketing', 'Chennai');


INSERT INTO sales_employees (emp_id, emp_name, department, location) VALUES
(201, 'Amit Das', 'Sales', 'Kolkata'),
(202, 'Kavya Nair', 'Sales', 'Bangalore'),
(103, 'Suresh Kumar', 'Marketing', 'Chennai');

 -- Duplicate for UNION vs UNION ALL demo
select * from marketing_employees;

select * from sales_employees;


-- using union operator

select department, location
from marketing_employees
union
select department, location 
from sales_employees;

-- union all
select department, location
from marketing_employees
union all
select department, location 
from sales_employees;

--  JOIN 
