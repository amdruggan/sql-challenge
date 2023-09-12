/*
Answer the following questions using the database schema with the imported data from the CSVs in the Resources folder in this repository:

1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
*/

--Queries:

--1. List the employee number, last name, first name, sex, and salary of each employee.

select
    e.emp_no,
    e.last_name,
    e.first_name,
    e.sex,
    s.salary
from employees e
inner join salaries s
    on e.emp_no = s.emp_no
order by e.last_name, e.first_name, e.emp_no;

--2. List the first name, last name, and hire date for the employees who were hired in 1986.

select
    e.first_name,
    e.last_name,
    e.hire_date
from employees e
where e.hire_date between '1986-01-01' and '1986-12-31'
order by e.hire_date;

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

select
    (e.last_name + ', ' + e.first_name) as 'Manager_Fullname', --Adding this as the first column so manager fullname is present. 
    dm.dept_no,
    d.dept_name,
    e.emp_no,
    e.last_name,
    e.first_name
from dept_manager dm
inner join departments d
    on dm.dept_no = d.dept_no
inner join employees e
    on dm.emp_no = e.emp_no
order by dm.dept_no, dm.emp_no;

--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select 
    de.emp_no, 
    e.last_name, 
    e.first_name, 
    d.dept_no, 
    d.dept_name
from dept_emp de
inner join departments d 
    on de.dept_no = d.dept_no
inner join employees e 
    on de.emp_no = e.emp_no
order by de.emp_no;

--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select 
    e.last_name, 
    e.first_name, 
    e.sex
from employees 
where e.first_name = 'Hercules' 
    and e.last_name like 'B%'
order by e.last_name;

--6. List each employee in the Sales department, including their employee number, last name, and first name.

select 
    e.emp_no, 
    e.last_name, 
    e.first_name
from employees e
inner join dept_emp de 
    on e.emp_no = de.emp_no 
inner join departments d
    on de.dept_no = d.dept_no
where d.dept_name = 'Sales'
order by e.emp_no;

--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

select 
    e.emp_no, 
    e.last_name, 
    e.first_name, 
    d.dept_name
from employees e
inner join dept_emp de 
    on e.emp_no = de.emp_no
inner join departments d
    on de.dept_no = d.dept_no
where d.dept_name in ('Sales', 'Development')
order by d.dept_name, e.emp_no;

--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

select 
    e.last_name as 'Last Name', 
    count(e.last_name) as 'Occurances of Last Name'
from employees e
group by e.last_name
order by count(e.last_name) desc;

--Data analysis complete