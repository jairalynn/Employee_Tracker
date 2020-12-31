INSERT INTO department (name)
VALUES ("Sales"), ("Marketing"), ("IT");

INSERT INTO role (title, salary, department_id)
VALUES ("Lead", "80000.00", "1"), ("Lead", "100000.00", "2"), ("Network manager", "125000.00", "3"), ("Junior", "40000.00", "1"), ("Intern", "35000.00", "2"), ("Junior Dev", "80000.00", "3");

INSERT INTO employee (first_name, last_name, role_id);
VALUES ("Frank", "Thedog", "1"), ("Lady", "Oftheearth", "2"), ("Lexi", "Jack", "3");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Alice", "Dog", "4", "1"), ("Ripley", "Finn", "5", "2"), ("Kele", "Scales", "6", "3");