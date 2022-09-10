# Pewlett Hackard  *"Silver Tsunami"*

## Objective

Provide analysis for Pewlett Hackard in order to prepare for a massive wave of upcoming retirements by identifying the total amount of upcoming retirees by title and identifying the employees who can step into the upcoming vacancies.


#### Resources:

>***Software:*** PostgreSQL, pgAdmin4 6.12, Virtual Studio Code 1.71.0, Microsoft Excel\
>***Data:*** departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv


## Results 

Retrieved the number of employees by their most recent job title who are about to retire.

Created mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

* In order to create a table depicting accurate totals, I had to account for duplicate employee identification numbers due to promotions *(below)*, so I had to employ the "DISTINCT ON" function and order by descending dates to not only retrieve a single title, but also the most recent, each step exported to a separate csv file for Pewlett-Hackard records (in attached "Data" folder: retirement_titles, unique_titles, retiring_titles, mentorship_eligibility, in order of performed steps).\
![repeating_titles](https://user-images.githubusercontent.com/108758105/189481684-6b6c2cb8-a1ef-4e3e-90ab-2ad8b0a13510.png)

* Currently a total of 300,024 employees. *(deconstructed by title below)*\
![current_totals](https://user-images.githubusercontent.com/108758105/189483780-f6f015e0-a79e-4ed4-b61e-fbd02423985f.png)


* Total of 72,458 employees retiring. *(deconstructed by title below)*\
![retiring_titles](https://user-images.githubusercontent.com/108758105/189444696-21ae74cb-92db-47f5-bc46-8dc6e4860219.png)

* Total of 1,549 employees eligible for mentorship as per Pewlett-Hackard standards. *(deconstructed by title below)*\
![mentorship_titles](https://user-images.githubusercontent.com/108758105/189445068-72e9fb47-10e7-4e28-8f6b-99fadf7e6ca5.png)



## Summary

With a total of 72, 458 employees out of 300,024 retiring and only 1,549 eligible to fill in their positions, Pewlett-Hackard is in for a frightening labor shortage. Furthermore, the following code resulted in an output table with a total of 0.
~~~~
SELECT
    COUNT(employees) AS "Totals"
FROM
    employees
WHERE
    birth_date > '1965-12-31';
~~~~

This reveals that there is no one at the organization with a birthdate after the year 1965 leaving the remaining 226,017 employees, and their respective positions, will be ready for retirement in the next 5-10 years.\

>Employees ready for retirement immediately following current eligible employees:\
![gray_area](https://user-images.githubusercontent.com/108758105/189485096-a361e6c6-8942-4a07-8635-2254135773c6.png)

While there are more than enough retirement eligible employees to mentor those eligible for mentorship, the greater concern is bringing in young talent and convincing employees to stay past retirement age to help prepare for the even greater tsunami soon on its way.

