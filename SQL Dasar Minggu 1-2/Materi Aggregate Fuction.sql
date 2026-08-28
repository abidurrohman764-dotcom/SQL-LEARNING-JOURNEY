Ini adalah salah satu bagian paling penting dalam SQL untuk Data Analyst.

Selama ini kita hanya:
Menampilkan baris data
Contohnya:
SELECT *
FROM sales;

Sekarang kita akan mulai bertanya:
"Ada berapa transaksi?"
"Berapa total barang yang terjual?"
"Berapa rata-rata quantity?"
"Berapa harga tertinggi?"

Untuk menjawab pertanyaan tersebut, kita menggunakan Aggregate Functions.

1️. COUNT()
Digunakan untuk menghitung jumlah data.
Contoh:
SELECT COUNT(*)
FROM sales;

Artinya:
Hitung jumlah seluruh baris/transaksi dalam tabel sales.

Contoh dengan nama kolom
Misalnya:
SELECT COUNT(customer_name)
FROM sales;
Ini menghitung jumlah data customer_name yang tidak NULL.

Untuk sekarang, pahami dulu perbedaan sederhananya:

COUNT(*)              → menghitung semua baris
COUNT(nama_kolom)     → menghitung nilai yang tidak kosong/NULL
  
2. SUM()
Digunakan untuk menjumlahkan angka.
Misalnya:
Berapa total quantity barang yang terjual?
SELECT SUM(quantity)
FROM sales;

Artinya:
Menjumlahkan semua total quantity dari semua transaksi.

3️⃣ AVG()
Digunakan untuk menghitung rata-rata.
Contoh:
SELECT AVG(quantity)
FROM sales;

Artinya:
Berapa rata-rata quantity dari seluruh transaksi?

4️⃣ MAX()
Mencari nilai terbesar.
SELECT MAX(price)
FROM sales;

Artinya:
Berapa harga tertinggi?

5️⃣ MIN()
Mencari nilai terkecil.
SELECT MIN(price)
FROM sales;

Artinya:
Berapa harga terendah?

Ringkasan Wajib Hafal !!!!!
Function	Fungsi
COUNT()	Menghitung jumlah data
SUM()	Menjumlahkan
AVG()	Menghitung rata-rata
MAX()	Nilai terbesar
MIN()	Nilai terkecil
