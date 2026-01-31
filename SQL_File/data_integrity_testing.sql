 -- TESTING THE DATA INTEGRITY
SELECT * FROM ecommerce.carsales; -- Original data

SELECT * FROM carsales_analysis;  -- The View

select count(*) 
from carsales_analysis;

select MIN(YoM) FROM carsales;
SELECT max(YoM) from carsales;

DESCRIBE carsales;


