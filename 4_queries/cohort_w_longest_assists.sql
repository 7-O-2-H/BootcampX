SELECT cohorts.name AS name, AVG(completed_at-started_at) as avg_assist_time
  FROM cohorts
  JOIN students ON cohorts.id = cohort_id
  JOIN assistance_requests ON students.id = student_id
  GROUP BY cohorts.name
  ORDER BY avg_assist_time DESC
  LIMIT 1
;