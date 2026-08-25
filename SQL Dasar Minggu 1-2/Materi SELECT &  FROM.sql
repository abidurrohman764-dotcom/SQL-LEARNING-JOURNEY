SELECT artinya:
"Saya ingin mengambil/menampilkan data apa?"

Contoh
SELECT produk
FROM sales;

SELECT product
Artinya:
Saya ingin mengambil kolom product.

FROM artinya:
"Data tersebut diambil dari tabel mana?"

Jadi:
SELECT product
FROM sales;

dibaca:
Tampilkan kolom product dari tabel sales.
Ini adalah cara berpikir yang harus kamu biasakan.

SELECT = APA yang mau saya lihat?
FROM   = DARI MANA datanya?

Misalnya kita ingin melihat:
product
category
price

Maka:
SELECT product, category, price
FROM sales;

Perhatikan koma
SELECT product, category, price
Koma digunakan untuk memisahkan kolom.

Bagaimana kalau ingin melihat SEMUA kolom?
Gunakan:
SELECT *
FROM sales;

* berarti:
semua kolom

⚠️ Tapi sebagai Data Analyst...

SELECT * memang berguna ketika kamu sedang mengecek isi data.
Tetapi ketika membuat analisis, lebih baik menyebutkan kolom yang memang dibutuhkan.

Contoh:
SELECT product, quantity, price
FROM sales;

lebih jelas daripada:
SELECT *
FROM sales;

🧠 Cara berpikir Data Analyst
Misalnya manager bertanya:
"Saya ingin melihat produk dan jumlah barang yang terjual."
Jangan langsung berpikir syntax.

Berpikir dulu:
Apa yang dibutuhkan?
product ✅
quantity ✅
category ❌
price ❌

Baru buat:
SELECT product, quantity
FROM sales;

Inilah kebiasaan yang akan kita bangun.
