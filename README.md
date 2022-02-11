# Pewlett-Hackard Analysis

## Challenge Overview
For the Pewlett-Hackard Company we needed to create a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. And create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

Deliverables:

  1. The Number of Retiring Employees by Title
  2. The Employees Eligible for the Mentorship Program
  3. A written report on the employee database analysis

## Results
The Pewlett-Hackard Company has 72,458 employees eligible for retirement across 9 departments. With so many people about to retire a mentor program was established to help transfer knowledge to the next cohort of retirees. Of the active employees, 1,549 are eligible to participate in the mentorship program. Interestingly enough 97% of those eligible employees were born in the month of January.

## Data Files

[Retiring Titles](https://github.com/lnharvin/Pewlett-Hackard-Analysis/blob/main/data/retiring_titles.csv)
: contains the number of titles filled by employees who are retiring.

[Unique Titles](https://github.com/lnharvin/Pewlett-Hackard-Analysis/blob/main/data/unique_titles.csv)
: contains the employee number, first and last name, and most recent title of each eligible retiree.

[Retirement Titles](https://github.com/lnharvin/Pewlett-Hackard-Analysis/blob/main/data/retirement_titles.csv)
: list of retirement employees who were born between January 1, 1952 and December 31, 1955. 

[Mentorship Eligibility](https://github.com/lnharvin/Pewlett-Hackard-Analysis/blob/main/data/mentorship_eligibilty.csv)
: current employees who were born between January 1, 1965 and December 31, 1965.

## Project Overview
Because some employees had multiple titles in the database, I used the DISTINCT ON statement to create a table that contained the most recent title of each employee. Then, used the COUNT() function to create a table that had the number of retirement-age employees by most recent job title. Finally, included only current employees in the analysis by excluding those employees who had already left the company. Review the [Employee Database Challenge](https://github.com/lnharvin/Pewlett-Hackard-Analysis/blob/main/queries/Employee_Database_challenge.sql) for scripts run.

## Challenge Summary
This challenge was fun! It helped that the topic was something familiar but I work with SQL not postgreSQL, they are similar but not the same. I learned a lot about postgreSQL and pgAdmin this week

Module 7 
