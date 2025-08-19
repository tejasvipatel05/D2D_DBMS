CREATE TABLE STU_INFO (
    Rno INT PRIMARY KEY,
    Name VARCHAR(50),
    Branch VARCHAR(10)
);

CREATE TABLE RESULT (
    Rno INT FOREIGN KEY REFERENCES STU_INFO(Rno),
    SPI FLOAT
);

CREATE TABLE EMPLOYEE_MASTER (
    EmployeeNo VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    ManagerNo VARCHAR(10) FOREIGN KEY REFERENCES EMPLOYEE_MASTER(EmployeeNo)
);

INSERT INTO STU_INFO VALUES
(101, 'Raju', 'CE'),
(102, 'Amit', 'CE'),
(103, 'Sanjay', 'ME'),
(104, 'Neha', 'EC'),
(105, 'Meera', 'EE'),
(106, 'Mahesh', 'ME');

INSERT INTO RESULT VALUES
(101, 8.8),
(102, 9.2),
(103, 7.6),
(104, 8.2),
(105, 7.0),
(106, 8.9);

INSERT INTO EMPLOYEE_MASTER VALUES
('E01', 'Tarun', NULL),
('E02', 'Rohan', 'E02'),
('E03', 'Priya', 'E01'),
('E04', 'Milan', 'E03'),
('E05', 'Jay', 'E01'),
('E06', 'Anjana', 'E04');
