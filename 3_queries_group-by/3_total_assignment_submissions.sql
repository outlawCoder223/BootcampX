SELECT cohorts.name AS cohort, COUNT(assignment_submissions.id) AS total_submissions
FROM assignment_submissions
JOIN students
ON student_id = students.id
JOIN cohorts
ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;
