-- Table Creation (in Order)

CREATE TABLE Departments (
	dept_no varchar PRIMARY KEY NOT NULL,
	dept_name varchar   NOT NULL);



CREATE TABLE Employees (
	emp_no int PRIMARY KEY  NOT NULL,
    emp_title_id varchar NOT NULL,
    birth_date date   NOT NULL,
	first_name varchar   NOT NULL,
	last_name varchar   NOT NULL,
	sex varchar   NOT NULL,
	hire_date date   NOT NULL);



CREATE TABLE Dept_Manager (
	dept_no varchar   REFERENCES Departments(dept_no),
	emp_no int  REFERENCES Employees(emp_no));

ALTER TABLE Titles ADD CONSTRAINT fk_titles_employees FOREIGN KEY(title_id)
REFERENCES Employees (emp_title_id);

CREATE TABLE Titles (

    title_id varchar,
	title varchar   NOT NULL);

ALTER TABLE Titles ADD CONSTRAINT fk_titles_employees FOREIGN KEY(emp_title_id)
REFERENCES Employees (emp_title_id);


CREATE TABLE Salaries (

    emp_no int REFERENCES Employees(emp_no),
	salary int   NOT NULL);


CREATE TABLE Dept_Emp (
	emp_no int   REFERENCES Employees(emp_no),
	dep_no varchar  REFERENCES Departments(dept_no));
