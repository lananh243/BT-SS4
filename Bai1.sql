create database Bai1SS4;

use Bai1SS4;

create table EngineRoom (
	room_id int primary key,
    room_name varchar(200) not null,
    room_manager varchar(150) not null
);

create table Computer (
	computer_id int primary key,
    speed_cpu varchar(100) not null,
    ram varchar(100) not null,
    harddrive varchar(100) not null,
    room_id int,
    foreign key (room_id) references EngineRoom(room_id)
);


create table Subject (
	subject_id int primary key,
    subject_name varchar(200) not null,
    courseDuration varchar(150) not null
);

create table Registration (
	subject_id int,
    foreign key (subject_id) references Subject(subject_id),
    room_id int,
    foreign key (room_id) references EngineRoom(room_id),
    registration_date date
);


