CREATE TABLE EmployeeDetails (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100) NOT NULL,
    ContactNo VARCHAR(100) NOT NULL,
    Department VARCHAR(100) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,
    JoiningDate DATETIME NULL,
    Bonus DECIMAL(10,2) DEFAULT 0.0
);

CREATE TABLE EmployeeLogs (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeID INT NOT NULL,
    EmployeeName VARCHAR(100) NOT NULL,
    ActionPerformed VARCHAR(100) NOT NULL,
    ActionDate DATETIME NOT NULL DEFAULT GETDATE()
);
