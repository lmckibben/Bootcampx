SELECT day, count(*) as total_assignments, sum(assignments.duration) AS duration
from assignments
GROUP BY day
ORDER BY day