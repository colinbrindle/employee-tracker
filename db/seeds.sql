USE employee_manager_db;

INSERT INTO department(name)
VALUES ("SALES"),
    ("ADMIN"),
    ("ENGINEERING"),
    ("LEGAL");

INSERT INTO role(title, salary, department_id)
VALUES ("Account Associate", 50000, 1),
    ("Sales Manager", 90000, 1),
    ("President", 1000000, 2),
    ("Secretary", 80000, 2),
    ("Engineering Apprentice", 80000, 3),
    ("Engineer", 150000, 3),
    ("Architect", 300000, 3),
    ("General Counsel", 300000, 4),
    ("Lawyer", 150000, 4);

INSERT INTO employee(first_name, last_name, role_id, manager_id)
VALUES ("Levi", "Ackerman", 2, NULL),
    ("Mikasa", "Ackerman", 1, 1),
    ("Joe", "Byron", 3, NULL),
    ("James", "Bond", 4, 3),
    ("Steve","Woz",7,NULL),
    ("Jack","Dorsey",6, 5),
    ("Meg","Abytes", 5, 6),
    ("Gerri", "Kellman", 8, NULL),
    ("Saul", "Goodman", 9, 9);