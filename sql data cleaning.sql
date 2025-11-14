-- Data Cleaning

select * from layoffs;
use world_layoffs;

-- 1. removing duplicates
-- 2. standarzie the data
-- 3. null values or blank values
-- 4. remove any columns

-- whenever you are removing any columns from raw data you need copy 
-- all that data into new table.
create table layoffs_Staging
like layoffs;

select * from layoffs_Staging;

-- inserting data from layoffs to layoffs_staging
insert layoffs_Staging
select * from layoffs;

-- removing duplicates
select *, row_number() over
(
	partition by company, industry, total_laid_off, percentage_laid_off, 'Date'
)  as row_num 
from layoffs_staging;

-- if the number >=2 then it means there are duplicates 
 with duplicate_cte as 
 (
	select *, row_number() over
(
	partition by company, location, industry, total_laid_off, percentage_laid_off, 'Date', 
    stage, country, funds_raised_millions
)  as row_num 
from layoffs_staging
 )
 select * from duplicate_cte where row_num > 1;
 
 select * from layoffs_staging
 where company = 'Casper';
 


CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

insert layoffs_Staging2 
select *, row_number() over
(
	partition by company, location, industry, total_laid_off, percentage_laid_off, 'Date', 
    stage, country, funds_raised_millions
)  as row_num 
from layoffs_staging;

select * from layoffs_Staging2
where row_num > 1;

delete from layoffs_staging2
where row_num > 1;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM layoffs_staging2
WHERE row_num > 1;

SET SQL_SAFE_UPDATES = 1;

-- Standardzing Data
select company, trim(company)
from layoffs_staging2;

select distinct industry
from layoffs_Staging2 order by industry;

-- crypto and crypto currency are same needed to remove currency.
select * 
from layoffs_staging2
where industry like 'Crypto%';

update layoffs_Staging2 
set industry = 'Crypto'
where industry like 'Crypto%';

SET SQL_SAFE_UPDATES = 0;

select distinct location
from layoffs_Staging2 order by 1;

select distinct country
from layoffs_Staging2 order by 1;

update layoffs_staging2
set country = 'United States'
where country like 'United States%';

select * from layoffs_Staging2;

-- changing date's format
select `date`,
str_to_date(`date`, '%m/%d/%Y') as Date 
from layoffs_staging2;

update layoffs_staging2
set `date` = str_to_date(`date`, '%m/%d/%Y');

select `date` from layoffs_Staging2;

alter table layoffs_Staging2
modify column `date` DATE;

-- populating null values
select * from layoffs_Staging2
where total_laid_off is null
and percentage_laid_off is null;

select * from layoffs_Staging2 
where industry = '' or  industry is null ;

select * from layoffs_Staging2 t1
join layoffs_staging2 t2
on t1.company = t2.company 
and t1.location = t2.location
where (t1.industry is null or t1.industry = '')
and t2.industry is not null;

select t1.industry, t2.industry
from layoffs_staging2 t1
join layoffs_staging2 t2
on t1.company = t2.company 
and t1.location = t2.location
where t1.industry is null
and t2.industry is not null;

update layoffs_staging2
set industry = null
where industry = '';

update layoffs_Staging2 t1
join layoffs_staging2 t2
on t1.company = t2.company 
set t1.industry = t2.industry
where t1.industry is null
and t2.industry is not null;

select * from layoffs_staging2
where company = 'Airbnb';

select * from layoffs_staging2
where industry is null or industry = '' ;

delete from layoffs_staging2
where total_laid_off is null and 
percentage_laid_off is null;

select * from layoffs_staging2;

alter table layoffs_staging2
drop column row_num;
 






