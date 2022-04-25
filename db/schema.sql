-- Dropping preexisting databases (if any), and creating and using employee_manager_db
DROP DATABASE IF EXISTS employee_manager_db;
CREATE DATABASE employee_manager_db;
USE employee_manager_db;

-- Showing databses to check database was created properly
SHOW DATABASES;

-- Creating department table with ID (INT primary key) and name (unqiue string max 30 characters)
CREATE TABLE department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL
);

-- Creating role table with id (INT), title (string max 30 characters), salary (decimals), and department_id (links to id from department table)
CREATE TABLE role (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) UNIQUE NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id)
    REFERENCES department(id)
    ON DELETE CASCADE
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    FOREIGN KEY (role_id)
    REFERENCES role(id),
    manager_id INT,
    FOREIGN KEY (manager_id)
    REFERENCES employee(id)
    ON DELETE SET NULL
);