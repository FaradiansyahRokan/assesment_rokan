DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS department;

CREATE TABLE department (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT
);

CREATE TABLE student (
    student_id INTEGER PRIMARY KEY,
    student_name TEXT,
    gender TEXT,
    department_id INTEGER,
    gpa REAL,
    FOREIGN KEY (department_id) REFERENCES department(department_id) 
);

INSERT INTO department (department_id, department_name) VALUES
(1, 'Science'),
(2, 'Social'),
(3, 'Politic'),
(4, 'Tech');

INSERT INTO student (student_id, student_name, gender, department_id, gpa) VALUES
(1, 'John Doe', 'men', 1, 3.11),
(2, 'Jane Doe', 'women', 2, 2.8),
(3, 'Abdullah', 'men', 1, 3.8),
(4, 'Aminah', 'women', 3, 3.21);

SELECT
    d.department_name,
    s.student_name,
    s.gpa
FROM
    student s
JOIN
    department d ON s.department_id = d.department_id 
ORDER BY
    d.department_name ASC, s.gpa ASC;

SELECT
    d.department_name,
    COUNT(s.student_id) AS total_students_gpa_below_3 
FROM
    department d
LEFT JOIN 
    student s ON d.department_id = s.department_id AND s.gpa < 3.0 
GROUP BY
    d.department_name
ORDER BY
    d.department_name; 

SELECT
    d.department_name,
    COUNT(s.student_id) AS total_students_gpa_above_3 
FROM
    department d
LEFT JOIN
    student s ON d.department_id = s.department_id AND s.gpa > 3.0
GROUP BY
    d.department_name
ORDER BY
    d.department_name; 

SELECT
    d.department_name,
    AVG(s.gpa) AS average_gpa
FROM
    department d
LEFT JOIN
    student s ON d.department_id = s.department_id
GROUP BY
    d.department_name
ORDER BY
    d.department_name; 

SELECT
    d.department_name,
    SUM(CASE WHEN s.gender = 'women' THEN 1 ELSE 0 END) AS women,
    SUM(CASE WHEN s.gender = 'men' THEN 1 ELSE 0 END) AS men
FROM
    department d
LEFT JOIN 
    student s ON d.department_id = s.department_id
GROUP BY
    d.department_name
ORDER BY
    d.department_name ASC; 