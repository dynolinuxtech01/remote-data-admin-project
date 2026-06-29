==
=========================================
==
--   PROJECT 6 : ANALISIS TOP CUSTOMER
--
--      Author : Purwa Candra
--      Database : PostgreSQL
--      Tools : Grafana
--
==========================================
==

-- Total Traksaksi Seluruh Customer
SELECT SUM(total_belanja)
AS total_transaksi_seluruh_customer
FROM top_customer;

-- customer dengan belanja terbesar
SELECT customer, SUM(total_belanja)
AS total_akumulasi FROM top_customer
GROUP BY customer ORDER BY total_akumulasi
DESC;

-- Total Belanja Per Customer
SELECT customer, SUM(total_belanja)
AS total_belanja_per_customer
FROM top_customer GROUP BY customer
ORDER BY total_belanja_per_customer DESC;

-- Total Belanja Per Kota
SELECT kota, SUM(total_belanja)
AS total_belanja_per_kota 
FROM top_customer GROUP BY kota
ORDER BY total_belanja_per_kota
DESC;

-- Tren Transaksi Harian
SELECT tanggal, SUM(total_belanja)
AS total_belanja_harian,
COUNT(*) AS jumlah_transaksi
FROM top_customer GROUP BY tanggal
ORDER BY tanggal ASC;
