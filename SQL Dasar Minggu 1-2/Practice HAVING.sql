Soal 1
Tampilkan Setiap produk dan total quantity terjual.
Tetapi hanya tampilkan produk yang memiliki total quantity lebih dari 50
Gunakan HAVING.
SELECT product,
SUM(quantity) AS quantity_terjual
FROM sales
GROUP BY product
HAVING SUM(quantity) > 50;

Soal 2
Tampilkan Setiap kategori dan jumlah transaksi.
Hanya tampilkan kategori yang memiliki lebih dari 5 transaksi
Gunakan HAVING.
SELECT category,
COUNT(*) AS jumlah_transaksi
FROM sales
GROUP BY category
HAVING COUNT(*) > 5;

Soal 3
Tampilkan Setiap metode pembayaran dan total quantity.
Hanya tampilkan metode pembayaran dengan total quantity lebih dari 100
Gunakan HAVING.
SELECT payment_method,
SUM(quantity) AS total_quantity
FROM sales
GROUP BY payment_method
HAVING SUM(quantity) > 100;

Soal 4
Gabungan WHERE + HAVING
Manager berkata :"Ambil transaksi dengan harga lebih dari 10.000. Kelompokkan berdasarkan kategori.
Hitung total quantity. Hanya tampilkan kategori dengan total quantity lebih dari 50."
SELECT category,
SUM(quantity) AS total_quantity
FROM sales
WHERE price > 10000
GROUP BY category
HAVING SUM(quantity) > 50;

Soal 5
Manager berkata: "Tampilkan produk, jumlah transaksi, dan total quantity.
Hanya tampilkan produk yang memiliki minimal 4 transaksi dan urutkan berdasarkan total quantity terbesar."
SELECT product,
COUNT(*) AS jumlah_transaksi,
SUM(quantity) AS total_quantity
FROM sales
GROUP BY product
HAVING COUNT(*) >= 4
ORDER BY total_quantity DESC;
