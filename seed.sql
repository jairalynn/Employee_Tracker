INSERT INTO department (name)
VALUES ("Sales"), ("Marketing"), ("IT");

INSERT INTO role (title, salary, department_id)
VALUES ("Lead", 80000, 1), ("Lead", 100000, 2), ("Network manager", 125000, 3), ("Junior", 40000, 1), ("Intern", 35000, 2), ("Junior Dev", 80000);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Frank", "Thedog", 1), ("Lady", "Oftheearth", 2), ("Lexi", "Jack", 3), ("Alice", "Dog", 4), ("Ripley", "Finn", 5), ("Kele", "Scales", 6);