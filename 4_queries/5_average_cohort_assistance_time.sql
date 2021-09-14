SELECT cohorts.name, AVG(completed_at - started_at) AS average_assistance_request_duration
from assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER by average_assistance_request_duration