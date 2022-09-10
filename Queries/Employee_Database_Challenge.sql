-- DELIVERABLE 1:

-- retirement_titles schema
SELECT
	e.emp_no,
	e.first_name,
	e.last_name,
	t.titles,
	t.from_date,
	t.to_date
INTO
	retirement_titles
FROM
	employees AS e
		INNER JOIN
			titles AS t
		ON
			e.emp_no = t.emp_no
WHERE
	(e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY
	emp_no ASC;


-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) 
	emp_no,
	first_name,
	last_name,
	titles
INTO 
	unique_titles
FROM 
	retirement_titles
WHERE 
	to_date = '9999-01-01'
ORDER BY 
	emp_no ASC, 
	to_date DESC;


-- Create retiring_titles by retrieving number of titles and 
-- grouping by title in descending order of count totals
SELECT 
	DISTINCT(titles)AS "Titles", 
	COUNT(titles) AS "Totals"
INTO
	retiring_titles
FROM 
	unique_titles
GROUP BY  
	titles
ORDER BY 
	"Totals";


-- DELIVERABLE 2


-- mentorship_eligibility current employees born 
-- between 1965-01-01 and 1965-12-31
SELECT DISTINCT ON(emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	t.titles,
	de.from_date,
	de.to_date
INTO
	mentorship_eligibility
FROM
	employees AS e
		INNER JOIN
			dept_emp AS de
		ON
			e.emp_no = de.emp_no
		INNER JOIN
			titles AS t
		ON
			e.emp_no = t.emp_no
WHERE
	de.to_date = '9999-01-01'
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY
	emp_no ASC;

-- query to find totals for mentorship eligible titles
SELECT 
	titles AS "Titles",
	COUNT(titles) AS "Totals"
FROM mentorship_eligibility
GROUP BY titles
ORDER BY "Totals" DESC;


-- Total current employees by title
SELECT 
	t.titles AS "Title",
	COUNT(DISTINCT (e.emp_no)) AS "Totals"
FROM employees AS e
	INNER JOIN
		titles AS t
	ON
		(t.emp_no = e.emp_no)
GROUP BY t.titles
ORDER BY "Totals" DESC;

--created a table where all employees born after 
--the retirement eligible employees would be eligible for mentorship
SELECT DISTINCT ON(emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	t.titles,
	de.from_date,
	de.to_date
INTO
	mentorship_ideal
FROM
	employees AS e
		INNER JOIN
			dept_emp AS de
		ON
			e.emp_no = de.emp_no
		INNER JOIN
			titles AS t
		ON
			e.emp_no = t.emp_no
WHERE
	de.to_date = '9999-01-01'
	AND (e.birth_date > '1955-12-31')
ORDER BY
	emp_no ASC;

--mentorship_ideal totals
SELECT 
	titles AS "Titles",
	COUNT(titles) AS "Totals"
FROM 
	mentorship_ideal
GROUP BY
	titles
ORDER BY
	"Totals" DESC;
