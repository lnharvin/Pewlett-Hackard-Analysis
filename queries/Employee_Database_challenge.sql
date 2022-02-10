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