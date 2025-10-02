# Walmart_sales

This project is an end-to-end Power Bi Dashboard designed to extract critical business insights from Walmart sales data. We utilize Python for data processing and analysis, SQL for querying, and structured problem-solving techniques to solve key business questions. The project is ideal for data analysts looking to develop skills in data manipulation, SQL querying, and dashboard design using Power BI.

Project Steps

1. Set Up the Environment
Tools Used: Visual Studio Code (VS Code), Python, SQL (MySQL), Power BI
Goal: Create a structured workspace within VS Code and organize project folders for smooth development and data handling.

2. Downloaded dataset from Kaggle

3. Install Required Libraries and Load Data Libraries: Install necessary Python libraries using:
pip install pandas numpy 
Loading Data: Read the data into a Pandas DataFrame for initial analysis and transformations.

4. Explore the Data
Goal: Conduct an initial data exploration to understand data distribution, check column names, types, and identify potential issues.
Analysis: Use functions like .info(), .describe(), and .head() to get a quick overview of the data structure and statistics.

5. Data Cleaning 
Removing Duplicates: Identify and remove duplicate entries to avoid skewed results.
Handle Missing Values: Drop rows or columns with missing values if they are insignificant; fill values where essential.
Fix Data Types: Ensure all columns have consistent data types (e.g., dates as datetime, prices as float).
Currency Formatting: Use .replace() to handle and format currency values for analysis.
Validation: Check for any remaining inconsistencies and verify the cleaned data.
Create New Columns: Calculate the Total Amount for each transaction by multiplying unit_price by quantity and adding this as a new column.

6. Load Data into MySQL and Business Problem Solving
    Revenue trends across branches and categories.
    Identifying best-selling product categories.
    Sales performance by time, city, and payment method.
    Analyzing peak sales periods and customer buying patterns.
    Profit margin analysis by branch and category.

7. Designed Power BI dashboard to visualize and analyze key project metrics, providing actionable insights.

Results and Insights

Sales Insights: Key categories, branches with highest sales, and preferred payment methods.
Profitability: Insights into the most profitable product categories and locations.
Customer Behavior: Trends in ratings, payment preferences, and peak shopping hours.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Dashboard :-

   ![Walmart_Dashboard_page-0001 (1)](https://github.com/pranavtitarmare8421-hash/Walmart_sales/blob/200bec487a57e25e67bce12dbb83d3f880e98ff4/Walmart_dashboard.jpg)

