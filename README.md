# Pewlett-Hackard Analysis

## Challenge Overview
Create a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. And create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

Deliverables:

  1. The Number of Retiring Employees by Title
  2. The Employees Eligible for the Mentorship Program
  3. A written report on the employee database analysis

## Summary / Results


## Data Files

[Retiring Titles Count](https://github.com/lnharvin/Pewlett-Hackard-Analysis/blob/main/data/retiring_titles.csv)
: contains the number of titles filled by employees who are retiring.

[Unique Titles](https://github.com/lnharvin/Pewlett-Hackard-Analysis/blob/main/data/unique_titles.csv)
: contains the employee number, first and last name, and most recent title.

[Retirement Titles](https://github.com/lnharvin/Pewlett-Hackard-Analysis/blob/main/data/retirement_titles.csv)
: list of retirement employees who were born between January 1, 1952 and December 31, 1955. This list contains duplicates for multiple positions/titles.

mentorship_eligibilty.csv


![Image Label 2](https://github.com/lnharvin/Pewlett-Hackard-Analysis/blob/main/images/[imageName])

## Project Overview
 

## Challenge Summary
Because some employees may had multiple titles in the database, I used the DISTINCT ON statement to create a table that contained the most recent title of each employee. Then, used the COUNT() function to create a table that had the number of retirement-age employees by most recent job title. Finally, included only current employees in the analysis by excluding those employees who had already left the company.

Module 7 
