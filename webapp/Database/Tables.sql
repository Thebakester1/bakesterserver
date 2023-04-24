CREATE DATABASE bakester

use bakester

CREATE TABLE Products (
    Product_ID varchar(200) Primary key,
    Category varchar(100),
    ProductName varchar(200) not null,
    Price int not null
);

CREATE TABLE Customers(
    MobileNumber varchar(20) Primary key,
    Name varchar(300) not null,
    Email varchar(100),
    DateOfBirth varchar(12),
    Orders int,
    DateOfJoining varchar(12),
    Value int
);

CREATE TABLE Orders(
    Order_ID varchar(20) Primary Key,
    Date varchar(12),
    Customer_ID varchar(20),
    Product_ID varchar(200),
    Description varchar(1000),
    BillAmount int,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(MobileNumber),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);

CREATE TABLE Process(
    Process_ID varchar(10) Primary key,
    Order_ID varchar(20),
    State varchar(20),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);
