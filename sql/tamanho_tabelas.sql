-- MYSQL 
SELECT 
  table_name AS "Tables", 
  table_schema,
round(((data_length + index_length) / 1024 / 1024), 2) "Size in MB"
FROM information_schema.TABLES
ORDER BY (data_length + index_length) DESC;
