SELECT assignments.day, COUNT(assignments.id), SUM(duration)
  FROM assignments
  GROUP BY day
  ORDER BY day
; 