CREATE TABLE "Employee" (
    "emp_no" SERIAL   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    "Birth_date" date   NOT NULL,
    "first_name" Varchar   NULL,
    "last_name" Varchar   NULL,
    "gender" Varchar   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salary" (
    "emp_no" int   NOT NULL,
    "Salary" int   NOT NULL
);

CREATE TABLE "Department_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" VARCHAR   NOT NULL
);

CREATE TABLE "Department" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" Varchar   NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" int   NOT NULL
);

CREATE TABLE "Title" (
    "emp_title_id" VARCHAR   NOT NULL,
    "title" Varchar   NOT NULL
);
SELECT *
FROM Employee
