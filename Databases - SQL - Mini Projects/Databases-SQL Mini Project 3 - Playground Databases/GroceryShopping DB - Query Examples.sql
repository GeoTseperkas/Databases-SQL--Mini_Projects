USE groceryShopping;

SELECT * 
FROM grocery_list
WHERE item_category IS NULL;

SELECT *
FROM grocery_list
WHERE item_category LIKE 'Fruit%';

SELECT *
FROM grocery_list
WHERE item_name IN ('Avocado', 'Milk');

SELECT date, amount_spent
FROM grocery_visit
WHERE amount_spent > 15
UNION
SELECT date, amount_spent
FROM dept_store_visit
WHERE amount_spent > 15;

SELECT *
FROM dept_store_visit dept
INNER JOIN grocery_list
ON dept.date = grocery_list.date
WHERE grocery_list.item_name
IN ('Flour', 'Yeast', 'Eggs');

SELECT AVG(amount_spent) AS avg_amount_spent
FROM
(
    SELECT DISTINCT dept.date, amount_spent
    FROM dept_store_visit dept
    INNER JOIN grocery_list
    ON dept.date = grocery_list.date
    WHERE grocery_list.item_name
    IN ('Flour', 'Yeast', 'Eggs')
) AS avg ;