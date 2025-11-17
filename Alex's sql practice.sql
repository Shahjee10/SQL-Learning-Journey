use startersql;
select * from users;

select distinct gender from users;

-- where clause
select * from users where name = 'Ahmed';
select * from users where salary >= 55000;
select * from users where date_of_birth > "2000-01-01";
select * from users where gender = 'female';
select * from users where gender!= 'female';

-- AND or NOT -- Logical Operators 
select * from users
where date_of_birth >= '1990-01-01'
and gender = 'male';

select * from users
where salary > 60000 or gender = 'female';

select * from users 
where gender = 'male' or not date_of_birth < '2000-01-01';

select * from users 
where (gender = 'female' and date_of_birth = '2000-08-09') or date_of_birth > '2000-01-01';

-- like statement
-- %(anything) and _(specific value)

 select * from users 
 where name like 'a%'; 
 -- this means that a should be at start and anything afterwards

  select * from users 
 where name like 'a____';
-- this means s should be at start and 4 undersocres means 
-- after a there should be exact 4 characters

select * from users
where date_of_birth like '1990%';

-- group by and order by
-- GROUP BY
select gender, count(*) as 'total users' 
 from users group  by gender;
 
select gender, sum(salary) as 'total salary' 
 from users group  by gender;
 
select gender, avg(salary) as 'average salary' 
 from users group  by gender;
 
 select gender, max(salary) as 'max salary', min(salary) as 'min salary',
 avg(salary) as 'avg salary', count(gender) as 'total users' from users
 group by gender;
 
 -- ORDER BY
select * from users order by salary desc limit 5;
select * from users order by gender, salary;
select * from users order by salary, gender; -- here gender becomes useless 

-- HAVING & WHERE
select gender, max(salary) as 'max_salary' from users
group by gender
having max(salary) > 50000;

select name, salary 
from users
where name like '%a'
having salary > 50000;

-- LIMIT & ALIASING
select * from users 
order by salary desc limit 5;

select * from users 
order by salary desc 
limit 3,1;

-- Aliasing
SELECT gender, avg(salary) AS 'average salary'
FROM users
GROUP BY gender
HAVING avg(salary) > 50000;

-- Joins

-- inner join
select * from users
inner join addresses
on users.id = addresses.id;

-- another way of joining when the table name is too long is using alias
select * from users as us
inner join addresses as addr
on us.id = addr.id;

-- when a column is of same name in both tables you need to denote in field list 
-- which one to use 
select addr.id,name, salary, city from users as us
inner join addresses as addr
on us.id = addr.id;

select * from addresses;
select * from users;

-- outer joins
select * from users as us
left join addresses as addr
on us.id = addr.id;

select * from users as us
right join addresses as addr
on us.id = addr.id;

-- self join
SELECT 
    u1.name AS user_name, 
    u2.name AS referrer_name 
    FROM 
    users u1 
left JOIN 
    users u2 
ON 
    u1.reffered_by_id = u2.id;

-- joining multiple tables
SELECT 
    u1.name AS user_name,
    u2.name AS referrer_name,
    a.street AS user_street,
    a.city AS user_city,
    ul.action AS user_action,
    ul.created_on AS action_time
FROM 
    users u1
LEFT JOIN 
    users u2 ON u1.reffered_by_id = u2.id
LEFT JOIN 
    addresses a ON u1.id = a.user_id
LEFT JOIN 
    user_log ul ON u1.id = ul.user_id;
    
    -- Unions
    select name,salary, "users" as position
    from users
    union  -- it is by default union distinct so it takes only unique values 
    select name,salary, "admin" as postion
    from admin_users;
    
      select name,salary, "users" as position
    from users
    union all -- it's going to take all the values
    select name,salary, "admin" as postion
    from admin_users;
    
    
	select name,salary, gender, "users" as position
    from users
    where salary > 60000 and gender = 'male'
    union  
    select name,salary, gender, "admin" as postion
    from admin_users
    where salary > 60000 and gender = 'female';
  
  ------------------------------------------------------
    
SELECT name, salary, gender, 'users' AS position
FROM users
WHERE salary > 60000 AND gender = 'Male'
UNION
SELECT name, salary, gender, 'admin' AS position
FROM admin_users
WHERE salary > 60000 AND gender = 'Female'
UNION
SELECT name, salary, gender, 'highly paid' 
FROM (
    SELECT name, salary, gender 
    FROM users
    WHERE salary > 80000
    UNION
    SELECT name, salary, gender 
    FROM admin_users
    WHERE salary > 80000
) as high_pay;

-- String Functions
select length ('Ahmed');

select name, length(name) as length_of_name
from users
-- order by length_of_name;
order by 2;

select upper('sky');
select lower('SKY');

select upper(name) 
from users;

select ('       sky     ');
select TRIM('       sky     ');
select LTRIM('       sky     ');
select RTRIM('      sky                ');

select name, 
left(name,4) -- going to remove alphabets from a name considering more than
-- letters
from users;

select name, 
right(name,4) -- going to remove alphabets from a name considering more than
-- letters
from users;

-- Substrings
select name, 
left(name,4),
right(name,4),
substring(name,3,2),
date_of_birth,
substring(date_of_birth,6,2) as birth_month
from users;

-- Replace
select name, replace(name,'a','z')
from users;

-- Locate
select locate('a','Maria');

select name,locate('an',name)
from users;

select name,salary,
concat(name,' ',salary) as name_with_salary
from users;

-- Case Statements
  select name,salary,
  case
	when salary >=60000 then 'Great_Salary'
    when salary between 50000 and 59000 then 'Good_salary'
    when salary <=49000 then 'Decent_salary'
end as 'salary_status'
from users;

-- Pay increase and bonus
select name, salary,
case
	when salary <= 55000 then salary * 1.05
	when salary between 56000 and 65000 then salary * 1.07 
end as increased_salary,
case
	    when salary >= 66000 then salary * 1.10
end as Bonus
from users;

-- Subqueries 
 select name,salary,
 (
   select avg(salary)
   from users
 ) as avg_salary
 from users; 
 -- displaying users having salary more than avg salary
  select name,salary from users
  where salary >
 (
   select avg(salary)
   from users
 );
 
 -- displaying users havibg sal more than avg alongsie avg sal column
 select name, salary as more_than_Avg_Sal,
 (select avg(salary) from users) as avg_salary
 from users 
 where salary >
 (select avg(salary)
 from users);  
 
 
 select gender , max(salary) as max_sal, min(salary) as min_sal, avg(salary) as avg_Sal
 ,count(salary)
 from users
 group by gender;
 
 select avg(min_sal) from
 (select gender , max(salary) as max_sal, min(salary) as min_sal, avg(salary) as avg_Sal
 ,count(salary)
 from users
 group by gender) as agg_Table;
 
 -- windows funtions
SELECT id, name, salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) as row_num,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank,
    dense_rank() OVER (ORDER BY salary DESC) AS D_rank
FROM users;

SELECT 
    id, name, salary, gender,
    ROW_NUMBER() OVER (partition by GENDER order by id) AS row_num
FROM users;

SELECT 
    name, salary,
    AVG(salary) OVER () AS avg_salary,
    salary - AVG(salary) OVER () AS diff_from_avg
FROM users;

SELECT 
    name, salary,
    SUM(salary) OVER (ORDER BY salary) AS running_total
FROM users;

SELECT 
    name, salary,
    LAG(salary) OVER (ORDER BY salary) AS previous_salary
FROM users;

SELECT 
    name, salary,
    LEAD(salary) OVER (ORDER BY salary) AS next_salary
FROM users;

SELECT 
    name, gender, salary,
    RANK() OVER (PARTITION BY gender ORDER BY salary DESC) AS gender_salary_rank
FROM users;

SELECT 
    name, gender, salary,
    MAX(salary) OVER (PARTITION BY gender) AS max_salary_gender
FROM users;

select name,gender, salary,
avg(salary) over() as avg_sal
from admin_users;

select name,gender, salary,
rank() over(order by salary desc ) as rank_sal
from admin_users;

select name, gender, salary,
max(salary) over(partition by gender) as high_sal_by_gender
from admin_users;

-- COMMMON TABLE EXPRESSIONS








 
 
 
 


	


 










    
    
    
    







 
 
 
 
 
 
 






 