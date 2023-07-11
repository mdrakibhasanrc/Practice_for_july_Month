SELECT  
    *
 FROM 
    `ecommerce-churn.ecom_churn.ecom` LIMIT 1000;

 -- 1. What is the overall customer churn ?
select
    count(CustomerID) as total_Churn_customers
  from 
     `ecommerce-churn.ecom_churn.ecom`
  where Churn='Churn';

-- 2. How does the churn rate vary based on the preferred login device?
  SELECT
  Preferred_Login_Device,
  COUNTIF(Churn = 'Churn') AS Churned_Customers,
  COUNT(*) AS Total_Customers,
  COUNTIF(Churn = 'Churn') / COUNT(*) * 100 AS Churn_Rate
FROM
  `ecommerce-churn.ecom_churn.ecom`
GROUP BY
  Preferred_Login_Device;


-- 3. What is the distribution of customers across different city tiers?

select	
     City_Tier,
     count(*) as total_customers,
     countif(Churn='Churn') as churn_customers,
     (countif(Churn='Churn')/count(*) *100) as churn_rate
from
   `ecommerce-churn.ecom_churn.ecom`
group by
    City_Tier 
order by
   churn_rate desc;

-- 4. Is there any correlation between the warehouse-to-home distance and customer churn?

select	
     Warehouse_To_Home,
     count(*) as total_customers,
     countif(Churn='Churn') as churn_customers,
     (countif(Churn='Churn')/count(*) *100) as churn_rate
from
   `ecommerce-churn.ecom_churn.ecom`
group by
   Warehouse_To_Home 
order by
   churn_rate desc;


-- 5. Which is the most preferred payment mode among churned customers?
select	
     Payment_Mode,
     count(*) as total_customers,
     countif(Churn='Churn') as churn_customers,
     (countif(Churn='Churn')/count(*) *100) as churn_rate
from
   `ecommerce-churn.ecom_churn.ecom`
group by
   Payment_Mode 
order by
   churn_rate desc;

-- 6. What is the typical tenure for churned customers?

select	
     Tenure,
     count(*) as total_customers,
     countif(Churn='Churn') as churn_customers,
     (countif(Churn='Churn')/count(*) *100) as churn_rate
from
   `ecommerce-churn.ecom_churn.ecom`
group by
   Tenure 
order by
   churn_rate desc;


-- 7.Is there any difference in churn rate between male and female customers?

select	
     Gender,
     count(*) as total_customers,
     countif(Churn='Churn') as churn_customers,
     (countif(Churn='Churn')/count(*) *100) as churn_rate
from
   `ecommerce-churn.ecom_churn.ecom`
group by
   Gender 
order by
   churn_rate desc;


-- 8. How does the average time spent on the app differ for churned and non-churned customers?
select
     Churn,
     avg(Hour_Spend_On_App) as avg_time_spent
from
  `ecommerce-churn.ecom_churn.ecom`
group by
    Churn;


-- 9. Does the number of registered devices impact the likelihood of churn?

select	
     Device_Registered,
     count(*) as total_customers,
     countif(Churn='Churn') as churn_customers,
     (countif(Churn='Churn')/count(*) *100) as churn_rate
from
   `ecommerce-churn.ecom_churn.ecom`
group by
   Device_Registered
order by
   churn_rate desc;


-- 10. Which order category is most preferred among churned customers?

select	
     Order_Category,
     count(*) as total_customers,
     countif(Churn='Churn') as churn_customers,
     (countif(Churn='Churn')/count(*) *100) as churn_rate
from
   `ecommerce-churn.ecom_churn.ecom`
group by
   Order_Category
order by
   churn_rate desc;

-- 11. Is there any relationship between customer satisfaction scores and churn?
select	
     Satisfaction_Score,
     count(*) as total_customers,
     countif(Churn='Churn') as churn_customers,
     (countif(Churn='Churn')/count(*) *100) as churn_rate
from
   `ecommerce-churn.ecom_churn.ecom`
group by
   Satisfaction_Score
order by
   churn_rate desc;


-- 12. Does the marital status of customers influence churn behavior?
select	
     Marital_Status,
     count(*) as total_customers,
     countif(Churn='Churn') as churn_customers,
     (countif(Churn='Churn')/count(*) *100) as churn_rate
from
   `ecommerce-churn.ecom_churn.ecom`
group by
   Marital_Status
order by
   churn_rate desc;

-- 13. Do customer complaints influence churned behavior?
select	
     Complain,
     count(*) as total_customers,
     countif(Churn='Churn') as churn_customers,
     (countif(Churn='Churn')/count(*) *100) as churn_rate
from
   `ecommerce-churn.ecom_churn.ecom`
group by
   Complain
order by
   churn_rate desc;

-- 13. Is there any correlation between cashback amount and churn rate?

select	
     Cash_back_Amount,
     count(*) as total_customers,
     countif(Churn='Churn') as churn_customers,
     (countif(Churn='Churn')/count(*) *100) as churn_rate
from
   `ecommerce-churn.ecom_churn.ecom`
group by
   Cash_back_Amount
order by
   churn_rate desc;

-- 14. Is there any correlation between Order Count and churn rate?

select	
     Order_Count,
     count(*) as total_customers,
     countif(Churn='Churn') as churn_customers,
     (countif(Churn='Churn')/count(*) *100) as churn_rate
from
   `ecommerce-churn.ecom_churn.ecom`
group by
    Order_Count
order by
   churn_rate desc;
