use world;
Set SQL_Safe_Updates=0;

-- Data Cleaning in SQL

select
   *
from ecomchurn;

-- Finding the total number of customers
select
   count(*)
from ecomchurn;

--  Checking for duplicate rows
select
  CustomerID,
   count(CustomerID)
from ecomchurn
group by CustomerID
having count(*) >1;

-- Chnge columns name
alter table ecomchurn
rename column ï»¿CustomerID to CustomerID;

-- Basic Data info
describe ecomchurn;

-- Check Null Values
SELECT 'Tenure' as ColumnName, COUNT(*) AS NullCount 
FROM ecomchurn
WHERE Tenure IS NULL 
UNION
SELECT 'WarehouseToHome' as ColumnName, COUNT(*) AS NullCount 
FROM ecomchurn
WHERE warehousetohome IS NULL 
UNION
SELECT 'HourSpendonApp' as ColumnName, COUNT(*) AS NullCount 
FROM ecomchurn
WHERE hourspendonapp IS NULL
UNION
SELECT 'OrderAmountHikeFromLastYear' as ColumnName, COUNT(*) AS NullCount 
FROM ecomchurn
WHERE orderamounthikefromlastyear IS NULL 
UNION
SELECT 'CouponUsed' as ColumnName, COUNT(*) AS NullCount 
FROM ecomchurn
WHERE couponused IS NULL 
UNION
SELECT 'OrderCount' as ColumnName, COUNT(*) AS NullCount 
FROM ecomchurn
WHERE ordercount IS NULL 
UNION
SELECT 'DaySinceLastOrder' as ColumnName, COUNT(*) AS NullCount 
FROM ecomchurn
WHERE daysincelastorder IS NULL;

-- Handeling Missing Values
select max(Hourspendonapp) from ecomchurn;
    


UPDATE ecomchurn
SET Hourspendonapp = (select max(Hourspendonapp) from ecomchurn)
WHERE Hourspendonapp IS NULL;

UPDATE ecomchurn
SET tenure = (SELECT AVG(tenure) FROM ecomchurn)
WHERE tenure IS NULL;

UPDATE ecomchurn
SET orderamounthikefromlastyear = (SELECT AVG(orderamounthikefromlastyear) FROM ecomchurn)
WHERE orderamounthikefromlastyear IS NULL;

UPDATE ecomchurn
SET WarehouseToHome = (SELECT  AVG(WarehouseToHome) FROM ecomchurn)
WHERE WarehouseToHome IS NULL;

UPDATE ecomchurn
SET couponused = (SELECT AVG(couponused) FROM ecomchurn)
WHERE couponused IS NULL ;

UPDATE ecomchurn
SET ordercount = (SELECT AVG(ordercount) FROM ecomchurn)
WHERE ordercount IS NULL ;

UPDATE ecomchurn
SET daysincelastorder = (SELECT AVG(daysincelastorder) FROM ecomchurn)
WHERE daysincelastorder IS NULL ;

--  Creating a new column from an already existing “churn” column

alter table ecomchurn
add Customer_status varchar(10);

select
   churn,
   case
      when churn=1 then 'Churned'
      else 'Stayed'
      end as customer_status
from ecomchurn;

update ecomchurn
set customer_status=case
      when churn=1 then 'Churned'
      else 'Stayed'
      end ;

-- Creating a new column from an already existing “complain” column

alter table ecomchurn
add complain_status varchar(10);

select
   complain,
   case
      when complain=1 then 'Yes'
      else 'No'
      end as complain_status
from ecomchurn;

update ecomchurn
set complain_status=case
      when complain=1 then 'Yes'
      else 'No'
      end  ;
      
-- Checking values in each column for correctness and accuracy
-- Fixing redundancy in “PreferedLoginDevice” Column

select
  distinct PreferredLoginDevice
from ecomchurn;

UPDATE ecomchurn
SET preferredlogindevice = 'phone'
WHERE preferredlogindevice = 'mobile phone';

--  Fixing redundancy in “PreferedOrderCat” Column
select
  distinct PreferedOrderCat
from ecomchurn;

UPDATE ecomchurn
SET PreferedOrderCat = 'Mobile'
WHERE PreferedOrderCat = 'phone';

-- Fixing redundancy in “PreferredPaymentMode” Column
select
  distinct PreferredPaymentMode
from ecomchurn;

UPDATE ecomchurn
SET PreferredPaymentMode = 'Cash on Delivery'
WHERE PreferredPaymentMode = 'COD';

-- Fixing wrongly entered values in “WarehouseToHome” column
select
  distinct WarehouseToHome
from ecomchurn;

UPDATE ecomchurn
SET warehousetohome = '27'
WHERE warehousetohome = '127';

UPDATE ecomchurn
SET warehousetohome = '26'
WHERE warehousetohome = '126';


-- Rename Columns Name
alter table ecomchurn
rename column PreferredLoginDevice to Preferred_Login_Device;
alter table ecomchurn
rename column CityTier to City_Tier;
alter table ecomchurn
rename column WarehouseToHome to Warehouse_To_Home;
alter table ecomchurn
rename column PreferredPaymentMode to Preferred_Payment_Mode;
alter table ecomchurn
rename column HourSpendOnApp to HourSpend_On_App;
alter table ecomchurn
rename column NumberOfDeviceRegistered to Device_Registered;
alter table ecomchurn
rename column PreferedOrderCat to Order_Category;
alter table ecomchurn
rename column SatisfactionScore to Satisfaction_Score;
alter table ecomchurn
rename column MaritalStatus to Marital_Status;
alter table ecomchurn
rename column NumberOfAddress to Number_Of_Address;
alter table ecomchurn
rename column OrderAmountHikeFromlastYear to Order_Amount_last_Year;
alter table ecomchurn
rename column OrderCount to Order_Count;
alter table ecomchurn
rename column DaySinceLastOrder to Day_Since_Last_Order;
alter table ecomchurn
rename column CashbackAmount to Cashback_Amount;


