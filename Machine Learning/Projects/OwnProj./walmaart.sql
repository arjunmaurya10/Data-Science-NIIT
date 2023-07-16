create database walmart;

use walmart;

select * from wal_store;

--- q1
select distinct Store FROM wal_store;

--- q2
select Store, AVG(Weekly_Sales) AS Average_Weekly_Sales
from wal_store group by Store;

--- q3
select month, SUM(Weekly_Sales) AS Total_Weekly_Sales
from wal_store group by month order by Total_Weekly_Sales desc;

--- q4
select * from wal_store where Holiday_Flag = 0;

--- q5 
select year, sum(Weekly_Sales) AS Total_Sales
from wal_store group by year order by Total_Sales desc;

--- q6 
select Store, year, sum(Weekly_Sales) AS total_Weekly_Sales
from wal_store group by Store ,year ;

-- q7 
select Unemployment, sum(Weekly_Sales) as Total_sales 
from wal_store group by Unemployment order by sum(Weekly_Sales) desc limit 3;

