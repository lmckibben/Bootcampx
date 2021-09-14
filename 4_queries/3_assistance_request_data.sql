SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, 
(SELECT assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN assignments ON assignment_id = assignments.id
join students ON student_id = students.id
ORDER BY duration 