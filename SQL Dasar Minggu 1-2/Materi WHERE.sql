Apa fungsi WHERE?
WHERE digunakan untuk:
menyaring/filter data berdasarkan kondisi tertentu.
Jadi pola berpikirnya sekarang:

SELECT → data apa yang ingin dilihat?
FROM   → dari tabel mana?
WHERE  → data yang mana yang ingin dipilih?
  
Contoh
Harga lebih dari 15.000
SELECT *
FROM sales
WHERE price > 15000;

Produk tertentu
SELECT *
FROM sales
WHERE product = 'Beras';

Quantity tepat 20
SELECT *
FROM sales
WHERE quantity = 20;

Perhatikan bahwa untuk teks kita menggunakan tanda kutip:
product = 'Beras'

Sedangkan angka tidak menggunakan kutip:
quantity = 20
