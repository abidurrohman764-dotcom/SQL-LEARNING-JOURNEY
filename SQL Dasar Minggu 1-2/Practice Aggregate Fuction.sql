Soal 1
Berapa jumlah seluruh transaksi?
Gunakan COUNT()
SELECT COUNT(*)
FROM sales;

Soal 2
Berapa total quantity barang yang terjual?
Gunakan SUM()
SELECT SUM(quantity)
FROM sales;

Soal 3
Berapa rata-rata quantity per transaksi?
Gunakan AVG()
SELECT AVG(quantity)
FROM sales;

Soal 4
Berapa harga produk tertinggi?
Gunakan MAX()
SELECT MAX(price)
FROM sales;

Soal 5
Berapa harga produk terendah?
Gunakan MIN()
SELECT MIN(price)
FROM sales;

Soal 6 
Manager ingin melihat semua KPI dasar sekaligus:

Jumlah transaksi
Total barang terjual
Rata-rata quantity
Harga tertinggi
Harga terendah

Petunjuk: Kamu bisa menggunakan beberapa aggregate function dalam satu SELECT.
SELECT COUNT(*),
SUM(quantity),
AVG(quantity),
MAX(price),
MIN(price)
FROM sales;
