create database cereals

use cereals

select * from cereals_data
# 1. Add index name fast on name 
create INDEX fast on cereals_data(name(20));

#2. Describe the schema of table
describe cereals_data;

#3. Create view name as see where users can not see type column [first run appropriate query then create view] 
select * from cereals_data;
create view name as
select name, mfr, calories, protein, fat, sodium, fiber, carbo, sugars, potass, vitamins, shelf, weight, cups, rating 
from cereals_data;

select * from name;

#4. Rename the view as saw
rename table name to saw
select * from saw;

#5. Count how many are cold cereals 
select count(*) as cold_cereals from cereals_data 
where type = 'C';

#6. Count how many cereals are kept in shelf 3 
select * from cereals_data;
select count(*) as 3rd_shelf from cereals_data
where shelf = 3

#7. Arrange the table from high to low according to ratings 
select * from cereals_data
order by rating desc

#8. Suggest some column/s which can be Primary key
 select count(distinct name) as name_count,
 count(distinct mfr) as mfr_count,
 count(distinct type) as type_count,
 count(distinct calories) as calories_count,count(distinct protein) as protein_count,count(distinct fat) as fat_count,count(distinct sodium) as sodium_count,
 count(distinct fiber) as fiber_count,count(distinct carbo) as carbo_count,count(distinct sugars) as sugar_count,count(distinct potass) as potas_count,
 count(distinct vitamins) as vitamin_count,count(distinct shelf) as shelf_count,count(distinct weight) as weight_count,
 count(distinct cups) as cups_count,count(distinct rating) as rating_count from cereals_data;
 
 #9. Find average of calories of hot cereal and cold cereal in one query
 select type, avg(calories) as avg_Cals from cereals_data
 where type in ('H', 'C') group by type;
 
 #10. Add new column as HL_Calories where more than average calories should be categorized as
#HIGH and less than average calories should be categorized as LOW 
alter table cereals_data
add column HL_Calories varchar(100);

set sql_safe_updates = 0;
set @avg_calories = (select avg(calories) from cereals_data);
update cereals_data
set HL_Calories = if(calories>@avg_calories, 'high', 'low');
set sql_safe_updates = 1;

select * from cereals_data

#11. List only those cereals whose name begins with B 
select * from cereals_data
where name like "B%";

#12. List only those cereals whose name begins with F 
select * from cereals_data
where name like "F%";

#13. List only those cereals whose name ends with s
select * from cereals_data
where name like "%s"

#14. Select only those records which are HIGH in column HL_calories and mail to
#jeevan.raj@imarticus.com [save/name your file as <your first name_cereals_high>]
select * from cereals_data
where HL_Calories = 'high';

#15. Find maximum of ratings
select max(rating) as ratings from cereals_data

#16. Find average ratings of those were High and Low calories 
select HL_Calories, avg(rating) as avg_ratings from cereals_data
group by HL_Calories;

#17. Craete two examples of Sub Queries of your choice and give explanation in the script
#itself with remarks by using # 
SELECT name, calories
FROM cereals_data
WHERE calories > (SELECT AVG(calories) FROM cereals_data);
#cereals whose calories are greater than avg cals, sub-query calculates the avg cals.
#2
SELECT name, rating
FROM cereals_data
WHERE rating = (SELECT MAX(rating) FROM cereals_data);
#cereals whose rating is maximum, sub-qury finds highest ratig first.

#18. Remove column fat 
alter table cereals_data
drop column fat 
select * from cereals_data

#19. Count records for each manufacturer [mfr]
select mfr, count(*) as record
 from cereals_data
group by mfr;

#20. Select name, calories and ratings only 
select name, calories, rating from cereals_data

