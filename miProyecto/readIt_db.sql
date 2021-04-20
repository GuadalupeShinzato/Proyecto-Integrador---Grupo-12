CREATE TABLE users (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) not null,
last_name VARCHAR (100) not null,
email VARCHAR (250) not null,
username VARCHAR (100) not null,
password VARCHAR (250) not null
);

CREATE TABLE products (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(250) not null,
author VARCHAR (100) not null,
cover VARCHAR (250) not null,
description TEXT not null,
users_id INT UNSIGNED not null,
FOREIGN KEY (users_id) REFERENCES users(id)
);

CREATE TABLE comments (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
comment VARCHAR(250) not null,
product_id INT UNSIGNED not null,
users_id INT UNSIGNED not null,
fecha_comment DATE not null,
FOREIGN KEY (product_id) REFERENCES products(id),
FOREIGN KEY (users_id) REFERENCES users(id)
);

