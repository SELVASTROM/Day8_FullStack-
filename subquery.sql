-- Create departments table
use selva;
CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);

-- Insert sample data
INSERT INTO department VALUES (1, 'HR', 'Chennai');
INSERT INTO department VALUES (2, 'Sales', 'Mumbai');
INSERT INTO department VALUES (3, 'IT', 'Chennai');

-- Create employees table
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

-- Insert sample data
INSERT INTO employee VALUES (101, 'Ravi', 50000, 1);
INSERT INTO employee VALUES (102, 'Sita', 60000, 2);
INSERT INTO employee VALUES (103, 'Arjun', 45000, 1);
INSERT INTO employee VALUES (104, 'Priya', 70000, 3);
INSERT INTO employee VALUES (105, 'Karthik', 55000, 2);
INSERT INTO employee VALUES (106, 'Deepika', 75000, 3);
INSERT INTO employee VALUES (107, 'Mahesh', 40000, 1);

select salary,name
from employee
where salary>(select  avg(salary) from employee);
select department_name,salary,name
from employee e
right join department on e.department_id=department.department_id
where salary>60000;
select name,salary,department_name
from employee e
left join department on e.department_id=department.department_id
where salary =(select Min(salary) from employee);
select department_name,salary
from employee e
join department on e.department_id=department.department_id
where salary >(select avg(salary) from employee);
select department.department_name,salary,name
from employee e
join department on e.department_id=department.department_id
group by department.department_name
having count(emp_id)>5
and avg (salary) <50000 ;