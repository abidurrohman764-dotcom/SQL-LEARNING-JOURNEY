Misalnya:
"Tampilkan transaksi kategori Sembako yang quantity-nya lebih dari 10."

Ada 2 kondisi:
category = Sembako
quantity > 10

Kita menggunakan AND.
SELECT *
FROM sales
WHERE category = 'Sembako'
AND quantity > 10;

Artinya:
Kedua kondisi harus terpenuhi.

1. AND
Misalnya:
WHERE price > 10000
AND quantity > 10

Data harus memenuhi:
price > 10000     ✅
quantity > 10     ✅
Kalau salah satunya tidak terpenuhi maka tidak masuk hasil.

2. OR
Sekarang manager berkata:
"Tampilkan transaksi produk Beras atau Gula."

Kita menggunakan:
SELECT *
FROM sales
WHERE product = 'Beras'
OR product = 'Gula';

Artinya:
Data boleh memenuhi salah satu kondisi.
Jadi:
Beras → masuk ✅
Gula  → masuk ✅
Kopi  → tidak masuk ❌
  
⚠️ Perbedaan yang harus kamu pahami
  
AND
SEMUA kondisi harus benar.
A DAN B
  
OR
Minimal salah satu kondisi benar.
A ATAU B
  
Contoh Data Analyst
Manager:
"Cari transaksi Sembako dengan quantity lebih dari 10."

SELECT customer_name, product, quantity
FROM sales
WHERE category = 'Sembako'
AND quantity > 10;

Manager:
"Cari transaksi Beras atau Telur."

SELECT customer_name, product, quantity
FROM sales
WHERE product = 'Beras'
OR product = 'Telur';
