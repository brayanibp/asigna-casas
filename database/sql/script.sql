CREATE DATABASE mision_hogar;
USE mision_hogar;

CREATE TABLE income_types(
    id INT PRIMARY KEY AUTO_INCREMENT,
    desc VARCHAR(30) NOT NULL;
);

CREATE TABLE civil_statuses(
    id INT PRIMARY KEY AUTO_INCREMENT,
    desc VARCHAR(20) NOT NULL
);

CREATE TABLE postal_codes(
    id INT PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(10) NOT NULL
);

CREATE TABLE houses(
    id INT PRIMARY KEY AUTO_INCREMENT,
    rooms_number INT NOT NULL,
    bathrooms_number INT NOT NULL,
    direction VARCHAR(200) NOT NULL,
    house_size VARCHAR(10) NOT NULL,
    postal_code_id INT NOT NULL,
    FOREIGN KEY (postal_code_id) REFERENCES postal_codes(id)
);

CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    born_date DATETIME NOT NULL,
    civil_status INT NOT NULL,
    income_type INT NOT NULL,
    monthly_income DOUBLE(10,2) NOT NULL,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (income_type) REFERENCES income_types(id),
    FOREIGN KEY (civil_status) REFERENCES civil_statuses(id)
);

CREATE TABLE family_group(
    id INT PRIMARY KEY AUTO_INCREMENT,
    size VARCHAR(10) NOT NULL,
    contact_id INT NOT NULL,
    postal_code_id INT NOT NULL
    FOREIGN KEY (contact_id) REFERENCES users(id),
    FOREIGN KEY (postal_code_id) REFERENCES postal_codes(id)
);

CREATE TABLE asignations(
    id INT PRIMARY KEY AUTO_INCREMENT,
    house_id INT NOT NULL,
    family_id INT NOT NULL
);

CREATE USER 'mision'@'localhost' IDENTIFIED BY 'Mis10nHog4r.';
GRANT PRIVILEGES ALL TO 'mision'@'localhost' ON mision_hogar.*;
FLUSH PRIVILEGES;