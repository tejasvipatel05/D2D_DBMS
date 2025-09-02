CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Designation (
    DesignationID INT PRIMARY KEY,
    DesignationName VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Person (
    PersonID INT IDENTITY(101,1) PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Salary DECIMAL(8,2) NOT NULL,
    JoiningDate DATETIME NOT NULL,
    DepartmentID INT NULL,
    DesignationID INT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY (DesignationID) REFERENCES Designation(DesignationID)
);

INSERT INTO Department VALUES 
(1, 'Admin'), 
(2, 'IT'), 
(3, 'HR'), 
(4, 'Account');

INSERT INTO Designation VALUES 
(11, 'Jobber'), 
(12, 'Welder'), 
(13, 'Clerk'), 
(14, 'Manager'), 
(15, 'CEO');

INSERT INTO Person (FirstName, LastName, Salary, JoiningDate, DepartmentID, DesignationID) VALUES
('Rahul', 'Anshu', 56000, '1990-01-01', 1, 12),
('Hardik', 'Hinsu', 18000, '1990-09-25', 2, 11),
('Bhavin', 'Kamani', 25000, '1991-05-14', NULL, 11),
('Bhoomi', 'Patel', 39000, '2014-02-20', 1, 13),
('Rohit', 'Rajgor', 17000, '1990-07-23', 2, 15),
('Priya', 'Mehta', 25000, '1990-10-18', 2, NULL),
('Neha', 'Trivedi', 18000, '2014-02-20', 3, 15);
