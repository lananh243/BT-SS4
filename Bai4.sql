create database Bai4SS4;

use Bai4SS4;

create table Category (
	category_id int primary key auto_increment,
    category_name varchar(50) not null,
    description text,
    status bit not null
);

create table Film (
	film_id int auto_increment primary key,
    film_name varchar(50) not null,
    content text not null,
    duration time not null,
    director varchar(50),
    release_date date not null
);

create table Category_Film (
	category_id int not null,
    film_id int not null
);

alter table Category_Film 
add constraint fk_category foreign key (category_id) references Category(category_id),
add constraint fk_film foreign key (film_id) references Film(film_id);

# 4. Thêm cột status (kiểu TINYINT, mặc định 1) vào bảng Film
alter table Film add column status tinyint default 1;

# 5. Xóa cột status khỏi bảng Category
alter table Category drop column status;

# 6. Loại bỏ ràng buộc giữa các bảng (xóa khóa ngoại)
alter table Category_Film drop foreign key fk_category;
alter table Category_Film drop foreign key fk_film;