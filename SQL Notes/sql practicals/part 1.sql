Create database Practice1;
use practice1;

create table Matches(
Team_name varchar(20)
);

insert into Matches
(Team_name) values
('India'),
('Aus'),
('Eng'),
('Pak');

select * from Matches;

## Q1: List all the matches between teams, if matches are played once
with cte as (select *, row_number() over(order by Team_name) as id  from Matches)
select a.Team_name as TEAM_A, b.Team_name as TEAM_B
from cte as a join 
cte as b
on a.Team_name <> b.Team_name
where a.id < b.id;


CREATE TABLE emp
 ( ID int, NAME varchar(10) 
 ); 
 
insert into emp
(id,name) values
(1,'Emp1'),
(2,'Emp2'), 
(3,'Emp3'),
(4,'Emp4'), 
(5,'Emp5'), 
(6,'Emp6'), 
(7,'Emp7'), 
(8,'Emp8'); 

select * from emp;
## Q2: write a query to get the output

## with my_cte as (select concat(id," ",name) as COM_Name, ntile(4) over (order by id ASC)  as groupss from emp)
select group_concat(COM_Name order by COM_Name ASC separator',') as results,groupss
from my_cte
group by groupss
order by groupss;

WITH my_cte AS (
    SELECT 
        CONCAT(id, " ", NAME) AS COM_Name, 
        ID,  -- Include ID in the CTE so it can be used in the outer query
        NTILE(4) OVER (ORDER BY ID ASC) AS groupss 
    FROM emp
)
SELECT 
    GROUP_CONCAT(COM_Name ORDER BY ID ASC SEPARATOR ', ') AS results, 
    groupss
FROM my_cte
GROUP BY groupss
ORDER BY groupss;






