  Tech Layoffs
moderate


Tech companies have been laying off employees after a large surge of hires in the past few years.

Write a query to determine the percentage of employees that were laid off from each company.

Output should include the company and the percentage (to 2 decimal places) of laid off employees.

Order by company name alphabetically.


company table
company	     company_size	employees_fired
Apple	     147000         	0
Microsoft	 181000	          6000
Google	     139500	          15000
Amazon	     1300000	      12000
Facebook	 60750	          11000
Tesla	     70000	          1000



Field	          Data Type
company	          text
company_size	  int
employees_fired	  int



the answer:
-- filter:  percentage calc: Emp Fired /comp size *100  
-- outpot company name,  percentage
-- Order by company name Asc 

SELECT company, ROUND((employees_fired / company_size) * 100,2) As percentage
  FROM tech_layoffs
  ORDER BY company ASC;
  
  
  
  
  
  
  
  
  Separation
moderate


Data was input incorrectly into the database. The ID was combined with the First Name.

Write a query to separate the ID and First Name into two separate columns.

Each ID is 5 characters long.


id table
12345Johnny
93829Sally
20391Larry
29324Valerie


Field	 Data Type
id	     text


the answer

-- filter: substring - to pull out number and then names
-- output:ID and First Name

SELECT * , 
  substring(id,1,5) as new_id,
  substring(id,6) as first_name
  FROM bad_data ;