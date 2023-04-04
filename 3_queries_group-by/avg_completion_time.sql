SELECT students.name AS name, AVG(assignment_submissions.duration) AS avg_completion_time
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS NULL
GROUP BY name
ORDER BY avg_completion_time DESC
;