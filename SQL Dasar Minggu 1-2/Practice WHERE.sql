Soal 1
Manager ingin melihat semua transaksi yang quantity-nya lebih dari 10.
SELECT *
FROM sales
WHERE quantity > 10;

Soal 2
Manager ingin melihat transaksi yang harga produknya lebih dari 15.000.
SELECT *
FROM sales
WHERE price > 15000;

Soal 3
Manager ingin melihat transaksi untuk produk "Beras" saja.
SELECT *
FROM sales
WHERE product = 'Beras';

Soal 4
Manager ingin melihat transaksi yang quantity-nya tepat 10.
SELECT *
FROM sales
WHERE quantity = 10;

Soal 5
Manager berkata "Saya ingin melihat nama customer, produk, dan quantity untuk transaksi yang quantity-nya lebih dari 15."
SELECT customer_name, product, quantity
FROM sales
WHERE quantity > 15;
