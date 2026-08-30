Sekarang kita belajar cara mencari nilai yang unik/tidak duplikat.

Misalnya tabel sales memiliki data:
product
Beras
Beras
Kopi
Kopi
Gula

Kalau kita menjalankan:

SELECT product
FROM sales;
Hasilnya:
Beras
Beras
Kopi
Kopi
Gula

Ada data yang berulang.

Kalau kita ingin melihat produk unik saja, gunakan:

DISTINCT
SELECT DISTINCT product
FROM sales;
Hasil:
Beras
Kopi
Gula
  
📌 Contoh lain
Metode pembayaran unik
SELECT DISTINCT payment_method
FROM sales;
Mungkin hasilnya:
Cash
QRIS
Debit
  
📌 DISTINCT untuk beberapa kolom

Misalnya:
SELECT DISTINCT category, payment_method
FROM sales;

Ini mencari kombinasi unik antara:
category + payment_method
Contohnya:
category	payment_method
Sembako	Cash
Sembako	QRIS
Minuman	Cash
  
Kapan Data Analyst menggunakan DISTINCT?

Contohnya ketika ingin mengetahui:
Produk apa saja yang tersedia?
Customer unik siapa saja?
Metode pembayaran apa saja yang digunakan?
Berapa jumlah kategori yang ada?
