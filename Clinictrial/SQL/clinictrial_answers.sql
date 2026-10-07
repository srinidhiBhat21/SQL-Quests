create database clinic
use clinic

select * from clinictrial
#1. Add index name fast on Name
create index fast on clinictrial(name(20));

#2. Describe the schema of table
describe clinictrial

#3. Find average of Age
select avg(age) from clinictrial

#4. Find minimum of Age
#5. Find maximum of Age
select min(age) as minage, max(age) as maxage from clinictrial

#6. Find average age of those were pregnant and not pregnan
select pregnant, avg(age) as avgage from clinictrial
group by pregnant;

#7. Find average blood pressure of those had drug reaction and did not had drug
#reaction
select * from clinictrial
select Drug_Reaction, avg(BP) as avgbp from clinictrial
group by Drug_Reaction;

#8. Add new column name as ‘Age_group’ and those having age between 16 & 21
#should be categorized as Low, more than 21 and less than 35 should be
#categorized as Middle and above 35 should be categorized as High. 
alter table clinictrial
add column Age_group varchar(10);

set sql_safe_updates = 0;
update clinictrial
set Age_group = case
when age between 16 and 21 then 'low'
when age >21 and age < 35 then 'middle'
when age > 35 then 'high'
end;
set sql_safe_updates=1;

select * from clinictrial

#9. Change ‘Age’ of Reetika to 32
update clinictrial
set age = 32
where name = 'Reetika';

#10. Change name of Reena as Shara’
update clinictrial
set name = 'Shara'
where name = 'Reena';

#11. Remove Chlstrl column
#12. Select only Name, Age and BP
alter table clinictrial
drop column Chlstrl

select Name, Age, BP from clinictrial

#13. Select ladies whose first name starts with ‘E’
#14. Select ladies whose Age_group were Low
#15. Select ladies whose Age_group were High
#16. Select ladies whose name starts with ‘A’ and those were pregnant
select * from clinictrial
where name like "E%"

select Name, Age_group from clinictrial
where Age_group = 'low';
select Name, Age_group from clinictrial
where Age_group = 'high';

select * from clinictrial
where Name like "A%"
and pregnant = 'yes'

#17. Identify ladies whose BP was more than 120
#18. Identify ladies whose BP was between 100 and 120
#19. Identify ladies who had low anxiety aged less than 30
select Name, BP from clinictrial
where BP > 120
select Name, BP from clinictrial
where BP between 100 and 120
select * from clinictrial
where Anxty_LH = 'no' and Age < 30;

#20.Select ladies whose name ends with ‘i’
#21. Select ladies whose name ends with ‘a’
#22.Select ladies whose name starts with ‘K’
#23.Select ladies whose name have ‘a’ anywhere
select * from clinictrial
where name like "%i"
select * from clinictrial
where name like "%a"
select * from clinictrial
where name like "k%"
select * from clinictrial
where name like "%a%"

#24. Order ladies in ascending way based on ‘BP’
#25. Order ladies in descending way based on ‘Age’
select * from clinictrial
order by BP asc
select * from clinictrial
order by Age desc