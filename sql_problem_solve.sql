use ecom;
CREATE TABLE employees (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  gender VARCHAR(10) NOT NULL,
  salary INT NOT NULL,
  department VARCHAR(50) NOT NULL
);


INSERT INTO employees (name, gender, salary, department) VALUES
('Ramesh Gupta', 'Male', 55000, 'Sales'),
('Priya Sharma', 'Female', 65000, 'Marketing'),
('Sanjay Singh', 'Male', 75000, 'Sales'),
('Anjali Verma', 'Female', 45000, 'Finance'),
('Rajesh Sharma', 'Male', 80000, 'Marketing'),
('Smita Patel', 'Female', 60000, 'HR'),
('Vikram Yadav', 'Male', 90000, 'Sales'),
('Neha Sharma', 'Female', 55000, 'Marketing'),
('Rahul Singh', 'Male', 70000, 'Finance'),
('Sonali Gupta', 'Female', 50000, 'Sales');

-- 1. Write a query to find the average salary of male and female employees in each department.
select
  gender,
  department,
  avg(salary) as avg_salary
from
   employees
group by
   gender,department;

-- 2. Write a query to find the name and salary of the employee with the highest salary in each department.
with high_salary as(select
  name,
  department,
  salary,
  dense_rank() over(partition by department order by salary desc) as rnk
from
   employees)
select
   name,
   department,
   salary
from 
    high_salary
where
    rnk=1;
    
-- 3. Write a query to find the names of employees who earn more than the average salary in their department.

 WITH avg_salary AS (
  SELECT
    department,
    AVG(salary) AS avg_salary
  FROM
    employees
  GROUP BY
    department
)
SELECT
  e.name,
  e.department,
  e.salary
FROM
  employees e
JOIN
  avg_salary a ON e.department = a.department
WHERE
  e.salary > a.avg_salary;



-- 4. Find the top 3 highest paid employees in each department.
with high_salary as(select
  name,
  department,
  salary,
  dense_rank() over(partition by department order by salary desc) as rnk
from
   employees)
select
   name,
   department,
   salary
from 
    high_salary
where
    rnk<=3;

-- 5. Find the names of employees who have a salary greater than the average salary of their department.

WITH avg_salary AS (
  SELECT
    department,
    AVG(salary) AS avg_salary
  FROM
    employees
  GROUP BY
    department
)
SELECT
  e.name,
  e.department,
  e.salary
FROM
  employees e
JOIN
  avg_salary a ON e.department = a.department
WHERE
  e.salary > a.avg_salary;


-- 6. Find the department(s) with the highest paid employee(s).

select
    department,
    sum(salary) as salarys
from 
   employees
group by 
    department
order by 
      salarys desc;


with high_salary as(select
  name,
  department,
  salary,
  dense_rank() over(partition by department order by salary desc) as rnk
from
   employees)
select
   name,
   department,
   salary
from 
    high_salary
where
    rnk=1;

