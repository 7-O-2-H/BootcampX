SELECT cohorts.name AS cohort_name, COUNT(students.name) AS class_size
  FROM cohorts
  JOIN students ON cohorts.id = cohort_id 
  GROUP BY cohorts.name
  HAVING COUNT(students.name) > 17
;
