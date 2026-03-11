SELECT p.patient_id, p.first_name, p.last_name, SUM(b.amount) AS total_spending
FROM patients p
JOIN appointments a ON p.patient_id = a.patient_id
JOIN billing b ON b.patient_id = p.patient_id  
GROUP BY p.patient_id, p.first_name, p.last_name
ORDER BY total_spending DESC
LIMIT 5;
