DROP TABLE IF EXISTS employee_tracker;

CREATE TABLE employee_tracker (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE role ( 
       id INTEGER AUTO_INCREMENT PRIMARY KEY,
       title VARCHAR(30) NOT NULL,
       salary DECIMAL,
       department_id INT

)