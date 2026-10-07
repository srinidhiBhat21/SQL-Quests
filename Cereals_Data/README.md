
# SQL Business Questions & Data Analysis

## Project Overview

This project demonstrates SQL-based data analysis using a cereal products dataset.

The project focuses on solving practical data and business questions using SQL, including data exploration, filtering, aggregation, sorting, views, indexes, subqueries, conditional classification, and table modifications.

A total of 20 SQL exercises were solved as part of the analysis.

## Dataset

The project uses a cereal dataset containing information about cereal products, manufacturers, nutritional values, shelf placement, and ratings.

### Key Columns

- `name` – Cereal name
- `mfr` – Manufacturer
- `type` – Hot or cold cereal
- `calories` – Calories per serving
- `protein` – Protein content
- `fat` – Fat content
- `sodium` – Sodium content
- `fiber` – Fiber content
- `carbo` – Carbohydrate content
- `sugars` – Sugar content
- `potass` – Potassium content
- `vitamins` – Vitamin content
- `shelf` – Shelf placement
- `weight` – Serving weight
- `cups` – Cups per serving
- `rating` – Product rating

## SQL Concepts Demonstrated

- Database and table exploration
- Index creation
- Schema inspection using `DESCRIBE`
- Creating and renaming views
- `SELECT` and `WHERE`
- `LIKE` pattern matching
- `ORDER BY`
- `COUNT()`
- `AVG()`
- `MAX()`
- `GROUP BY`
- Conditional logic using `IF`
- User-defined variables
- `ALTER TABLE`
- Adding and removing columns
- Subqueries
- Data classification
- Primary key analysis
- Filtering based on calculated values

## Business Questions Solved

The project answers questions such as:

1. How can an index be created to improve searches by cereal name?
2. What is the structure of the cereal table?
3. How can a view be created while hiding a column?
4. How can a view be renamed?
5. How many cold cereals are present?
6. How many cereals are placed on shelf 3?
7. Which cereals have the highest ratings?
8. Which columns could potentially be used as a primary key?
9. What is the average calorie count for hot and cold cereals?
10. How can cereals be classified as HIGH or LOW based on average calories?
11. Which cereals have names beginning with B?
12. Which cereals have names beginning with F?
13. Which cereals have names ending with S?
14. Which cereals have HIGH calorie values?
15. What is the maximum cereal rating?
16. What is the average rating for HIGH and LOW calorie cereals?
17. How can subqueries be used to answer analytical questions?
18. How can a column be removed from a table?
19. How many records belong to each manufacturer?
20. How can specific columns be selected for analysis?

## Key Analysis

The SQL analysis was used to:

- Compare hot and cold cereals based on average calories.
- Identify highly rated cereal products.
- Classify cereals based on their calorie levels.
- Compare average ratings between HIGH and LOW calorie cereals.
- Analyze the number of products associated with each manufacturer.
- Identify cereals matching specific naming patterns.
- Explore potential primary key columns using distinct-value analysis.

