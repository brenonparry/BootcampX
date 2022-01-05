SELECT cohorts.name AS cohort, SUM(completed_at - started_at) AS total_duration
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY cohorts.name
ORDER BY total_duration;