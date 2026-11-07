select count(*) jumlah_order
from bigquery-public-data.thelook_ecommerce.orders;

select created_at tanggal_transaksi
from bigquery-public-data.thelook_ecommerce.orders;


select sum(num_of_item) jumlah_order
from bigquery-public-data.thelook_ecommerce.orders;

select
   sum(cost) jumlah_biaya,
   sum(retail_price) jumlah_harga,
   count(*) jumlah_orders
from bigquery-public-data.thelook_ecommerce.orders;

--mencari nilai terbesar dan terkecil dalam 1 kolom--

select 
  min(num_of_item) nilai_terkecil,
  max(num_of_item) nilai_terbesar
from bigquery-public-data.thelook_ecommerce.orders;

select
  min(created_at) min_trx,
  max(created_at) max_trx
  from bigquery-public-data.thelook_ecommerce.orders;

select 
  min(status),
  max(status)
from bigquery-public-data.thelook_ecommerce.orders

==rata-rata==
select avg(num_of_item) average_items
from bigquery-public-data.thelook_ecommerce.orders;

--jumlah order per status

select 
  status,
  gender,
  count(*) jumlah_order,
  avg(num_of_item) avg_item
from bigquery-public-data.thelook_ecommerce.orders
  group by 1, 2
  order by 2 desc, 3 desc;

select count(distinct status) jumlah_status_unik, count(distinct gender) jumlah_gender_unik
from bigquery-public-data.thelook_ecommerce.orders;


select count(distinct id) jumlah_item, count(distinct order_id) jumlah_order
from bigquery-public-data.thelook_ecommerce.order_items;

