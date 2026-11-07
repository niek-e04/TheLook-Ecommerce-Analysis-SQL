SELECT
  order_id,
  status
  created_at
FROM bigquery-public-data.thelook_ecommerce.orders
LIMIT 10;


SELECT order_id, status, created_at
FROM bigquery-public-data.thelook_ecommerce.orders
LIMIT 20;


select id, gender, country, created_at
from bigquery-public-data.thelook_ecommerce.users
limit 25

