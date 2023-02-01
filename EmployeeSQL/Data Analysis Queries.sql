-- Query 1
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
from employees e 
join salaries s on e.emp_no = s.emp_no 

-- Query 2
select first_name, last_name, hire_date
from employees 
where EXTRACT(year FROM hire_date) = '1986' ORDER BY HIRE_DATE

-- Query 3
select dm.dept_no, dm.emp_no, d.dept_name, e.last_name, e.first_name
from dept_manager dm 
join department d on dm.dept_no = d.dept_no
join employees  e on dm.emp_no  = e.emp_no
order by dm.dept_no, dm.emp_no

-- Query 4
select e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name 
from employees e 
join dept_emp   de on de.emp_no  = e.emp_no
join department d  on de.dept_no = d.dept_no
order by e.emp_no

-- Query 5
select emp_no, last_name, first_name, sex
from employees 
where first_name = 'Hercules' and last_name like 'B%'

-- Query 6
select de.emp_no, de.dept_no, e.first_name, e.last_name, d.dept_name
from dept_emp de 
join employees  e  on de.emp_no  = e.emp_no
join department d  on de.dept_no = d.dept_no
where de.dept_no = 'd007'

-- Query 7
select de.emp_no, de.dept_no, e.first_name, e.last_name, d.dept_name
from dept_emp de 
join employees  e  on de.emp_no  = e.emp_no
join department d  on de.dept_no = d.dept_no
where de.dept_no in ('d005', 'd007')
order by dept_name

-- Query 8
select last_name, count(*)
from employees
group by last_name
order by count(*) desc





