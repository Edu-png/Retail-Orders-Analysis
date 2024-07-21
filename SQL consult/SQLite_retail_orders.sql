-- Depois de importar a tabela orders_process, vamos as perguntasdemo

-- 1. Encontre os 10 produtos que geram mais receita;

SELECT * FROM orders_process;

-- Agrupando:

SELECT product_id, SUM(sale_price) AS sales
FROM orders_process
GROUP BY product_id
ORDER BY sales DESC
LIMIT 10;

-- Com isso sabemos o top 10 produtos!


-- 2. Encontre os 5 produtos mais vendidos em cada região;

WITH cte AS (
    SELECT region, product_id, SUM(sale_price) AS sales
    FROM orders_process
    GROUP BY region, product_id
)
SELECT region, product_id, sales
FROM (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY region ORDER BY sales DESC) AS rn
    FROM cte
) A
WHERE rn <= 5;

--  3. Encontre a comparação de crescimento mês a mês para as vendas de 2022 e 2023, por exemplo: jan 2022 vs jan 2023;

SELECT DISTINCT strftime('%Y', order_date) AS year
FROM orders_process;

WITH cte AS (
    SELECT 
        strftime('%Y', order_date) AS order_year,
        strftime('%m', order_date) AS order_month,
        SUM(sale_price) AS sales
    FROM orders_process
    GROUP BY strftime('%Y', order_date), strftime('%m', order_date)
)
SELECT 
    order_month,
    SUM(CASE WHEN order_year = '2022' THEN sales ELSE 0 END) AS sales_2022,
    SUM(CASE WHEN order_year = '2023' THEN sales ELSE 0 END) AS sales_2023
FROM cte
GROUP BY order_month
ORDER BY order_month;

-- Consulta para encontrar o mês com maiores vendas para cada categoria
WITH cte AS (
    SELECT 
        category,
        strftime('%Y-%m', order_date) AS order_year_month,
        SUM(sale_price) AS sales
    FROM orders_process
    GROUP BY category, strftime('%Y-%m', order_date)
)
SELECT 
    category, 
    order_year_month, 
    sales
FROM cte AS main
WHERE sales = (SELECT MAX(sales) FROM cte AS sub WHERE sub.category = main.category)
ORDER BY category, order_year_month;

-- Consulta para encontrar a subcategoria com o maior crescimento de lucro em 2023 em comparação com 2022
WITH cte AS (
    SELECT 
        sub_category,
        strftime('%Y', order_date) AS order_year,
        SUM(sale_price) AS sales
    FROM orders_process
    GROUP BY sub_category, strftime('%Y', order_date)
),
cte2 AS (
    SELECT 
        sub_category,
        SUM(CASE WHEN order_year = '2022' THEN sales ELSE 0 END) AS sales_2022,
        SUM(CASE WHEN order_year = '2023' THEN sales ELSE 0 END) AS sales_2023
    FROM cte
    GROUP BY sub_category
)
SELECT 
    sub_category,
    (sales_2023 - sales_2022) AS growth
FROM cte2
ORDER BY growth DESC
LIMIT 1;
