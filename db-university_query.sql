use db_university;

SELECT *
FROM students
WHERE date_of_birth like '%1990%';

SELECT *
FROM courses
WHERE cfu > 10;

SELECT *
FROM students
WHERE TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) > 30;

SELECT *
FROM courses
WHERE period = 'I semestre'
AND year = 1;

SELECT *
FROM exams
WHERE date = '2020-06-20'
AND hour > '14:00:00';

SELECT *
FROM degrees;

SELECT name as 'corsi di laurea magistrale'
FROM degrees
WHERE level = 'magistrale';

SELECT count(*)
FROM departments;

SELECT count(*)
FROM teachers
WHERE phone is null;

SELECT count(*) as 'numero iscritti', enrolment_date as 'anno'
FROM students
GROUP BY enrolment_date;

SELECT count(*) as 'insegnanti', office_address
FROM teachers
GROUP BY office_address;

SELECT AVG(vote) as 'media voti', exam_id as 'per appello'
FROM exam_student
GROUP BY exam_id;

SELECT count(*) as 'corsi di laurea', department_id as 'dipartimento'
FROM degrees
GROUP BY department_id;