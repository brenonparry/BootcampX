SELECT cohorts.name AS cohort_name, COUNT(students.id) AS students_count
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING COUNT(students.id)>= 18
ORDER BY COUNT(students.id); 