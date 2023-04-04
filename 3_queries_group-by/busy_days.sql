SELECT COUNT(name) AS total_assignments, day
  FROM assignments
  GROUP BY day
  HAVING COUNT(name) > 9
  ORDER BY day
;