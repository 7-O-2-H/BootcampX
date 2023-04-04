SELECT students.name AS student_name, AVG(assignment_submissions.duration) AS avg_completion_time, AVG(assignments.duration) AS estimated_completion_time
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL 
GROUP BY student_name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration) 
ORDER BY avg_completion_time 
;