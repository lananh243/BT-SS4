create database Bai3SS4;

use Bai3SS4;

create table Customer (
	customer_id int auto_increment primary key,
    customer_name varchar(50) not null,
    birthday date not null,
    sex bit not null,
    job varchar(50),
    phone_number char(11) not null unique,
    email varchar(100) not null unique,
    address varchar(255) not null
);

INSERT INTO Customer (customer_name, birthday, sex, job, phone_number, email, address)
VALUES
('Nguyen Van A', '1990-01-01', 1, 'Engineer', '09123456789', 'nguyenvana@gmail.com', '123 Nguyen Trai, Hanoi'),
('Tran Thi B', '1985-03-15', 0, 'Teacher', '09876543210', 'tranthib@gmail.com', '456 Le Duan, HCM City'),
('Le Van C', '1995-10-10', 1, 'Doctor', '09711223344', 'levanc@gmail.com', '789 Tran Hung Dao, Da Nang'),
('Pham Thi D', '2000-12-20', 0, 'Student', '09334455667', 'phamthid@gmail.com', '321 Hai Ba Trung, Hue'),
('Hoang Van E', '2000-01-01', 1, 'Developer', '09223344556', 'hoangvane@gmail.com', '654 Nguyen Dinh Chieu, Can Tho'),
('Vu Thi F', '1992-03-30', 0, 'Designer', '09665544332', 'vuthif@gmail.com', '987 Ly Tu Trong, Hai Phong'),
('Dang Van G', '1997-05-17', 1, 'Architect', '09442233445', 'dangvang@gmail.com', '432 Nguyen Van Linh, Quang Ninh'),
('Ngo Thi H', '1993-08-25', 0, 'Nurse', '09012345678', 'ngothih@gmail.com', '789 Hoang Hoa Tham, Vinh'),
('Phan Van I', '1989-11-11', 1, 'Manager', '09112233445', 'phanvani@gmail.com', '123 Bach Dang, Binh Duong'),
('Do Thi K', '1996-08-08', 0, 'Chef', '09233445566', 'dothik@gmail.com', '456 Tran Phu, Nha Trang');

update Customer
set customer_name = 'Nguyen Quang Nhat', birthday = '2004-01-11'
where customer_id = 1;

delete from Customer where month(birthday) = 8;

select customer_id, customer_name, birthday, sex, phone_number from Customer where birthday = '2000-01-01';

select * from Customer where job is null;