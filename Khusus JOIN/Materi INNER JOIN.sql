INNER JOIN digunakan untuk menggabungkan data dari dua tabel yang memiliki data yang cocok.

Contoh:
Tabel sales:
transaction_id,	customer_id,	quantity
T001            C001	        10
T002	          C002	        5

Tabel customers:
customer_id,	customer_name,	city
C001	        Andi	          Jakarta
C002	        Budi	          Bandung

Dengan INNER JOIN, kita bisa mendapatkan:

transaction_id,	customer_name,	quantity
T001	          Andi	          10
T002	          Budi	          5

Jadi kita bisa mengambil informasi dari dua tabel sekaligus.

Struktur dasar INNER JOIN!!!
SELECT kolom_yang_ingin_ditampilkan
FROM tabel_utama
INNER JOIN tabel_kedua
ON tabel_utama.kolom_penghubung = tabel_kedua.kolom_penghubung;

Dalam dataset kita:
FROM sales
INNER JOIN customers
ON sales.customer_id = customers.customer_id;

Bagian paling penting: ON
Perhatikan:
ON sales.customer_id = customers.customer_id
Artinya:
Cocokkan customer_id dari tabel sales dengan customer_id dari tabel customers.

Contoh lengkap
Manager ingin melihat:
ID transaksi
Nama customer
Quantity
  
SELECT 
    sales.transaction_id,
    customers.customer_name,
    sales.quantity
FROM sales
INNER JOIN customers
ON sales.customer_id = customers.customer_id;

Kenapa menggunakan sales. dan customers.?

Karena kedua tabel memiliki kolom:
customer_id

Kalau kita hanya menulis:
customer_id

PostgreSQL bisa bingung:
Customer ID dari tabel mana?

Jadi kita tulis:
sales.customer_id
atau:
customers.customer_id

Ini disebut menentukan asal tabel dari sebuah kolom.

Cara membaca query dari atas ke bawah
SELECT 
    sales.transaction_id,
    customers.customer_name,
    sales.quantity
-> Pilih kolom yang ingin ditampilkan.
  
Kemudian:
FROM sales
-> Mulai dari tabel sales.
  
Kemudian:
INNER JOIN customers
-> Gabungkan dengan tabel customers.

Terakhir:
ON sales.customer_id = customers.customer_id;
-> Hubungkan kedua tabel menggunakan customer_id.

Cara lebih profesional: Table Alias
Nanti di dunia kerja, query JOIN biasanya menggunakan alias tabel supaya lebih pendek.

Contoh:
SELECT 
    s.transaction_id,
    c.customer_name,
    s.quantity
FROM sales AS s
INNER JOIN customers AS c
ON s.customer_id = c.customer_id;

Artinya:
s = sales
c = customers

Jadi:
s.transaction_id
  
sama dengan:
sales.transaction_id
  
Dan:
c.customer_name

sama dengan:
customers.customer_name

Untuk latihan sekarang, kamu boleh menggunakan nama tabel lengkap supaya lebih mudah memahami asal kolomnya.
