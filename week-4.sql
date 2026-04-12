SELECT * FROM products 
WHERE price IN (30, 40, 50);

SELECT * FROM products
WHERE price > 10 
  AND price < 30;

SELECT * FROM products 
WHERE price BETWEEN 11 AND 29;

SELECT * FROM products 
WHERE price!= IN (30,40,50);