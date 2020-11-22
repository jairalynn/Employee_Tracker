DROP DATABASE IF EXISTS employeesDB;
CREATE database employeesDB;

USE employeesDB;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INT NOT NULL,
manager_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
  FOREIGN KEY (manager_id) REFERENCES employee(id)
);

INSERT INTO department (name)
VALUES ("Sales"), ("Marketing"), ("IT");

INSERT INTO role (title, salary, department_id)
VALUES ("Lead", 80000, 1), ("Lead", 100000, 2), ("Network manager", 125000, 3), ("Junior", 40000, 1), ("Intern", 35000, 2), ("Junior Dev", 80000);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Frank", "Thedog", 1), ("Lady", "Oftheearth", 2), ("Lexi", "Jack", 3), ("Alice", "Dog", 4), ("Ripley", "Finn", 5), ("Kele", "Scales", 6);