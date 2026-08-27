Soal 1
Tampilkan semua transaksi dan urutkan berdasarkan price dari tertinggi ke terendah
SELECT *
FROM sales
ORDER BY price DESC;

Soal 2
Tampilkan semua transaksi dan urutkan berdasarkan quantity dari terkecil ke terbesar
SELECT *
FROM sales
ORDER BY quantity ASC;

Soal 3
Manager ingin melihat customer, produk, dan harga
Urutkan berdasarkan harga dari tertinggi ke terendah.
SELECT customer_name, product, price
FROM sales
ORDER BY price DESC;

Soal 4
Tampilkan semua transaksi kategori Sembako, kemudian urutkan berdasarkan quantity tertinggi ke terendah.
SELECT *
FROM sales
WHERE category = 'Sembako'
ORDER BY quantity DESC;

Soal 5
Manager berkata : "Tampilkan customer, produk, quantity, dan harga untuk transaksi
dengan harga lebih dari 10.000. Urutkan dari harga tertinggi."
SELECT customer_name, product, quantity, price
FROM sales
WHERE price > 10000
ORDER BY price DESC;

