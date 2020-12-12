# SQL - Employee Database: A Mystery in Two Parts.

## Overview:
Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.
In this, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, you will perform:
* Data Engineering
* Data Analysis

<img src = "https://github.com/DSB011/SQL-Employee-Database/blob/master/Images/sql.png"><br><br>
## Data Modeling:
Inspected the CSVs and sketch out an ERD of the tables. Used the tool [quickdatabasediagrams](https://www.quickdatabasediagrams.com/) to create ERD diagram.

## Data Engineering:
* Used the information to create a table schema for each of the six CSV files. Also, specified data types, primary keys, foreign keys, and other constraints.
* Imported each CSV file into the corresponding SQL table in the same order. 

## Data Analysis:
Performed the following:

* Listed the following details of each employee: employee number, last name, first name, sex, and salary.
* Listed first name, last name, and hire date for employees who were hired in 1986.
* Listed the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
* Listed the department of each employee with the following information: employee number, last name, first name, and department name.
* Listed first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
* Listed all employees in the Sales department, including their employee number, last name, first name, and department name.
* Listed all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
* In descending order, listed the frequency count of employee last names, i.e., how many employees share each last name.

## Bonus:
As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

* Imported the SQL database into Pandas. 
* Consulted [SQLAlchemy documentation](https://docs.sqlalchemy.org/en/14/core/engines.html#postgresql) for reference.
* Created a histogram to visualize the most common salary ranges for employees.
* Created a bar chart of average salary by title.

<img src = "https://github.com/DSB011/SQL-Employee-Database/blob/master/EmployeeSQL/Common%20Salary%20Ranges%20for%20Employees.png"><br><br>
<img src = "https://github.com/DSB011/SQL-Employee-Database/blob/master/EmployeeSQL/Average_Salary_Title.png"><br><br>


## Tech Environment Used:
Postgres, ERD, Jupyter Notebook, Pandas.

