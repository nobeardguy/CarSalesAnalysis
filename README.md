  # Automotive Market & Price Analysis Dashboard
## 📌 Project Overview
![Dashboard Demo](./Dashboard/DashBoard2_GIF.gif)
This was an end-to-end data analytics project using SQL, DAX, and Power BI focusing on analyzing a dataset of 50,000+ car sales records to identify the drivers of market value. By cleaning raw data with SQL and building a high-performance Power BI dashboard, I transformed messy data into actionable insights regarding Depreciation Curves, Engine Performance, and Fuel Type Popularity.
## 🛠️ Tech Stack
-	Data Cleaning: SQL (MySQL) - Handling data types, NULL values, and feature engineering.
-	Data Modeling: Power BI - Creating a Star Schema with a dedicated Calendar Table.
-	Analytics: I used DAX  to build custom metrics like YoY Depreciation and Price Segments.
-	UI/UX: Power BI - Implementing page navigation and high-contrast professional themes.
## 📊 Key Insights & Dashboard Pages: The final product is a 2-Page Interactive Report:
## Page 1: Market Overview
-	Executive KPIs: Instant view of Total Inventory Value, Average Listing Price, and Total number of cars sold over the period.
-	Fuel Type Analysis:  A Donut chart showing the market split between Petrol, Diesel, and Hybrid.
-	Manufacturer Treemap: Identifying brand dominance in the current market.
-	A Price-segment Bar Chart: showing volume of cars based on their price segments.
## Page 2: Technical & Depreciation Deep-Dive
-	The Price of Power: Clustered Column charts showing how Price scales with Engine Size across different Fuel Types.
-	Depreciation Analysis: Scatter plots illustrating the correlation between Mileage and Resale Value.
-	Model Comparison: A "Top N" filter to identify the most expensive models based on specific technical specs.
  ## I also included:
-	Navigation Buttons: Seamlessly toggle between "Overview" and "Technical Analysis."
-	Custom Dark Theme: A premium Navy-and-Cyan UI designed for readability.
________________________________________
##  Business Intelligence & Market Value
This project provides data-driven answers to the following critical questions:
### 1. At what point does a car's value drop most significantly?
-	**The Analysis:** Using the Price vs. Mileage Scatter Plot and the Car Age Line Chart.
- **Value for the Buyer:** Helps them find the "Sweet Spot"—a car that has already taken its biggest depreciation hit but still has plenty of life left (e.g., buying at 4 years old instead of new).
- **Value for the Seller:** Helps dealerships decide when to "offload" inventory. If a car is approaching a major mileage milestone (like 100k miles) where the value drops 20%, they know to price it aggressively to sell it fast.
### 2. Does a larger engine size always guarantee a higher resale value?
- **The Analysis:** Comparing Engine Size vs. Price using the Clustered Column chart.
- **Value for the Buyer:** They can see if paying for a 3.0L engine actually adds value for the future, or if a 2.0L model holds its value just as well, saving them money upfront and on fuel.
- **Value for the Seller:** Helps in Inventory Sourcing. If the data shows that 1.6L Hybrid models are selling at a premium compared to 2.0L Petrol models, the dealer should prioritize buying more Hybrids for their lot.
### 3. How does the fuel type affect the marketability of older vehicles?
- **The Analysis:** Using the Fuel Type Donut Chart filtered by Year of manufacture.
- **Value for the Buyer:** Provides insight into "Future-Proofing." If the trend shows Diesel prices falling faster than Hybrids for cars made after 2015, a buyer might choose a Hybrid to ensure better resale value in three years.
- **Value for the Seller:** Informs marketing strategy. If there is a high volume of Petrol cars but they are moving slowly, the seller can create a "Fuel Efficiency" promotion to target budget-conscious buyers.
### 4. Which manufacturers dominate the 'Budget' vs. 'Premium' segments?
- **The Analysis:** Using the Manufacturer Treemap and the Price Segment Slicer.
- **Value for the Buyer:** Quickly narrows down which brands to look at based on their budget without having to browse thousands of irrelevant listings.
- **Value for the Seller:** Competitive Benchmarking. A Ford dealer can use this to see how their prices compare to Toyota or VW in the same segment, allowing them to adjust their prices to stay competitive.


## 🚀 How to Use
1.	Clone the repository.
2.	Run the provided SQL Script to set up the database.
3.	Open the .pbix file to explore the interactive visualizations.


