Sekarang kita belajar mengambil jumlah data tertentu.

Misalnya manager berkata:
"Tampilkan 5 transaksi pertama."
Gunakan:
SELECT *
FROM sales
LIMIT 5;

LIMIT 5 artinya:
Ambil maksimal 5 baris data.

Kombinasi penting: ORDER BY + LIMIT
Ini sangat sering digunakan Data Analyst.
Misalnya:
"Tampilkan 5 transaksi dengan harga tertinggi."
SELECT *
FROM sales
ORDER BY price DESC
LIMIT 5;

Urutannya:
1️⃣ ORDER BY → Urutkan harga tertinggi
2️⃣ LIMIT → Ambil 5 data
Hasilnya adalah Top 5 transaksi berdasarkan harga.

Contoh lain
3 quantity terbesar
SELECT *
FROM sales
ORDER BY quantity DESC
LIMIT 3;

10 harga termurah
SELECT *
FROM sales
ORDER BY price ASC
LIMIT 10;

Pola penting !!!!!
SELECT ...
FROM ...
WHERE ...
ORDER BY ...
LIMIT ...;

Perhatikan urutannya. Untuk sekarang, ini pola SQL yang perlu kamu biasakan.
