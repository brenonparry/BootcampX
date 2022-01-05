SELECT cohorts.name, AVG(completed_at - started_at) AS average_assistance_time
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;


-- TRYING TO (BUT FAILED) AT USING THE MAX() FUNCTION:

-- SELECT AVG(completed_at - started_at) AS average_assistance_time
-- FROM assistance_requests 
-- JOIN students ON students.id = assistance_requests.student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name;

-- SELECT sub.average_cohort_name AS name, MAX(sub.average_assistance_time) AS average_assistance_time
-- FROM (
--   SELECT cohorts.name AS average_cohort_name, AVG(completed_at - started_at) AS average_assistance_time
--   FROM assistance_requests 
--   JOIN students ON students.id = assistance_requests.student_id
--   JOIN cohorts ON cohorts.id = cohort_id
--   GROUP BY cohorts.name
-- ) sub
-- GROUP BY name;