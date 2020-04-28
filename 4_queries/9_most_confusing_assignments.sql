SELECT assignment_id, name, day, chapter, COUNT(assistance_requests.*)
FROM assistance_requests
JOIN assignments ON assignment_id = assignments.id
GROUP BY assignment_id, assignments.name, day, chapter
ORDER BY COUNT(assistance_requests.*) DESC;
