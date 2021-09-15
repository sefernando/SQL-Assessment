-- Q1
SELECT * 
FROM users;

SELECT * 
FROM progress;


-- Q2
SELECT email_domain, COUNT(*) AS 'total_students'
FROM users
GROUP BY email_domain
ORDER BY total_students DESC
LIMIT 25;

SELECT COUNT(*)
FROM users
WHERE city = 'New York';

SELECT COUNT(*)
FROM users
WHERE mobile_app = 'mobile-user';

-- Q3
SELECT COUNT(sign_up_at),
   STRFTIME('%H', sign_up_at) AS 'hour'
FROM users
GROUP BY hour
ORDER BY hour;


-- Q4
SELECT email_domain, country, learn_sql, learn_html, learn_javascript, learn_java
FROM users 
JOIN progress 
    ON users.user_id = progress.user_id
GROUP BY users.email_domain
ORDER BY country;

SELECT email_domain, country, city, learn_sql, learn_html, learn_javascript, learn_java
FROM users 
JOIN progress 
    ON users.user_id = progress.user_id
WHERE city = 'New York';

SELECT email_domain, country, city, learn_sql, learn_html, learn_javascript, learn_java
FROM users 
JOIN progress 
    ON users.user_id = progress.user_id
WHERE city = 'Chicago';
  



