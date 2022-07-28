-- Exercicio 1

SELECT COUNT ("endDate") as "currentExperiences" 
FROM experiences;

-- Exercicio 2

SELECT "userId" AS id, COUNT("courseId") AS educations
FROM educations
GROUP BY "userId"
ORDER BY educations DESC;

--Exercicio 3

SELECT users.name AS writer, COUNT(testimonials) AS "testimonialCount"
FROM testimonials
JOIN users
ON users.id = testimonials."writerId" AND users.id = 435
GROUP BY users.name;

-- Exercicio 4

SELECT MAX(jobs.salary) AS salario, roles.name AS cargo
FROM jobs
JOIN roles
ON roles.id=jobs."roleId"
GROUP BY jobs.salary, roles.name ORDER BY salary ASC;