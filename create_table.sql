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

CREATE TABLE top_costumer
(id SERIAL PRIMARY KEY,tanggal DATE,customer VARCHAR(100),
 kota VARCHAR(100),total_belanja NUMERIC);


