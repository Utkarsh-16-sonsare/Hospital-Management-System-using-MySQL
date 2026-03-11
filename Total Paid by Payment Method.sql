SELECT payment_method, SUM(amount) AS total_payments FROM billing GROUP BY payment_method;
