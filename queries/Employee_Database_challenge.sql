-- get employees eligible for retirement and their title(s)
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees e
LEFT JOIN titles t
	ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;
-- 133776 rows affected


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name,
last_name,
title
INTO unique_retirement_titles		-- export as unique_titles.csv
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no ASC, to_date DESC;
-- 72458 rows affected.

SELECT DISTINCT title FROM unique_retirement_titles;
-- 7 rows affected.

-- save titles list to a table
SELECT DISTINCT title 
INTO unique_retirement_titles_list
FROM unique_retirement_titles;

-- check your work
select * FROM unique_retirement_titles_list;

-- retrieve the number of employees by their most recent job title who are about to retire
SELECT COUNT(rt.emp_no), rtl.title
INTO retiring_titles
FROM unique_retirement_titles as rt
LEFT JOIN unique_retirement_titles_list as rtl
ON rt.title = rtl.title
GROUP BY rtl.title
ORDER BY COUNT(rt.emp_no) DESC;

-- check your work
SELECT * FROM retiring_titles;

-- Deliverable # 2
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, 
de.from_date, de.to_date, t.title
INTO mentorship_eligibilty
FROM employees e
	LEFT JOIN dept_emp de
		ON e.emp_no = de.emp_no
	LEFT JOIN titles t
		ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND de.to_date = ('9999-01-01')
ORDER BY e.emp_no;
-- 1549

SELECT * FROM mentorship_eligibilty;
-- 1549 rows affected

-- something caught my eye
SELECT birth_date, SUBSTRING(CAST(birth_date as varchar(10)),6,2) FROM mentorship_eligibilty;
SELECT SUBSTRING(CAST(birth_date as varchar(10)),6,2) as "Month", 
	COUNT(SUBSTRING(CAST(birth_date as varchar(10)),6,2)) as "Count"
FROM mentorship_eligibilty
GROUP BY SUBSTRING(CAST(birth_date as varchar(10)),6,2);
/*
Month	Count
"01"	1510
"02"	39
*/