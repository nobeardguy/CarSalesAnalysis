                                               -- LOADING DATA INTO SQL
CREATE TABLE ecommerce.CarSales( 
  Manufacturer TEXT (20),
  Model VARCHAR (100),
  Engine_size INT (10),        -- I Should've used >> DECIMAL(4, 1) to include decimals
  Fuel_type TEXT(50),
  YoM INT(10),
  Mileage INT(50),
  Price INT(50)
);

LOAD DATA LOCAL INFILE  "C:/Users/ADMIN/OneDrive/Desktop/car_sales_data.csv"
INTO TABLE ecommerce.carsales
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
                                     -- CREATED A VIEW TO AVOID LOSS OF DATA FROM THE ORIGINAL TABLE
CREATE VIEW CarSales_Analysis AS
SELECT 
    *,
					-- 1. Car Age: Helps in identifying if older cars have higher mileage/lower price
    (YEAR(CURDATE()) - `YoM`) AS Car_Age,

                    -- 2. Price Segmentation:
    CASE 
        WHEN Price < 10000 THEN 'Budget'
        WHEN Price BETWEEN 10000 AND 30000 THEN 'Mid-Range'
        WHEN Price BETWEEN 30000 AND 60000 THEN 'Luxury'
        ELSE 'Premium'
    END AS Price_Segment,

				-- 3. Mileage Tier: Used to analyze car wear and tear
    CASE 
        WHEN Mileage < 30000 THEN 'Low Mileage'
        WHEN Mileage BETWEEN 30000 AND 80000 THEN 'Moderate'
        WHEN Mileage BETWEEN 80000 AND 150000 THEN 'High'
        ELSE 'Very High'
    END AS Mileage_Tier,

				 -- 4. Engine Performance Category 
    CASE 
        WHEN Engine_size < 1.4 THEN 'Small/Economy'
        WHEN Engine_size BETWEEN 1.4 AND 2.5 THEN 'Standard'
        ELSE 'High Performance'
    END AS Engine_Category
FROM carsales;

                           -- Changed VW to Volkswagen for familiarity
UPDATE carsales_analysis                            
SET Manufacturer = 'VolksWagen'
WHERE Manufacturer  = 'VW';

            -- Checking market dominance by manufacturer
SELECT 
    Manufacturer, 
    COUNT(*) as Total_Cars,
    ROUND(AVG(Price), 2) as Avg_Price,
    ROUND(AVG(Mileage), 0) as Avg_Mileage
FROM carsales
GROUP BY Manufacturer
ORDER BY Total_Cars DESC;





                   




