create database insurance
use insurance
select * from insurance

#1. Count for each categories of ‘region
select region, count(region) from insurance
group by region

#2. Find 50 records of highest ‘age’ and export data/table to desktop 
select * from insurance 
order by age desc
limit 50

#3. Add index name ‘quick’ on ‘id’ 
create index quick on insurance(id);

#4. Describe the schema of table 
describe insurance

#5. Create view name as ‘gender’ where users can not see ‘sex’ [Hint: first run
#appropriate query then create view] 
select * from gender
select * from insurance
create view gender as select id, age, bmi, children, smoker, region, charges from insurance

#7. Count how many are ‘northwest’ insurance holders
#8. Count how many insurance holders were ‘femail’ 
select region, count(region) as insurance_holders from insurance
where region = 'northwest';
select * from insurance
select count(sex) as femaleinsuranceholders from insurance
where sex ='female'

#6. Rename the view as ‘type’ 
rename table gender to type;

#9. Create Primary key on a suitable column 
alter table insurance
add primary key (id);

#10. Create a new column ‘ratio’ which is age multiply by bmi
#11. Arrange the table from high to low according to charges
alter table insurance
add column ratio decimal(10,4)
set sql_safe_updates = 0;
update insurance
set ratio = age*bmi
set sql_safe_updates = 1;
select * from insurance

#11. Arrange the table from high to low according to charges 
select * from insurance
order by charges desc

#12. Find MAX of ‘charges’
#13. Find MIN of ‘charges’
#14. Find average of ‘charges’ of male and female
#15. Write a Query to rename column name sex to Gende
select  max(charges) as maxcharge from insurance
select  min(charges) as mincharge from insurance
select sex, avg(charges) from insurance
group by sex
alter table insurance
rename column sex to Gender

select * from insurance

#16. Add new column as HL_Charges where more than average charges should be
#categorized as HIGH and less than average charges should be categorized as LOW 
alter table insurance
add column hl_charges varchar(10);

set sql_safe_updates = 0;
set @avg_charges = (select avg(charges) from insurance);
update insurance
set hl_charges = if(charges > @avg_charges, 'HIGH', 'LOW')
where id is not null;

#17. Change location/position of ‘smoker’ and bring before ‘children’ 
alter table insurance
modify smoker varchar(10) after bmi

#18. Show top 20 records
#19. Show bottom 20 records 
select * from insurance
limit 20
select * from insurance
order by id desc 
limit 20

#20. Randomly select 20% of records and export to desktop 
select count(*) as total_records
from insurance
select * from insurance
order by rand()
limit 268

#remove column ratio
alter table insurance
drop column ratio

#22. Craete one example of Sub Queries involving ‘bmi’ and ‘sex’ and give explanation in
#the script itself with remarks by using # 
select id, Gender, bmi from insurance
where Gender = 'female' and bmi in (select bmi from insurance
where Gender = 'male')
#this finds femalen whose bmi matches bmi of a male, sub-query gets bmi value of males.

#23. Create a view called Female_HL_Charges that shows only those data where
#HL_Charges is High, Female, Smokers and with 0 children 
create view female_hl_charges as select * from insurance
where hl_charges = 'HIGH'
and Gender ='female'
and smoker ='yes'
and children = 0

#24. Update children column if there is 0 children then make it as Zero Children, if 1
#then one_children, if 2 then two_children, if 3 then three_children, if 4 then
#four_children if 5 then five_children else print it as More_than_five_children.

select * from insurance
alter table insurance
modify children varchar(30)
update insurance
set children = 
case
when children = 0 then 'Zero_Children'
when children = 1 then 'One_Children'
when children = 2 then 'two_Children'
when children = 3 then 'three_Children'
when children = 4 then 'four_Children'
when children = 5 then 'five_Children'
else 'More_than_five_children'
end;