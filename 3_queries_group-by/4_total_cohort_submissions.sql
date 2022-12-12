SELECT cohorts.name AS cohort, count(assignment_submissions.*) as cohort_total_submissions
FROM assignment_submissions
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohort
ORDER BY cohort_total_submissions DESC;