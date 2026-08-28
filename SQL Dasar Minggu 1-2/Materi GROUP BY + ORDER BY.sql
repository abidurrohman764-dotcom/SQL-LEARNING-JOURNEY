Sekarang kita akan membuat hasil analisismu lebih berguna.

Misalnya kamu sudah punya:
SELECT product,
SUM(quantity) AS total_quantity
FROM sales
GROUP BY product;

Hasilnya mungkin belum terurut.
Padahal manager biasanya bertanya:

"Produk mana yang paling banyak terjual?"

Maka kita perlu mengurutkan hasilnya.
SELECT product,
SUM(quantity) AS total_quantity
FROM sales
GROUP BY product
ORDER BY total_quantity DESC;

Sekarang produk dengan quantity terbesar berada di paling atas.

Urutan penting query
Sekarang kamu punya pola:

SELECT
FROM
WHERE
GROUP BY
ORDER BY
LIMIT;

Urutan ini penting !!!!

Contoh lengkap:
SELECT category,
SUM(quantity) AS total_quantity
FROM sales
WHERE price > 10000
GROUP BY category
ORDER BY total_quantity DESC
LIMIT 3;

Cara berpikirnya:
1. FROM sales          → ambil sumber data
2. WHERE               → filter data
3. GROUP BY            → kelompokkan data
4. SUM()               → lakukan perhitungan
5. ORDER BY            → urutkan hasil
6. LIMIT               → ambil jumlah tertentu
