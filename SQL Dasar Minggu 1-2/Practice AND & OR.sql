Soal 1
Tampilkan semua transaksi yang category sembako dan quantity lebih dari 10
SELECT *
FROM sales
WHERE category = 'Sembako'
AND quantity > 10;

Soal 2
Tampilkan semua transaksi yang price lebih dari 15000 dan quantity lebih dari 10
SELECT *
FROM sales
WHERE price > 15000
AND quantity > 10;

Soal 3
Tampilkan semua transaksi yang produknya beras atau gula
SELECT *
FROM sales
WHERE product = 'Beras'
OR product = 'Gula';

Soal 4
Tampilkan semua transaksi yang category minuman atau category makanan
SELECT *
FROM sales
WHERE category ='Minuman'
OR category ='Makanan';

Soal 5
Manager berkata:
"Saya ingin melihat customer, produk, quantity, dan price 
untuk transaksi Sembako yang quantity-nya minimal 10 dan harga produknya lebih dari 15.000."
SELECT customer_name, product, quantity, price
FROM sales
WHERE category = 'Sembako'
AND quantity > 10 
AND price > 15000;

Soal 6
Manager berkata:
"Tampilkan semua transaksi Beras atau Mie Instan yang quantity-nya lebih dari 10."
SELECT *
FROM sales
WHERE (product = 'Beras' OR product = 'Mie Instan')
AND
quantity > 10;
