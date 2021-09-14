SELECT  AVG(total) AS average_total_duration
from 
(SELECT  SUM(completed_at - started_at) AS total
from assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name) AS average_total_duration