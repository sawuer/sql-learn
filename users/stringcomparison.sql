-- SELECT * FROM users WHERE name LIKE '%o%';
-- SELECT * FROM users WHERE name LIKE 'Ram%';
-- SELECT * FROM users WHERE name LIKE '%yer';

-- AND and OR

SELECT * FROM users 
WHERE name LIKE '%n%' 
AND age > 12;