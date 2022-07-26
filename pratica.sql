-- EXERCICIO 1
SELECT users.id, users.name, cities.name AS city 
FROM users 
JOIN cities 
ON users."cityId" = cities.id 
WHERE cities.name = 'Rio de Janeiro'
ORDER BY users.id;

-- EXERCICIO 2
SELECT testimonials.id, t1.name AS writer, t2.name AS recipient, testimonials.message 
FROM testimonials 
JOIN users t1 
ON testimonials."writerId" = t1.id 
JOIN users t2 
ON testimonials."recipientId" = t2.id
ORDER BY testimonials.id;

-- EXERCICIO 3
SELECT users.id, users.name, courses.name AS course, schools.name AS school, educations."endDate"
FROM educations
JOIN users
ON educations."userId" = users.id
JOIN courses
ON educations."courseId" = courses.id
JOIN schools
ON educations."schoolId" = schools.id
WHERE educations.status = 'finished' AND users.id = 30;

-- EXERCICIO 4
SELECT users.id, users.name, roles.name AS role, companies.name AS company, experiences."startDate"
FROM experiences
JOIN users
ON experiences."userId" = users.id
JOIN roles 
ON experiences."roleId" = roles.id
JOIN companies
ON experiences."companyId" = companies.id
WHERE users.id = 50 AND experiences."endDate" IS NULL;

