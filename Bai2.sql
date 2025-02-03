create database Bai2SS4;

use Bai2SS4;

create table Material (
	material_id int primary key,
    material_name varchar(200) not null,
    material_description varchar(200) not null
);


create table Supplier (
	supplier_id int primary key,
    supplier_name varchar(150) not null,
    phoneNumber int
);

create table Address (
	address_id int primary key,
    supplier_id int,
    foreign key (supplier_id) references Supplier(supplier_id)
);

create table Orders (
	supplier_id int,
    foreign key (supplier_id) references Supplier(supplier_id),
    material_id int,
    foreign key (material_id) references Material(material_id),
    quantity int,
    price decimal(4,2) not null
);




