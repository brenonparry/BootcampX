SELECT teachers.name, COUNT(assistance_requests.id) AS total_assistances -- makes more sense to list the name field first 
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
WHERE name = teachers.name -- listing all teachers instead of just one
GROUP BY teachers.name
ORDER BY total_assistances DESC; -- make the two lowest scoring teachers dule
