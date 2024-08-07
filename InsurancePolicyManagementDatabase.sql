CREATE DATABASE InsurancePolicyManagement;

CREATE TABLE Customers(
	CustomerID INT PRIMARY KEY,
	FirstName VARCHAR(20) NOT NULL,
	LastName VARCHAR(20) NOT NULL,
	Email VARCHAR(50) UNIQUE NOT NULL,
	ContactNo VARCHAR(20) UNIQUE NOT NULL,
	Address VARCHAR(200) NOT NULL,
	CustomerImage VARBINARY(MAX)
);
SELECT * FROM Customers

CREATE TABLE Policies(
    PolicyID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    PolicyType VARCHAR(20) NOT NULL,    --Life or Non-life--
    PolicyMonth VARCHAR(10) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
SELECT * FROM Policies

CREATE TABLE PolicyDetails(
    PolicyDetailID INT PRIMARY KEY,
    PolicyID INT NOT NULL,
    PolicyName VARCHAR(50) NOT NULL,
    PolicyDescription VARCHAR(200) NOT NULL,
    FOREIGN KEY (PolicyID) REFERENCES Policies(PolicyID)
);
SELECT * FROM PolicyDetails

CREATE TABLE Users(
    UserID INT PRIMARY KEY,
    CustomerID INT,
    UserName VARCHAR(50) UNIQUE NOT NULL,
    PasswordHash VARBINARY(MAX) NOT NULL,
    UserType VARCHAR(20) NOT NULL                --Admin or Customer--
);

SELECT * FROM Users

