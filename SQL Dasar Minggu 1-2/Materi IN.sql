Sekarang kita akan membuat query OR menjadi lebih pendek.

Tadi:
SELECT *
FROM sales
WHERE product = 'Beras'
OR product = 'Gula'
OR product = 'Kopi';

Bisa ditulis:
SELECT *
FROM sales
WHERE product IN ('Beras', 'Gula', 'Kopi');

Artinya:
Ambil transaksi yang produknya Beras, Gula, atau Kopi.

Ini sangat sering digunakan Data Analyst.
Contoh lain
SELECT *
FROM sales
WHERE category IN ('Sembako', 'Minuman');

Daripada:
WHERE category = 'Sembako'
OR category = 'Minuman'

IN jauh lebih rapi.
