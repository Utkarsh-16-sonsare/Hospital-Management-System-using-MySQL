SELECT treatment_type, COUNT(*) AS total_count
FROM treatments
GROUP BY treatment_type
ORDER BY total_count DESC
LIMIT 1;
