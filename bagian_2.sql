-- Muhammad Farhan Al Hafizh
-- Jawaban Bagian 2 

-- 1.Produk Terlaris: Tulis kueri SQL untuk mengidentifikasi 5 produk terlaris berdasarkan total pendapatan (total_price).
SELECT product_name, SUM(total_price) AS total_sales
FROM transaction_gab
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;

-- 2. Pelanggan Paling Berharga: Tulis kueri SQL untuk menemukan 10 pelanggan teratas berdasarkan total uang yang mereka habiskan. 
SELECT customer_id, SUM(total_price) AS total_purchase
FROM transaction_gab
GROUP BY customer_id
ORDER BY total_purchase DESC
LIMIT 10;

-- 3. Tren Penjualan Bulanan: Tulis kueri SQL untuk menghitung total pendapatan per bulan.
SELECT month,
SUM(total_price) AS total_revenue
FROM transaction_gab
GROUP BY month
ORDER BY month ASC;

