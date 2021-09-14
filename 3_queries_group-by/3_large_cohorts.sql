SELECT cohorts.name AS cohort_name, count(students) AS student_count
from cohorts
JOIN students ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.id) >= 18
ORDER BY count(students.id)