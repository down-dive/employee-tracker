INSERT INTO departments (department




)
VALUES 
('sales'),
('eingineering'),
('finance'),
('legal');

INSERT INTO roles (title, salary, department_id)
VALUES 
('salesman', 80000, 1),
('sales lead', 100000, 1),
('software engineer', 120000, 2),
('lead engineer', 150000, 2),
('accountant', 125000, 3),
('legal team lead', 250000, 4),
('lawyer', 190000, 4);

INSERT INTO managers (name, role_id)
VALUES
('LeRoi Charles', 2),
('Gaveston Piers', 4),
('Bellamy Edward', 6);

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES
  ('Ronald', 'Firbank', 1, 1),
  ('Virginia', 'Woolf', 1, 1),
  ('Katherine', 'Mansfield', 3, 2),
  ('Dora', 'Carrington', 3, 2),
  ('Montague', 'Summers', 7, 3),
  ('Octavia', 'Butler', 5, NULL),
  ('Unica', 'Zurn', 3, 2),
  ('Charles', 'LeRoi', 2, NULL),
  ('Piers', 'Gaveston', 4, NULL),
  ('Edward', 'Bellamy', 6, NULL);


