-- queries.sql
-- Representative SQL queries demonstrating validation, aggregation,
-- relational integrity, and basic control checks.

-- 1) Table row counts
-- Purpose: validate successful data import across core tables
SELECT COUNT(*) AS publishers_count FROM publishers;
SELECT COUNT(*) AS titles_count FROM titles;
SELECT COUNT(*) AS stores_count FROM stores;
SELECT COUNT(*) AS sales_count FROM sales;

-- 2) Join: titles with publisher names
-- Purpose: validate relational integrity between titles and publishers
SELECT
  t."TITLE",
  p."PUB_NAME"
FROM titles t
JOIN publishers p
  ON t."PUB_ID" = p."PUB_ID";

-- 3) Aggregate: number of orders per store
-- Purpose: summarize order volume by store
SELECT
  "STOR_ID",
  COUNT(*) AS order_count
FROM sales
GROUP BY "STOR_ID"
ORDER BY order_count DESC;

-- 4) Control check: sales records missing a matching store
-- Purpose: identify orphaned sales records that violate referential integrity
SELECT
  s.*
FROM sales s
LEFT JOIN stores st
  ON s."STOR_ID" = st."STOR_ID"
WHERE st."STOR_ID" IS NULL;

-- 5) Inconsistency check: titles with NULL or invalid pricing
-- Purpose: flag records that may cause reporting or analysis issues
SELECT
  "TITLE",
  "PRICE"
FROM titles
WHERE "PRICE" IS NULL
   OR "PRICE" < 0;
