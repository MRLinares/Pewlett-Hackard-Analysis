# Pewlett Hackard  *"Silver Tsunami"*

## Objective

Helping Pewlett Hackard prepare for a massive wave of upcoming retiremets by identifying the total amount of upcoming retirees by title and identifying the employees who can step into the upcoming vacancies.


### Resources:

***Software:*** PostgreSQL, pgAdmin4 6.12, Virtual Studio Code 1.71.0\
***Data:*** departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv


## Results - (Work In Progress...)

Retrieved the number of employees by their most recent job title who are about to retire.

Created a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
* In order to create a table depicting accurate totals, I had to account for duplicate employee identification numbers due to promotions *(below)*, so I had to employ the "DISTINCT ON" function and order by descending dates to not only retrieve a single title, but also the most recent, each step exported to a separate csv file for Packard-Hewlett records (in attached "Data" folder: retirement_titles, unique_titles, retiring_titles, mentorship_eligibility, in order of performed steps).\
![repeating_titles](https://user-images.githubusercontent.com/108758105/189481684-6b6c2cb8-a1ef-4e3e-90ab-2ad8b0a13510.png)

* Currently a total of 300,024 employees. *(deconstructed by title below)*\
![current_totals](https://user-images.githubusercontent.com/108758105/189483780-f6f015e0-a79e-4ed4-b61e-fbd02423985f.png)


* Total of 72,458 employees retiring. *(deconstructed by title below)*\
![retiring_titles](https://user-images.githubusercontent.com/108758105/189444696-21ae74cb-92db-47f5-bc46-8dc6e4860219.png)

* Total of 1,549 employees eligible for mentorship as per Pewlett-Hackard standards. *(deconstructed by title below)*\
![mentorship_titles](https://user-images.githubusercontent.com/108758105/189445068-72e9fb47-10e7-4e28-8f6b-99fadf7e6ca5.png)



## Summary
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
