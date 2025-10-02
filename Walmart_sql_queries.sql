use walmart;
SELECT * FROM walmart_clean_data;

 -- BUSINESS PROBLEMS--
 /* 1) Question: What are the different payment methods, and how many transactions and
	items were sold with each method?
	● Purpose: This helps understand customer preferences for payment methods, aiding in
	payment optimization strategies.
*/

SELECT payment_method, 
COUNT(payment_method) as no_payment , 
SUM(quantity) as total_quantity
FROM walmart_clean_data
GROUP BY payment_method;


/* 2) Question: Which category received the highest average rating in each branch?
	● Purpose: This allows Walmart to recognize and promote popular categories in specific
	 branches, enhancing customer satisfaction and branch-specific marketing.
*/

SELECT Branch, category, 
AVG(rating) as avg_rating 
FROM walmart_clean_data
GROUP BY Branch, category;


/* 3)Question: How many items were sold through each payment method?
 ● Purpose: This helps Walmart track sales volume by payment type, providing insights
 into customer purchasing habits.
*/

SELECT payment_method, SUM(quantity) as total_quantity
from walmart_clean_data
GROUP BY payment_method;


/* 4)Question: What are the average, minimum, and maximum ratings for each category in
	each city?
	● Purpose: This data can guide city-level promotions, allowing Walmart to address
	regional preferences and improve customer experiences.
*/

SELECT category, city, 
AVG(rating) as avg_rating, 
MAX(rating) as max_rating, 
MIN(rating) as min_rating
from walmart_clean_data
GROUP BY category, city;


/* 5)Question: What is the total profit for each category, ranked from highest to lowest?
	● Purpose: Identifying high-profit categories helps focus efforts on expanding these
	products or managing pricing strategies effectively.
*/

SELECT category,
SUM(total) as total_revenue, 
SUM(total * profit_margin) as total_profit
from walmart_clean_data
GROUP BY category
ORDER BY total_profit DESC;


/* 6)Question: What is the most frequently used payment method in each branch?
	● Purpose: This information aids in understanding branch-specific payment preferences,
	potentially allowing branches to streamline their payment processing systems
*/

SELECT Branch,
payment_method as preferred_pay_method,
COUNT(payment_method) as total_transaction,
RANK() OVER ( PARTITION BY Branch ORDER BY COUNT(payment_method) DESC) as "Rank"
from walmart_clean_data
GROUP BY Branch, payment_method;

