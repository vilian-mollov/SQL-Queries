CREATE DATABASE exercise;
USE exercise;

CREATE TABLE students(
id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50)
);

CREATE TABLE papers(
title VARCHAR(100),
grade INT,
student_id INT,
FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
 
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

-- Inner join with sorted by grades descending order
SELECT first_name, title, grade FROM students
JOIN papers ON papers.student_id = students.id
ORDER BY grade DESC;

-- Left join by students
SELECT first_name, title, grade FROM students
LEFT JOIN papers ON papers.student_id = students.id;

-- Left join by students variation with IFNULL 
SELECT first_name, IFNULL(title, 'MISSING'), IFNULL(grade, 0) FROM students
LEFT JOIN papers ON papers.student_id = students.id;


-- Print first name and average grade
SELECT first_name, IFNULL(AVG(grade), 0) AS average FROM students
LEFT JOIN papers ON papers.student_id = students.id
GROUP BY id
ORDER BY average DESC;

-- Print first name, average grade and passing status
SELECT first_name, IFNULL(AVG(grade), 0) AS average, CASE 
WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'PASSING'
ELSE 'FAILING' 
END AS passing_status
	FROM students
LEFT JOIN papers ON papers.student_id = students.id
GROUP BY id
ORDER BY average DESC;

