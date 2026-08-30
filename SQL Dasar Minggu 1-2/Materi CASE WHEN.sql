Bayangkan manager berkata:
"Saya ingin mengelompokkan transaksi berdasarkan quantity."
Aturannya:
Quantity >= 20 → High Sales
Quantity >= 10 → Medium Sales
Selain itu → Low Sales

Kita bisa membuat kategori baru menggunakan CASE WHEN.
Contohnya:
SELECT
    product,
    quantity,
    CASE
        WHEN quantity >= 20 THEN 'High Sales'
        WHEN quantity >= 10 THEN 'Medium Sales'
        ELSE 'Low Sales'
    END AS sales_category
FROM sales;

Cara membaca CASE WHEN
Perhatikan:
CASE
    WHEN quantity >= 20 THEN 'High Sales'

Artinya:
JIKA quantity lebih besar atau sama dengan 20, MAKA beri kategori High Sales.

Kemudian:
WHEN quantity >= 10 THEN 'Medium Sales'

Artinya:
Kalau kondisi sebelumnya tidak terpenuhi, tetapi quantity minimal 10 → Medium Sales.

Terakhir:
ELSE 'Low Sales'

Artinya:
Selain kondisi di atas → Low Sales.

Dan:
END
  
Artinya:
Menutup CASE.

HAL PENTING: URUTAN WHEN
SQL membaca kondisi dari atas ke bawah.

Contoh yang benar:
CASE
    WHEN quantity >= 20 THEN 'High'
    WHEN quantity >= 10 THEN 'Medium'
    ELSE 'Low'
END
Kenapa >= 20 harus di atas?

Karena kalau kamu menulis:
CASE
    WHEN quantity >= 10 THEN 'Medium'
    WHEN quantity >= 20 THEN 'High'
END

Maka quantity 25 sudah masuk kondisi pertama:

25 >= 10 ✅

Jadi dia tidak akan pernah mencapai kondisi >= 20.

Aturan penting: dari kondisi terbesar/lebih spesifik ke kondisi yang lebih umum.
