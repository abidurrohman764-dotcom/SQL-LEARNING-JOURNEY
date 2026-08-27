Soal 1
Tampilkan semua transaksi dengan quantity antara 10 dan 20.
Gunakan BETWEEN.
SELECT *
FROM sales
WHERE quantity BETWEEN 10 AND 20;

Soal 2
Tampilkan semua transaksi dengan price antara 10.000 dan 20.000.
Gunakan BETWEEN.
SELECT *
FROM sales
WHERE price BETWEEN 10000 AND 20000;

Soal 3
Tampilkan semua transaksi yang nama produknya mengandung kata "Mie"
Gunakan LIKE.
SELECT *
FROM sales
WHERE product LIKE 'Mie%';

Soal 4
Tampilkan semua transaksi yang nama produknya diawali dengan huruf "S"
Gunakan LIKE.
SELECT *
FROM sales
WHERE product LIKE 'S%';

Soal 5
Manager berkata : "Saya ingin melihat customer, produk, dan harga untuk transaksi
dengan harga antara 10.000 sampai 20.000 dan quantity lebih dari 5."
SELECT customer_name, product, price
FROM sales
WHERE (price BETWEEN 10000 AND 20000)
AND quantity > 5;

Soal 6
Manager berkata : "Tampilkan customer dan produk yang produknya mengandung 
kata 'a' dan quantity-nya lebih dari 10."
SELECT customer_name, product
FROM sales
WHERE product LIKE '%a%'
AND quantity > 10;
