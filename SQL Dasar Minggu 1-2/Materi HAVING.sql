Sekarang kita masuk materi yang sangat penting setelah GROUP BY.

Apa bedanya WHERE dan HAVING?

Ini wajib kamu pahami:
WHERE
Digunakan untuk memfilter baris data sebelum dikelompokkan.

HAVING
Digunakan untuk memfilter hasil setelah dikelompokkan.

Contoh WHERE
Misalnya:
Ambil hanya transaksi dengan quantity > 10, lalu kelompokkan berdasarkan kategori.
SELECT category,
SUM(quantity) AS total_quantity
FROM sales
WHERE quantity > 10
GROUP BY category;

Urutannya:
Data awal
   ↓
WHERE quantity > 10
   ↓
GROUP BY category
   ↓
SUM(quantity)
Contoh HAVING

Sekarang manager bertanya:
"Tampilkan kategori yang total quantity-nya lebih dari 100."

Kita tidak bisa menggunakan:
WHERE SUM(quantity) > 100

❌ Salah.

Karena SUM(quantity) baru dihitung setelah data dikelompokkan.
Gunakan:
SELECT category,
SUM(quantity) AS total_quantity
FROM sales
GROUP BY category
HAVING SUM(quantity) > 100;

Urutannya:
Data awal
   ↓
GROUP BY category
   ↓
SUM(quantity)
   ↓
HAVING total > 100
  
Rumus sederhana:
WHERE  → filter ROWS sebelum GROUP BY
HAVING → filter GROUPS setelah GROUP BY

Contoh:
SELECT product,
SUM(quantity) AS total_quantity
FROM sales
WHERE price > 10000
GROUP BY product
HAVING SUM(quantity) > 30;

Artinya:

Ambil transaksi dengan harga > 10.000
Kelompokkan berdasarkan produk
Hitung total quantity
Tampilkan hanya produk dengan total quantity > 30

Ini sudah mulai seperti analisis Data Analyst di dunia nyata.
