------------------Customer:create, get, delete----------------------------
CREATE PROCEDURE CreateCustomer @MobileNumber int,
@Name varchar(300),
@Email varchar(100),
@DateOfBirth varchar(12) AS
INSERT INTO
    Customers (
        MobileNumber,
        Name,
        Email,
        DateOfBirth,
        Orders,
        DateOfJoining,
        Value
    )
VALUES
    (
        @MobileNumber,
        @Name,
        @Email,
        @DateOfBirth,
        0,
        (
            SELECT
                CAST(GETDATE() AS Date)
        ),
        0
    )
GO
;

CREATE PROCEDURE GetCustomer @MobileNumber int AS
SELECT
    *
FROM
    Customers
WHERE
    MobileNumber = @MobileNumber
GO
;

CREATE PROCEDURE DeleteCustomer @MobileNumber int AS
DELETE FROM
    Customers
WHERE
    MobileNumber = @MobileNumber
GO
;

-------------------Order:Place,update,delete----------------------------------------------------
CREATE PROCEDURE PlaceOrder @Order_ID varchar(20),
@Date varchar(12),
@Customer_ID varchar(12),
@Product_ID varchar(200),
@Description varchar(1000),
@BillAmount int AS
INSERT INTO
    Orders (
        Order_ID,
        Date,
        Customer_ID,
        Product_ID,
        Description,
        BillAmount
    )
VALUES
    (
        @Order_ID,
        (
            SELECT
                CAST(GETDATE() AS Date)
        ),
        @Customer_ID,
        @Product_ID,
        @Description,
        @BillAmount
    )
GO
;

CREATE PROCEDURE UpdateOrder  @Order_ID varchar(20),
@Date varchar(12),
@Customer_ID varchar(12),
@Product_ID varchar(200),
@Description varchar(1000),
@BillAmount int AS
UPDATE
    Orders
SET
    Product_ID = @Product_ID,
    Description = @Description,
    BillAmount = @BillAmount
WHERE
    Order_ID = @Order_ID
GO
;

CREATE PROCEDURE DeleteOrder @Order_ID varchar(20) AS
DELETE FROM
    Orders
WHERE
    Order_ID = @Order_ID
GO
;

-----------------------------Process:create,changestate,delete,show-----------------------------------------------
CREATE PROCEDURE CreateProcess @Process_ID varchar(10),
@Order_ID varchar(20),
@State varchar(20) AS
INSERT INTO
    Process (Process_ID, Order_ID, State)
VALUES
    (@Process_ID, @Order_ID, 'Placed')
GO
;

CREATE PROCEDURE ChangeState @Process_ID varchar(10),
@State varchar(20) AS
UPDATE
    Process
SET
    State = @state
WHERE
    Process_ID = @Process_ID
GO
;

CREATE PROCEDURE DeleteProcess @Process_ID varchar(10) AS
DELETE FROM
    Process
WHERE
    Process_ID = @Process_ID
GO
;

CREATE PROCEDURE ShowProcess @Process_ID varchar(10) AS
select
    Process_ID,
    p.Order_ID,
    Customer_ID,
    Description,
    BillAmount,
    State
from
    orders as o
    join Process as p on p.Order_ID = o.Order_ID WHERE Process_ID = @Process_ID
GO
;

CREATE PROCEDURE ListTodayProcess AS
select
    o.Date
    p.Order_ID,
    Customer_ID,
    Description,
    BillAmount,
    State
from
    orders as o
    join Process as p on p.Order_ID = o.Order_ID Where o.Date = (SELECT CAST ((SELECT CAST(GETDATE() AS Date)) as VARCHAR(12)))
GO
;


-------------------------Product:create,updateprice,delete-------------------------------------------------
CREATE PROCEDURE CreateProduct @Product_ID varchar(200),
@Category varchar(100),
@ProductName varchar(200),
@Price int AS
INSERT INTO
    Products (Product_ID, Category, ProductName, Price)
VALUES
    (@Product_ID, @Category, @ProductName, @Price)
GO
;

CREATE PROCEDURE UpdatePrice @Product_ID varchar(200),
@Price int AS
UPDATE
    Product
SET
    Price = @Price
WHERE
    Product_ID = @Product_ID
GO
;

CREATE PROCEDURE DeleteProduct @Product_ID varchar(10) AS
DELETE FROM
    Products
WHERE
    Product_ID = @Product_ID
GO
;