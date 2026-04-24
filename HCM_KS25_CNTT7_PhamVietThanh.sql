create database Shopmanager;

use Shopmanager;

create table Categories(
categoriesId int primary key auto_increment,
categoriesName Char(50) not null
);

create table products (
productId int primary key auto_increment,
productName Char(50) not null,
price decimal(10,2) not null,
stock int not null,
categoriesId int,
foreign key (categoriesId)
references Categories(categoriesId)
);

insert into Categories (categoriesName)
values 
('Điện tử'),
('Thời trang');

insert into products (productName,price,stock,categoriesId)
values
('iphone15','25000000','10','1'),
('Samsung S23', 20000000, 5, 1),
('Áo sơ mi nam', 500000, 50, 2),
('Giày thể thao', 1200000, 20, 2);

update products
set price = 26000000
where productName = 'iphone15';

update products
set stock = stock + 10
where categoriesId = 1;

delete from products
where productId = 4;

delete from products
where price < 10000000;

select * from products;

select * from products
where stock > 15;

select * from products
where price between 1000000 and 25000000;

select * from products
where productName <> 'iphone15' and stock > 0;

select * from products
where categoriesId <> 1 and price > 500000;