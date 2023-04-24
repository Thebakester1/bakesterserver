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
    DateOfBirth date,
    Orders int,
    DateOfJoining date,
    Value int
);

CREATE TABLE Orders(
    Order_ID varchar(20) Primary Key,
    Date date,
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


insert into Products (Product_ID, Category, ProductName, Price) values ('010001', 'Cakes', 'Rasmalai', '700');
insert into Products (Product_ID, Category, ProductName, Price) values ('010002', 'Cakes', 'Nutella', '800');
insert into Products (Product_ID, Category, ProductName, Price) values ('010003', 'Cakes', 'DarkForest', '600');
insert into Products (Product_ID, Category, ProductName, Price) values ('020001', 'Donuts', 'basic', '150');
insert into Products (Product_ID, Category, ProductName, Price) values ('020002', 'Donuts', 'assorted', '250');
insert into Products (Product_ID, Category, ProductName, Price) values ('030001', 'Chocolates', 'white', '100');
insert into Products (Product_ID, Category, ProductName, Price) values ('030002', 'Chocolates', 'Dark', '70');
insert into Products (Product_ID, Category, ProductName, Price) values ('040001', 'Hampers', 'Valentines', '500');


insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2522615213', 'Sylas McCurt', 'smccurt0@europa.eu', '1997-09-23', 1, '2023-03-02', 500760.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6444506684', 'Pebrook Childerhouse', 'pchilderhouse1@homestead.com', '2014-12-23', 2, '2020-04-08', 992396.27);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9393389891', 'Conny Kinsley', 'ckinsley2@elpais.com', '2016-07-24', 3, '2021-08-15', 466644.56);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6422446696', 'Franni Safell', 'fsafell3@apple.com', '1992-06-16', 4, '2022-02-23', 643484.74);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5657495224', 'Gunilla Boultwood', 'gboultwood4@mapy.cz', '2008-10-29', 5, '2020-08-23', 166934.95);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8968399328', 'Daisy Thonger', 'dthonger5@t-online.de', '2004-09-17', 6, '2022-05-07', 901861.67);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1602154056', 'Tonya Ellif', 'tellif6@arizona.edu', '2004-06-10', 7, '2020-12-27', 145093.42);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3386389403', 'Hyacinth Brehault', 'hbrehault7@bluehost.com', '2003-04-10', 8, '2022-07-01', 667692.92);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3018687233', 'Dyan Larraway', 'dlarraway8@posterous.com', '1992-10-25', 9, '2020-04-11', 882734.48);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2031234750', 'Belvia Quarles', 'bquarles9@vinaora.com', '2016-12-25', 10, '2021-01-29', 466186.1);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3141427792', 'Maddie Lineen', 'mlineena@digg.com', '2007-05-13', 11, '2023-02-04', 454891.49);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5795922853', 'Willa Castelow', 'wcastelowb@mysql.com', '2000-06-01', 12, '2022-12-15', 568740.01);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2724504092', 'Silva Rattenbury', 'srattenburyc@cbc.ca', '2006-08-01', 13, '2020-10-07', 608293.08);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2492514613', 'Marget Shelvey', 'mshelveyd@skyrock.com', '2009-08-24', 14, '2020-12-29', 174496.28);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7418450028', 'Ward Cornelius', 'wcorneliuse@youtu.be', '2014-09-13', 15, '2021-08-06', 470466.53);


insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (1, '2020-08-22', 2522615213, '040001', 'Partial traumatic amputation of one lesser toe', 599);
insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (2, '2021-03-05', 6444506684, '010003', 'Nondisp fx of prox phalanx of unsp fngr, 7thD', 448);
insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (3, '2022-01-13', 9393389891, '010001', 'Injury of unsp nerve at ank/ft level, right leg, sequela', 916);
insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (4, '2023-02-02', 6422446696, '010002', 'Poisoning by aspirin, assault', 336);
insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (5, '2021-12-16', 5657495224, '030002', 'Unsp inj extn musc/fasc/tend l lit fngr at wrs/hnd lv, sqla', 509);
insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (6, '2020-05-27', 7418450028, '030002', 'Displ trimalleol fx unsp lower leg, init for opn fx type I/2', 140);
insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (7, '2020-11-09', 5657495224, '010002', 'Poisn by crbnc-anhydr inhibtr,benzo/oth diuretc,slf-hrm,subs', 326);
insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (8, '2022-11-30', 8968399328, '010003', 'Blister (nonthermal) of unspecified thumb', 236);
insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (9, '2021-04-20', 8968399328, '030001', 'Driver of special industr vehicle injured in traf, sequela', 805);

insert into Process (Process_ID, Order_ID, State) values (1, 7, 'placed');
insert into Process (Process_ID, Order_ID, State) values (2, 1, 'Confirmed');
insert into Process (Process_ID, Order_ID, State) values (3, 1, 'Confirmed');
insert into Process (Process_ID, Order_ID, State) values (4, 9, 'placed');
insert into Process (Process_ID, Order_ID, State) values (5, 1, 'closed');
insert into Process (Process_ID, Order_ID, State) values (6, 1, 'Confirmed');
insert into Process (Process_ID, Order_ID, State) values (7, 2, 'ready');
insert into Process (Process_ID, Order_ID, State) values (8, 3, 'placed');
insert into Process (Process_ID, Order_ID, State) values (9, 7, 'closed');
insert into Process (Process_ID, Order_ID, State) values (10, 8, 'ready');

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
    o.Date,
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