--Berapa jumlah order tercatat--

SELECT COUNT(*) jumlah_order
from bigquery-public-data.thelook_ecommerce.orders;

--Berapa jumlah item yang dibeli?
select count(*) jumlah_item
from bigquery-public-data.thelook_ecommerce.order_items;

--Berapa jumlah order untuk masing-masing status?--

select status,count(*) as jumlah_order
from bigquery-public-data.thelook_ecommerce.orders;
GROUP BY status;

--Apa saja 10 produk terlaris berdasarkan jumlah order?

SELECT product_id, COUNT(*) item_cnt
FROM bigquery-public-data.thelook_ecommerce.products;
GROUP BY product_id
ORDER BY 2 DESC
limit 10;

SELECT 
user_id,
COUNT(*) jumlah_order,
SUM(sale_price) jumlah_sale_price,
AVG(order_id) rata_rata_nila_per_transaksi
FROM bigquery-public-data.thelook_ecommerce.order_items
GROUP BY 1
LIMIT 10;
