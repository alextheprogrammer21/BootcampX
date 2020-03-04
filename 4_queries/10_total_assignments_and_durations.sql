SELECT assignments.day, COUNT(assignments.id), SUM(assignments.duration)
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;