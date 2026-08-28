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

----------------------------------------------

Soal 1 Aggregate + AS
Hitung jumlah seluruh transaksi dan beri nama total_transactions
SELECT COUNT(*) AS total_transactions
FROM sales;

Soal 2 Aggregate + AS
Hitung total quantity dan beri nama total_quantity
SELECT SUM(quantity) AS total_quantity
FROM sales;

Soal 3 Aggregate + AS
Hitung rata-rata harga dan beri nama average_price
SELECT AVG(price) AS average_price
FROM sales;

Soal 4 Aggregate + AS
Tampilkan:
harga tertinggi → highest_price
harga terendah → lowest_price
Dalam satu query.
SELECT MAX(price) AS highest_price,
MIN(price) AS lowest_price
FROM sales;

Soal 5 Aggregate + AS
Buat satu query yang menghasilkan:

KPI	Nama Alias
Jumlah transaksi	total_transactions
Total barang	total_quantity
Rata-rata quantity	average_quantity
Harga tertinggi	highest_price
Harga terendah	lowest_price

SELECT COUNT(*) AS total_transactions, 
SUM(quantity) AS total_quantity,
AVG(quantity) AS average_quantity,
MAX(price) AS highest_price,
MIN(price) AS lowest_price
FROM sales;
