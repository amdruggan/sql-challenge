--Creating Schema with all tables, their columns, primary keys or composite keys from multiple primary keys.
--Schema is created in a manner where all table references occur after that table and it's columns/primary and foreign keys are created and referenceable.

--Create table: titles using title_id as primary key
CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);
	
--Create table: employees using emp_no as primary key and emp_title_id as foreign key referencing titles table
CREATE TABLE employees (
	emp_no int not null,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null,
	primary key (emp_no),
	foreign key (emp_title_id) references titles (title_id)
);

--Create table: salaries using emp_no as primary key and emp_no as foreign key referencing employees table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary int not null,
	primary key (emp_no),
	foreign key (emp_no) references employees (emp_no)
);
	
--Create table: departments using dept_no as primary key
CREATE TABLE departments (
	dept_no varchar not null,
	dept_name varchar not null,
	primary key (dept_no)
);
	
--Create table: dept_emp using emp_no and dept_no as composite primary key
--Additionally emp_no and dept_no are foreign keys referencing employees and departments tables respectively
CREATE TABLE dept_emp (
	emp_no int not null,
	dept_no varchar not null,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees (emp_no)
    foreign key (dept_no) references departments (dept_no)
);
	
--Create table: dept_manager using emp_no and dept_no as composite primary key
--Additionally emp_no and dept_no are foreign keys referencing employees and departments tables respectively
CREATE TABLE dept_manager (
    dept_no varchar not null, 
    emp_no int not null, 
    primary key (dept_no, emp_no), 
    foreign key (emp_no) references employees (emp_no), 
    foreign key (dept_no) references departments (dept_no)
);