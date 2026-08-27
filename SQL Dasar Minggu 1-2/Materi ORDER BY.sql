Sekarang kita belajar mengurutkan data.
  
Misalnya manager berkata:
"Tampilkan semua transaksi dari harga tertinggi."

Kita gunakan:
SELECT *
FROM sales
ORDER BY price DESC;
DESC

Artinya:
Descending = dari besar ke kecil
Contoh:
50000
30000
20000
15000
10000
  
Kalau dari kecil ke besar:
SELECT *
FROM sales
ORDER BY price ASC;

Hasil:

10000
15000
20000
30000
50000
💡 Catatan Kalau tidak menulis ASC, biasanya urutan default adalah naik.
ORDER BY price;
sama seperti:
ORDER BY price ASC;
