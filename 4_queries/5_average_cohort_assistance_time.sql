SELECT cohorts.name, AVG(assistance_requests.completed_at-assistance_requests.started_at) as stuff
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assistance_requests ON students.id = assistance_requests.student_id
GROUP BY cohorts.name
ORDER BY stuff ASC;