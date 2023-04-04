SELECT cohorts.name, AVG(completed_at-started_at) AS avg_assist_time
  FROM cohorts
  JOIN students ON students.cohort_id = cohorts.id
  JOIN assistance_requests ON students.id = assistance_requests.student_id
  GROUP BY cohorts.name
  ORDER BY  avg_assist_time
;