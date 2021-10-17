CREATE DATABASE db_example; -- Creates the new database

USE db_example;

CREATE TABLE greetings(
id INT AUTO_INCREMENT,
message VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

GRANT all ON db_example.* TO 'impacta'@'%'; -- Gives all privileges to the new user on the newly created database