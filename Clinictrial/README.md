# Clinical Trial Data Analysis using SQL

## Project Overview

This project focuses on analyzing a clinical trial dataset using SQL.

The analysis covers data exploration, aggregation, conditional categorization, data modification, filtering, pattern matching, and sorting.

The project uses the `clinictrial` database and contains 25 SQL queries designed to practice real-world data analysis operations.

## Dataset

The dataset contains clinical trial information about participants, including:

- Name
- Blood Pressure (BP)
- Cholesterol (Chlstrl)
- Age
- Pregnancy Status
- Anxiety Level
- Drug Reaction

## Tools & Technologies

- MySQL
- SQL
- Aggregate Functions
- Conditional Statements
- String Functions
- Filtering
- Sorting
- Data Modification
- Indexing

## SQL Concepts Covered

- CREATE DATABASE
- CREATE INDEX
- DESCRIBE
- SELECT
- AVG()
- MIN()
- MAX()
- GROUP BY
- CASE WHEN
- ALTER TABLE
- UPDATE
- DROP COLUMN
- WHERE
- LIKE
- BETWEEN
- AND
- ORDER BY
- ASC
- DESC

## Analysis Performed

The project includes analysis such as:

- Calculating average, minimum, and maximum age
- Comparing average age between pregnant and non-pregnant participants
- Comparing average blood pressure based on drug reaction
- Categorizing participants into different age groups
- Updating participant information
- Removing unnecessary columns
- Filtering participants based on names and medical attributes
- Identifying participants based on blood pressure ranges
- Identifying participants with low anxiety levels
- Performing name pattern searches
- Sorting participants by blood pressure and age

## Age Group Categorization

Participants are categorized based on their age:

| Age Range | Category |
|-----------|----------|
| 16–21 | Low |
| >21 and <35 | Middle |
| >35 | High |

