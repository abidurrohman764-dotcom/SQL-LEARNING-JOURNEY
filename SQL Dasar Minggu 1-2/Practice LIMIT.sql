Soal 1
Tampilkan 5 transaksi pertama dari tabel sales.
SELECT *
FROM sales
LIMIT 5;

Soal 2
Tampilkan 3 transaksi dengan quantity terbesar.
SELECT *
FROM sales
ORDER BY quantity DESC
LIMIT 3;

Soal 3
Tampilkan 5 transaksi dengan harga termurah.
SELECT *
FROM sales
ORDER BY price ASC
LIMIT 5;

Soal 4
Manager ingin melihat: "customer, produk, dan harga dari 3 transaksi dengan harga tertinggi".
SELECT customer_name, product, price
FROM sales
ORDER BY price DESC
LIMIT 3;

Soal 5
Manager berkata: "Tampilkan 5 transaksi kategori Sembako dengan quantity terbesar".
SELECT *
FROM sales
WHERE category = 'Sembako'
ORDER BY quantity DESC
LIMIT 5;
