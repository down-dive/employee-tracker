INSERT INTO departments (name)
VALUES 
('sales'),
('delivery'),
('finance'),
('recruitement'),
('advertisement');

INSERT INTO roles (title, salary, department_id)
VALUES 
('salesman', 20, 1),
('driver', 15, 2),
('accountant', 25, 3),
('recruiter', 25, 4),
('bloggers', 20, 5);

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES
  ('Ronald', 'Firbank', 1, 1),
  ('Virginia', 'Woolf', 1, 1),
  ('Piers', 'Gaveston', 4, 0),
  ('Charles', 'LeRoi', 2, 1),
  ('Katherine', 'Mansfield', 2, 1),
  ('Dora', 'Carrington', 3, 0),
  ('Edward', 'Bellamy', 4, 0),
  ('Montague', 'Summers', 3, 1),
  ('Octavia', 'Butler', 5, 1),
  ('Unica', 'Zurn', 2, NULL);


