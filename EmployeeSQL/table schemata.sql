DROP TABLE IF EXISTS employees;
CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,   
    dept_name VARCHAR(100) NOT NULL    
);

select * from departments;


CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(4),
    PRIMARY KEY (emp_no, dept_no)
);

select * from dept_emp;


CREATE TABLE dept_manager (
    dept_no VARCHAR(4),
    emp_no INT,
    PRIMARY KEY (dept_no, emp_no)
);

select * from dept_manager

CREATE TABLE employees (
    emp_no INT,
    emp_title_id VARCHAR(5),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHAR(1),
    hire_date DATE,
    PRIMARY KEY (emp_no)
);

select * from employees

CREATE TABLE salaries (
    emp_no INT,
    salary DECIMAL(10, 2),
    PRIMARY KEY (emp_no)
);

select * from salaries

CREATE TABLE titles (
    title_id VARCHAR(5),
    title VARCHAR(50),
    PRIMARY KEY (title_id)
);

select * from titles

