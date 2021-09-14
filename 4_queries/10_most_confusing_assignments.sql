SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, count(assistance_requests.id) AS total_assistance
from assistance_requests
join assignments ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_assistance DESC