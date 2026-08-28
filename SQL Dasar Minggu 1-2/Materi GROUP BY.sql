Sekarang kita masuk ke salah satu materi PALING PENTING untuk Data Analyst.

Selama ini:
SELECT SUM(quantity)
FROM sales;

menghasilkan satu total untuk seluruh tabel.

Misalnya:
Total quantity = 400
Tapi bagaimana kalau manager bertanya:

"Berapa total barang yang terjual untuk SETIAP produk?"

Nah, di sinilah kita menggunakan:
GROUP BY
  
Contoh
SELECT 
    product,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY product;

Cara berpikirnya:
1. Ambil product
SELECT product

2. Hitung total quantity
SUM(quantity)

3. Kelompokkan berdasarkan produk
GROUP BY product

Hasilnya kira-kira:
product	total_quantity
Beras	...
Mie Instan	...
Kopi	...
Gula	...
Telur	...
  
Analogi sederhana
Bayangkan data awal:

product	quantity
Beras	10
Beras	5
Kopi	7
Kopi	3

Tanpa GROUP BY:

SELECT SUM(quantity)
FROM sales;

Hasil:
25

Semua produk dicampur menjadi satu.

Dengan:
SELECT 
    product,
    SUM(quantity)
FROM sales
GROUP BY product;

Hasil:
Beras → 15
Kopi  → 10
Inilah kekuatan GROUP BY.

Aturan penting GROUP BY !!!!!!!!
Kalau kamu menulis:
SELECT 
    product,
    SUM(quantity)
FROM sales;

Ini bermasalah di SQL standar karena product harus dikelompokkan.

Jadi:

SELECT 
    product,
    SUM(quantity)
FROM sales
GROUP BY product;

✅ Benar.

Rumus sederhananya:
Kalau ada kolom biasa di SELECT + Aggregate Function, biasanya kolom biasa tersebut harus masuk ke GROUP BY.
