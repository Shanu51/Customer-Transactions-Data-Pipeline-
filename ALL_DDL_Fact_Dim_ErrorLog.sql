-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(50),
    Email NVARCHAR(50),
    PhoneNumber NVARCHAR(15)
);


-- Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(50),
    ProductCategory NVARCHAR(50)
);


-- PaymentMethods Table
CREATE TABLE PaymentMethods (
    PaymentMethodID INT PRIMARY KEY,
    PaymentMethodType NVARCHAR(20)
);


-- Locations Table
CREATE TABLE Locations (
    LocationID INT PRIMARY KEY,
    City NVARCHAR(50),
    State NVARCHAR(50),
    Country NVARCHAR(50)
);

-- ErrorLog Table
CREATE TABLE ErrorLog (
    PipelineId VARCHAR(100),
    FileName VARCHAR(100),
    Status VARCHAR(20),
    Log VARCHAR(MAX),
    LogTime DATETIME DEFAULT GETDATE()
);

-- Fact Table Transactions
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    PaymentMethodID INT,
    LocationID INT,
    TransactionDate DATE,
    Quantity INT,
    Amount DECIMAL(10,2),
    TotalAmount AS (Quantity * Amount) PERSISTED,
    
    -- Foreign Key Constraints (optional, if related tables exist)
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (PaymentMethodID) REFERENCES PaymentMethods(PaymentMethodID),
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
);




-- Stored Procedure Activity
CREATE PROCEDURE Sp_ErrorLog
    @PipelineName NVARCHAR(100),
    @ActivityName NVARCHAR(100),
    @ErrorMessage NVARCHAR(MAX)
AS
BEGIN
    INSERT INTO ErrorLog (PipelineName, ActivityName, ErrorMessage)
    VALUES (@PipelineName, @ActivityName, @ErrorMessage);
END;
