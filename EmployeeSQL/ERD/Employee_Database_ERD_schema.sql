-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/BNHsBb
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employees" (
    "emp_no" INTEGER   NOT NULL,
    "emp_title" VARCHAR   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Department_Employees" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL
);

CREATE TABLE "Department_Manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INTEGER   NOT NULL
);

CREATE TABLE "Salaries" (
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL
);

CREATE TABLE "Titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title" FOREIGN KEY("emp_title")
REFERENCES "Titles" ("title_id");

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

