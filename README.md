# sql-challenge

Background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

After having created the database schema and imported the data, these are the questions that are answered in the Analysis file:
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

Code location:
1. The provided data for this project is located in the following path: '../EmployeeSQL/Resources - Data/'
2. The database diagram that the schema is based on was creating using QuickDBD (quickdatabasediagrams.com) and is locaed in the following path: '../EmployeeSQL/'. It is a .jpg file titled 'EmployeesSQL DB Model Diagram.jpg'.
3. The schema creation SQL query code is located in the following path: '../EmployeeSQL/' and the file is titled 'DB_Schema_Creation.sql'
4. The analysis queries for the above listed questions is in the following path: '../EmployeeSQL/' and the file is titled 'Data_Analysis(Questions_and_Queries).sql'. 