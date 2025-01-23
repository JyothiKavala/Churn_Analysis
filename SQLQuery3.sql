select Gender, Count(Gender) as TotalCount,
Count(Gender) * 100.0/(select Count(*) from stg_Churn) as Percentage
from stg_churn
Group by Gender  ---column used as grouping criteria---
----This result set gives percentage as 0, because int/int=int---So to make it as float type:  Count(Gender) * 100.0---

select Contract, Count(Contract) as TotalCount,
Count(Contract) * 1.0/(select Count(*) from stg_Churn) as Percentage
from stg_churn
Group by Contract

select Customer_Status, Count(Customer_Status) as TotalCount, sum(Total_Revenue) as TotalRev,
sum(Total_Revenue)/(select sum(Total_Revenue) from stg_Churn) * 100 as RevPercentage
from stg_churn
Group by Customer_Status

select State, Count(State) as TotalCount,
Count(State) * 100.0/(select Count(*) from stg_Churn) as Percentage
from stg_churn
Group by State
Order by Percentage desc

select distinct Internet_Type from stg_Churn
