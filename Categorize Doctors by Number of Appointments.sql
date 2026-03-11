SELECT d.doctor_id, d.first_name, d.last_name, COUNT(a.appointment_id) AS appointment_count,
CASE
  WHEN COUNT(a.appointment_id) < 50 THEN "Less Busy"
  WHEN COUNT(a.appointment_id) BETWEEN 50 AND 100 THEN "Active"
  ELSE "Highly Active"
END AS status
FROM doctors d
LEFT JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.first_name, d.last_name;
