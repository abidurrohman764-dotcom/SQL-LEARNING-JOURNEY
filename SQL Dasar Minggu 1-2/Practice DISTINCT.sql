Soal 1
Tampilkan semua nama produk unik.
SELECT DISTINCT product
FROM sales;

Soal 2
Tampilkan semua kategori unik.
SELECT DISTINCT category
FROM sales;

Soal 3
Tampilkan semua metode pembayaran unik.
SELECT DISTINCT payment_method
FROM sales;

Soal 4
Manager ingin mengetahui: Customer mana saja yang pernah melakukan transaksi?
Tampilkan nama customer unik.
SELECT DISTINCT customer_name
FROM sales;

Soal 5
Manager ingin mengetahui: Kombinasi unik antara kategori dan metode pembayaran yang digunakan.
SELECT DISTINCT category, payment_method
FROM sales;
