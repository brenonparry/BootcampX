SELECT students.name, COUNT(assistance_requests.id) AS total_assistances -- makes more sense to list the name first
FROM students
JOIN assistance_requests ON students.id = assistance_requests.student_id
WHERE end_date IS NULL -- currenlty enrolled students
GROUP BY students.name 
ORDER BY total_assistances; -- student with lowest # of assistance gets promoted to the teacher position of the loser between the two lowest scoring teachers