SELECT assignments.day, COUNT(assignments.id) AS number_of_assignments, CONCAT(SUM(assignments.duration), ' minutes') AS duration
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;