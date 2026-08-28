Soal 1
Tampilkan Setiap produk dan total quantity terjual
Urutkan dari total quantity terbesar ke terkecil.
SELECT product,
SUM(quantity) AS total_terjual
FROM sales
GROUP BY product
ORDER BY total_terjual DESC;

Soal 2
Tampilkan Setiap kategori dan jumlah transaksinya
Urutkan dari jumlah transaksi terbesar ke terkecil.
SELECT category,
COUNT(*) AS jumlah_transaksi
FROM sales
GROUP BY category
ORDER BY jumlah_transaksi DESC;

Soal 3
Tampilkan Setiap metode pembayaran dan total quantity yang terjual
Urutkan dari total quantity terbesar ke terkecil.
SELECT payment_method,
SUM(quantity) AS total_quantity
FROM sales
GROUP BY payment_method
ORDER BY total_quantity DESC;

Soal 4
Manager ingin mengetahui 3 produk dengan total quantity terjual terbesar.
SELECT product,
SUM(quantity) AS total_quantity
FROM sales
GROUP BY product
ORDER BY total_quantity DESC
LIMIT 3;

Soal 5
Manager berkata : "Tampilkan kategori, total barang terjual, dan rata-rata harga. 
Hanya tampilkan 2 kategori dengan total barang terjual terbesar."
SELECT category,
SUM(quantity) AS total_terjual,
AVG(price) AS rata_rata_harga
FROM sales
GROUP BY category
ORDER BY total_terjual DESC
LIMIT 2;
