create table product
(
	prod_id int primary key,
	prod_name varchar(50) not null,
	category varchar(25)
)

create table orders
(
	order_id int primary key,
	prod_id int not null,
	quantity int,
	constraint fk_product_id foreign key(prod_id) references product(prod_id)
)

create table product1
(
	prod_id int primary key,
	prod_name varchar(50) not null,
	category varchar(25)
)

create table orders1
(
	order_id int primary key,
	prod_id int not null,
	quantity int,
	
)

alter table orders1
add constraint fk_product_id1 foreign key(prod_id) references product1(prod_id) 
on delete cascade -- if we want to delete record from child table as well in parent table we use on delete cascade
