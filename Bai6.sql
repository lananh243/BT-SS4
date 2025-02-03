CREATE DATABASE Bai6ss4;
USE Bai6ss4;

CREATE TABLE Department (
	department_id int primary key auto_increment,
    department_name varchar(50) not null unique,
    address varchar(50) not null
);

CREATE TABLE Employee (
	employee_id char(4) primary key,
    employee_name varchar(50) not null,
    date_of_birth date,
    sex bit not null,
    base_salary int not null check(base_salary > 0),
    phone_number char(11) not null unique,
    department_id int not null,
    foreign key(department_id) references Department(department_id)
);

INSERT INTO Department (department_name, address) VALUES
('Kế Toán', 'Hà Nội'),
('Nhân Sự', 'TP.HCM'),
('IT', 'Đà Nẵng'),
('Marketing', 'Cần Thơ'),
('Kinh Doanh', 'Hải Phòng');

INSERT INTO Employee (employee_id, employee_name, date_of_birth, sex, base_salary, phone_number, department_id) VALUES
('E001', 'A', '1990-01-01', 1, 10000000, '0910000001', 1),
('E002', 'B', '1992-02-02', 0, 12000000, '0910000002', 2),
('E003', 'C', '1994-03-03', 1, 11000000, '0910000003', 3),
('E004', 'D', '1996-04-04', 0, 13000000, '0910000004', 4),
('E005', 'E', '1998-05-05', 1, 14000000, '0910000005', 5),
('E006', 'F', '1991-06-06', 0, 12500000, '0910000006', 1),
('E007', 'G', '1993-07-07', 1, 11500000, '0910000007', 2),
('E008', 'H', '1995-08-08', 0, 13500000, '0910000008', 3),
('E009', 'I', '1997-09-09', 1, 14500000, '0910000009', 4),
('E010', 'J', '1999-10-10', 0, 15000000, '0910000010', 5);

update Department 
set department_name = 'Marketing'
where department_id = 4;

select * from Department;

select * from Employee;