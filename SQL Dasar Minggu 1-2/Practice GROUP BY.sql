Soal 1
Manager ingin mengetahui Total quantity yang terjual untuk setiap produk.
SELECT product,
SUM(quantity) AS total_quantity
FROM sales
GROUP BY product;

Soal 2
Manager ingin mengetahui Jumlah transaksi untuk setiap kategori.
SELECT category,
COUNT(*) AS jumlah_transaksi
FROM sales
GROUP BY category;

Soal 3
Manager ingin mengetahui Rata-rata harga untuk setiap kategori.
SELECT category,
AVG(price) AS Rata_rata_harga
FROM sales
GROUP BY category;

Soal 4
Manager ingin mengetahui Total quantity yang terjual berdasarkan metode pembayaran.
SELECT payment_method,
SUM(quantity) AS total_quantity
FROM sales
GROUP BY payment_method;

Soal 5
Manager berkata "Saya ingin melihat setiap kategori, total barang yang terjual, dan rata-rata harga produknya."
SELECT category, 
SUM(quantity) AS total_terjual,
AVG(price) AS rata_rata_harga
FROM sales
GROUP BY category;
