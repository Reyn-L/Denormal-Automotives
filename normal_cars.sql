\c reyn

DROP DATABASE IF EXISTS normal_cars;
DROP USER IF EXISTS normal_user;

CREATE USER normal_user;

CREATE DATABASE normal_cars WITH OWNER normal_user;

\c normal_cars;

CREATE TABLE model_cars (
id SERIAL NOT NULL PRIMARY KEY,
model_code VARCHAR(100),
model_title VARCHAR(100)
);

CREATE TABLE make_cars(
id SERIAL NOT NULL PRIMARY KEY,
make_code VARCHAR(100),
make_title VARCHAR(100)
);

CREATE TABLE cars (
id SERIAL NOT NULL PRIMARY KEY,
year INT,
model_cars_id INT REFERENCES model_cars(id),
make_cars_id INT REFERENCES make_cars(id)
);
