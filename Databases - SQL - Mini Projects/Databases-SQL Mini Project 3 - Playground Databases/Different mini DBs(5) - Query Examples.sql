USE Births;

SELECT County_of_Residence, COUNT(*)
FROM BirthData
WHERE Ave_Age_of_Mother < 25
GROUP BY County_of_Residence;

USE Baseball;

SELECT venueCity, outcomeDescription, COUNT(*) AS Count
FROM Games
GROUP BY venueCity, outcomeDescription
HAVING Count < 10;

USE Kickstarter;

SELECT name, goal, currency
FROM ProjectData
WHERE state = "successful"
AND launched > '2014-01-01' 
AND launched < '2015-01-01';

USE liquorSales;

SELECT item_description, ROUND(SUM(volume_sold_gallons),2) AS gallons_sold
FROM finance_liquor_sales 
GROUP BY item_description
ORDER BY gallons_sold DESC;

SELECT store_name, store_location, ROUND(SUM(volume_sold_gallons),2) AS gallons_sold
FROM finance_liquor_sales
GROUP BY store_name, store_location
ORDER BY gallons_sold DESC