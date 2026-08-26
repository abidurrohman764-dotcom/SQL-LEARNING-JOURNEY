Soal 1
Tampilkan transaksi dengan produk Beras, Gula, atau Kopi
Gunakan IN.
SELECT *
FROM sales
WHERE product IN ('Beras', 'Gula', 'Kopi');

Soal 2
Tampilkan transaksi dengan kategori Sembako atau Minuman
Gunakan IN.
SELECT *
FROM sales
WHERE category IN ('Sembako', 'Minuman');

Soal 3
Tampilkan transaksi dengan metode pembayaran Cash atau QRIS
Gunakan IN.
SELECT *
FROM sales
WHERE payment_method IN ('Cash', 'QRIS');

Soal 4
Manager berkata:
"Saya ingin melihat customer, produk, dan quantity untuk transaksi Beras, Mie Instan, atau Telur."
Gunakan IN.
SELECT customer_name, product, quantity
FROM sales
WHERE product IN ('Beras', 'Mie Instan', 'Telur');

Soal 5
Manager berkata:
"Saya ingin melihat transaksi dari kategori Sembako atau Minuman, tetapi hanya yang quantity-nya lebih dari 10."
SELECT *
FROM sales
WHERE category IN ('Sembako', 'Minuman')
AND quantity > 10;
