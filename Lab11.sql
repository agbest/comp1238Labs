SELECT * FROM courses;

SELECT * FROM assignments
LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- Use this query as a reference for the next step
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

--exercise questions
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

SELECT title, min(due_date) FROM assignments;

SELECT title, max(due_date) FROM assignments;

SELECT title, course_id FROM assignments
WHERE due_date = '2024-10-08';

SELECT title, due_date FROM assignments
WHERE due_date LIKE '2024-10%'; 

SELECT due_date FROM assignments
WHERE status = 'Completed';

--optional queries
SELECT count(*) FROM assignments
WHERE status = 'Not Started';

SELECT course_id, course_name FROM courses
WHERE lab_time LIKE 'Tue%';

SELECT * FROM assignments
JOIN courses ON courses.course_id = assignments.course_id;
