# Advance Exercise:

As part of your job responsibilities, you have been tasked with developing a reporting solution for the accounting department of your company. 
The department has requested a report that summarizes the number of tasks completed by employees during a specific period of time. 
The report should display the total number of tasks completed by each employee, as well as the number of tasks completed each day.

To generate this report, you will need to create a new schema in the database and design four tables with appropriate column names, data types, and constraints. 
The tables should be named Sales, Imports, Revenue Analysis, and Profit Analysis, and each should have three columns: Name, Date, and Jobs Completed.

Once the tables have been created, you will need to insert data into them using SQL statements.

After inserting the data, you will need to use Python and write a dynamic SQL statement that creates a column for each day in the specified date range, 
which will be entered by the user. The statement will then write the sum of each employee's completed tasks on that day in the corresponding column. 
This step will ensure that the final report only has one row for each employee and one column for each day, 
rather than multiple rows for each employee and multiple rows for each date.

In addition to the initial report, the accounting department has requested a second report that shows the sum of each employee's completed tasks across all dates, 
along with a grand total for each employee. This second report, which we will call the Task Analysis, will be created using another SQL query.

Finally, you will need to create an Excel workbook that displays the results of both SQL queries. 
The first sheet of the workbook should show the results of the Task Report, which summarizes the number of tasks completed by each employee on each day. 
The second sheet should display the Task Analysis, which shows the sum of each employee's completed tasks across all dates, along with a grand total for each employee.
