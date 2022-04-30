create table products(id int auto_increment, category_id int, name varchar(50), description varchar(255), image_url varchar(2000),price decimal(7,2), available_quantity int,
                      primary key(id), foreign key(category_id) references  category(id));

create table category(id int auto_increment, name varchar(50), description varchar(255),primary key (id));

create table cart(id int auto_increment, cartItem_id int, primary key (id), foreign key(cartItem_id) references cartItem(id));

create table cartItem(id int auto_increment, cart_id int, product_id int, quantity int, primary key (id));

create table user(id int auto_increment, email varchar(100), phone varchar(50), first_name varchar(50), last_name varchar(50), street varchar(100), post_code varchar(20), city varchar(100), password varchar(255), primary key (id));

create table orders(id int auto_increment, cart_id int, user_id int, payment_method_id int, shipping_method_id int, grand_total int, primary key(id), foreign key (user_id) references user(id), foreign key (cart_id) references cart(id));

create table payment_methods(id int auto_increment, name varchar(50), primary key (id));

create table shipping_methods(id int auto_increment, name varchar(50), price int, primary key (id));

show tables;
select * from cart;

ALTER TABLE orders
    RENAME TO purchase;

ALTER TABLE purchase
    ADD status varchar(7) AFTER grand_total;

ALTER TABLE cart
add total_amount int after id;

alter table cart
add session_id varchar(100) after total_amount;

alter table cartItem
add price varchar(100) after product_id;

alter table shipping_methods
rename to shipping_method;

alter table products
rename to product;

ALTER TABLE cartItem MODIFY COLUMN price decimal(15,2);
ALTER TABLE cart MODIFY COLUMN total_amount decimal(15,2);
ALTER TABLE purchase MODIFY COLUMN grand_total decimal(15,2);
