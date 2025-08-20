-- Create a table to store employee data
CREATE TABLE EMP_MASTER (
    EmpNo INT,
    EmpName VARCHAR(50),
    JoiningDate DATE,
    Salary DECIMAL(10,2),
    Commission DECIMAL(10,2),
    City VARCHAR(50),
    DeptCode VARCHAR(10)
);

-- Insert employee records
INSERT INTO EMP_MASTER (EmpNo, EmpName, JoiningDate, Salary, Commission, City, DeptCode) VALUES
(101, 'Keyur', '2002-01-05', 12000.00, 4500, 'Rajkot', '3@g'),
(102, 'Hardik', '2004-02-15', 14000.00, 2500, 'Ahmedabad', '3@'),
(103, 'Kajal', '2006-03-14', 15000.00, 3000, 'Baroda', '3-GD'),
(104, 'Bhoomi', '2005-06-23', 12500.00, 1000, 'Ahmedabad', '1A3D'),
(105, 'Harmit', '2004-02-15', 14000.00, 2000, 'Rajkot', '312A');
