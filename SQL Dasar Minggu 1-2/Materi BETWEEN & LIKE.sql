1. BETWEEN
BETWEEN digunakan untuk mencari nilai di dalam suatu rentang.

Misalnya:
Cari transaksi dengan quantity antara 10 sampai 20.

Kamu bisa menulis:
SELECT *
FROM sales
WHERE quantity BETWEEN 10 AND 20;

Artinya:
quantity >= 10
DAN
quantity <= 20
⚠️ Penting
BETWEEN biasanya termasuk batas bawah dan batas atas.

Jadi:
BETWEEN 10 AND 20
akan mencakup:
10 ✅
11 ✅
12 ✅
...
19 ✅
20 ✅
  
Contoh harga
Manager: "Cari produk dengan harga antara Rp10.000 sampai Rp20.000."
SELECT *
FROM sales
WHERE price BETWEEN 10000 AND 20000;

2. LIKE
Sekarang kasus yang berbeda.
Misalnya kita ingin mencari produk yang namanya mengandung kata tertentu.

Gunakan LIKE.
Contoh:
SELECT *
FROM sales
WHERE product LIKE '%Mie%';

% berarti:
karakter apa pun, sebanyak apa pun.
Jadi %Mie% dapat menemukan teks yang mengandung:
Mie
Mie Instan
Mie Goreng
Indomie Mie

tergantung isi datanya.
Contoh lain
Diawali dengan "Mie"
WHERE product LIKE 'Mie%'

Bisa menemukan:
Mie
Mie Instan
Mie Goreng
Tetapi bukan:
Indomie
  
Diakhiri dengan "Instan"
WHERE product LIKE '%Instan'
Bisa menemukan:
Mie Instan
  
Mengandung "i"
WHERE product LIKE '%i%'
Akan mencari data yang mengandung huruf i.

Bedakan BETWEEN dan LIKE
Operator	Digunakan untuk
BETWEEN	Rentang angka/tanggal
LIKE	Mencari pola teks

Contoh:
WHERE price BETWEEN 10000 AND 20000
→ rentang harga.

Sedangkan:
WHERE product LIKE '%Mie%'
→ pola nama produk.
