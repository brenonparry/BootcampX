SELECT assignments.day, COUNT(day) AS total_assignments
FROM assignments
GROUP BY assignments.day
HAVING COUNT(day) >= 10
ORDER BY assignments.day;