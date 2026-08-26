Soal 1
Tampilkan semua transaksi dengan quantity kurang dari 10
SELECT *
FROM sales
WHERE quantity < 10;

Soal 2
Tampilkan semua transaksi dengan price lebih besar atau sama dengan 18000
SELECT *
FROM sales
WHERE price >= 18000;

Soal 3
Tampilkan semua transaksi dengan quantity kurang dari atau sama dengan 10
SELECT *
FROM sales
WHERE quantity <= 10;

Soal 4
Tampilkan semua transaksi yang category bukan Sembako
SELECT *
FROM sales
WHERE category <> 'Sembako';

Soal 5
Manager berkata "Tampilkan nama customer, produk, dan harga untuk produk yang harganya kurang dari 15000."
SELECT customer_name, product, price
FROM sales
WHERE price < 15000;
