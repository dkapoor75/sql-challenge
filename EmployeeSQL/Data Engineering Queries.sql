CREATE TABLE Department
(
  	dept_no    Varchar(4) PRIMARY KEY NOT NULL,
  	dept_name  VARCHAR(55)
)

CREATE TABLE Title 
(
	title_id VARCHAR(5) PRIMARY KEY NOT NULL,
  	title    VARCHAR(55)
)

CREATE TABLE employees 
(
  	emp_no     Integer PRIMARY KEY NOT NULL,
  	emp_title  Varchar(5),
  	birth_date Date,
	first_name Varchar(55),
	last_name  Varchar(55),
	sex	   Varchar(1),
	hire_date  Date,
	foreign key (emp_title) references title(title_id)
)

CREATE TABLE dept_manager 
(
  	dept_no    Varchar(4) NOT NULL,
  	emp_no     Integer    NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	foreign key (dept_no) references department(dept_no),
	foreign key (emp_no) references employees(emp_no)
)

CREATE TABLE dept_emp
(
  	emp_no     Integer    NOT NULL,
	dept_no    Varchar(4) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	foreign key (dept_no) references department(dept_no),
	foreign key (emp_no) references employees(emp_no)
)

CREATE TABLE salaries
(
  	emp_no     Integer PRIMARY KEY NOT NULL,
	salary     Integer            ,
	foreign key (emp_no) references employees(emp_no)
)

