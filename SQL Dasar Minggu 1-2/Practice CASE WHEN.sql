Soal 1
Tampilkan: product, quantity
Buat kolom baru bernama: quantity_category
Dengan aturan:
quantity >= 20 → 'High'
quantity >= 10 → 'Medium'
Selain itu → 'Low'
  
SELECT product,
quantity,
CASE
	WHEN quantity >= 20 THEN 'High'
	WHEN quantity >= 10 THEN 'Medium'
	ELSE 'Low'
END AS quantity_category
FROM sales;

Soal 2
Tampilkan: product, price
Buat kolom baru: price_category
Dengan aturan:
price >= 20000 → 'Expensive'
price >= 10000 → 'Medium'
Selain itu → 'Cheap'

SELECT product,
price,
CASE
	WHEN price >= 20000 THEN 'Expensive'
	WHEN price >= 10000 THEN 'Medium'
	ELSE 'Cheap'
END AS price_category
FROM sales;

Soal 3
Manager ingin melihat: customer_name, product, payment_method
Buat kolom baru: payment_type
Dengan aturan:
Cash → 'Offline'
Selain Cash → 'Digital'

SELECT customer_name,
product,
payment_method,
CASE
	WHEN payment_method = 'Cash' THEN 'Offline'
	ELSE 'Digital'
END AS payment_type
FROM sales;

Soal 4
Manager ingin mengelompokkan transaksi berdasarkan harga:
price >= 20000 → Premium
price >= 15000 → Standard
Selain itu → Budget
Tampilkan:
product
price
kategori baru bernama price_segment

SELECT product,
price,
CASE
    WHEN price >= 20000 THEN 'Premium'
    WHEN price >= 15000 THEN 'Standard'
    ELSE 'Budget'
END AS price_segment
FROM sales;

Soal 5 
Manager ingin melihat: product, quantity, price
Kemudian buat dua kategori baru sekaligus: Kategori, Quantity
quantity >= 20 → High
Selain itu → Low
Nama kolom:
quantity_status

Kategori Harga
price >= 15000 → Expensive
Selain itu → Cheap
Nama kolom:
price_status

SELECT product,
quantity,
price,
CASE
	WHEN quantity >= 20 THEN 'High'
	ELSE 'Low'
END AS quantity_status,

CASE
	WHEN price >= 15000 THEN 'Expensive'
	ELSE 'Cheap'
END AS Price_status
FROM sales;
