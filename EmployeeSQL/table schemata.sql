DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS departments;


CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,   
    dept_name VARCHAR(100) NOT NULL    
);

select * from departments;


CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex CHAR(1) NOT NULL,   -- Assuming sex will be 'M' or 'F', 'CHAR(1)' is fine
    hire_date DATE NOT NULL
);

 select * from employees


CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp;

CREATE TABLE dept_manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_manager


CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from salaries



CREATE TABLE titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

select * from titles


ALTER TABLE dept_emp
ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY (dept_no) REFERENCES departments(dept_no);

ALTER TABLE dept_manager
ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

ALTER TABLE salaries
ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

