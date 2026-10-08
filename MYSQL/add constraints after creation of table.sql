CREATE TABLE Employee (
    Employee_ID INT,
    Employee_Name VARCHAR(50),
    Email VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    City VARCHAR(50)
);

-- 2. Add Primary Key
ALTER TABLE Employee
ADD CONSTRAINT PK_Employee
PRIMARY KEY (Employee_ID);

-- 3. Add NOT NULL Constraints
ALTER TABLE Employee
MODIFY Employee_Name VARCHAR(50) NOT NULL;

-- 

ALTER TABLE Employee
MODIFY Department VARCHAR(50) NOT NULL;

-- 4. Add UNIQUE Constraint
ALTER TABLE Employee
ADD CONSTRAINT UQ_Email
UNIQUE (Email);

-- 5. Add DEFAULT Constraint
ALTER TABLE Employee
ALTER Salary SET DEFAULT 25000;


-- 6. Add CHECK Constraint
ALTER TABLE Employee
ADD CONSTRAINT CHK_Salary
CHECK (Salary >= 10000);


-- Add Department CHECK Constraint
ALTER TABLE Employee
ADD CONSTRAINT CHK_Department
CHECK (Department IN ('IT', 'HR', 'Finance', 'Sales'));

