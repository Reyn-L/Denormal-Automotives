\c reyn

DROP USER IF EXISTS denormal_user;

CREATE USER denormal_user;

DROP DATABASE IF EXISTS denormal_cars;
CREATE DATABASE denormal_cars WITH OWNER denormal_user;

