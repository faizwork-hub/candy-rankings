SELECT *
FROM candy_data;

-- total candy
SELECT COUNT(competitorname) AS Total_Candy
FROM candy_data;

-- Which candies have the highest win percentage? What do they have in common?
SELECT *
FROM candy_data
ORDER BY winpercent DESC
LIMIT 3;
# have chocolate, peanutyalmondy, high sugar percent, high price, high win chance

-- Are more expensive candies more popular? What about sugary candies?
SELECT *
FROM candy_data
ORDER BY pricepercent DESC;
# NO

SELECT *
FROM candy_data
ORDER BY sugarpercent DESC;
# YES most of time

-- If you had to pick 3 candies to give out in Halloween, which would they be?
SELECT *
FROM candy_data
WHERE sugarpercent > 0.8 OR winpercent > 60 AND pricepercent < 0.5
ORDER BY pricepercent
LIMIT 3;

-- Find candies with sugarpercent greater than 0.8
SELECT *
FROM candy_data
WHERE sugarpercent > 0.8
ORDER BY sugarpercent DESC
LIMIT 5;

-- Find candies where winpercent is above 50 and pricepercent is below 0.7.
SELECT *
FROM candy_data
WHERE pricepercent > 0.7
ORDER BY pricepercent
LIMIT 5;

-- How does win percentage change with sugar content
SELECT 
  CASE 
    WHEN sugarpercent < 0.3 THEN 'Low Sugar'
    WHEN sugarpercent BETWEEN 0.3 AND 0.7 THEN 'Medium Sugar'
    ELSE 'High Sugar'
  END AS sugar_level,
  AVG(winpercent) AS avg_winpercent
FROM candy_data
GROUP BY sugar_level;

-- What is the relationship between price and popularity?
SELECT 
  CASE 
    WHEN pricepercent < 0.4 THEN 'Low Price'
    WHEN pricepercent BETWEEN 0.4 AND 0.7 THEN 'Medium Price'
    ELSE 'High Price'
  END AS price_range,
  AVG(winpercent) AS avg_winpercent
FROM candy_data
GROUP BY price_range;


