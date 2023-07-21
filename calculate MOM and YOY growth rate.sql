use ecom;

CREATE TABLE sales (
    id INT,
    sales_date DATE,
    amount DECIMAL(10, 2)
);

INSERT INTO sales (id, sales_date, amount)
VALUES
    (1, '2022-01-01', 1000),
    (2, '2022-02-01', 1200),
    (3, '2022-03-01', 1500),
    (4, '2023-01-01', 1800),
    (5, '2023-02-01', 2000),
    (6, '2023-03-01', 2200);
    
    select * from sales;
    
    -- calculate year-over-year (YoY) 
    with te as (select
        year(sales_date) as Year,
        sum(amount) as total_sales
	from sales
    group by Year
    order by Year desc)
    
    select
      *,
      lag(total_sales) over(order by total_sales) as prev_sales,
      ((total_sales-lag(total_sales) over(order by total_sales))/lag(total_sales) over(order by total_sales)) as growth_rate
	from te;
    
  -- calculate month-over-month (mom)   
    
     with te as (select
        monthname(sales_date) as month,
        sum(amount) as total_sales
	from sales
    group by month)
    
    select
      *,
      lag(total_sales) over(order by total_sales) as prev_sales,
      ((total_sales-lag(total_sales) over(order by total_sales))/lag(total_sales) over(order by total_sales)) as growth_rate
	from te;
