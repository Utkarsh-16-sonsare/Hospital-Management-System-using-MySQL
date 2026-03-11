SELECT p.first_name, p.last_name, COUNT(a.appointment_id) AS total_appointments
FROM patients p
JOIN appointments a ON p.patient_id = a.patient_id
GROUP BY p.patient_id, p.first_name, p.last_name
HAVING COUNT(a.appointment_id) > 1;
