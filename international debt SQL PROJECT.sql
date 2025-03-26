SELECT* FROM international_debt id ;
 
CREATE TABLE international_debt2 AS
SELECT * FROM international_debt ;
 
SELECT * FROM international_debt2;

-- total amount of debt owned by all countries in the dataset

SELECT (sum(debt)/1000000)::numeric(20,2) AS total_debt
FROM international_debt2;

--disctinct countries 

SELECT DISTINCT country_name
FROM  international_debt2;

-- distinct type of debt indicators and what they represent

SELECT DISTINCT indicator_name , indicator_code
FROM  international_debt2;

--country with the highest debt

SELECT country_name,max(debt) AS max_debt
FROM  international_debt2
GROUP by country_name
ORDER BY max_debt DESC
LIMIT 1;

-- average debt

SELECT avg(debt) AS avg_debt
FROM international_debt2;

--country with highest amount of principal repayments

SELECT country_name, min(debt) AS min_debt
FROM  international_debt2
GROUP by country_name
ORDER BY min_debt DESC
LIMIT 1;

-- most common debt indicator

SELECT  indicator_name, count(*)
FROM international_debt2 
GROUP BY indicator_name  
ORDER BY count  DESC 
LIMIT 1;



