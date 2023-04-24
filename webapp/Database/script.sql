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


insert into Products (Product_ID, Category, ProductName, Price) values ('010001', 'Cakes', 'Rasmalai', '700');
insert into Products (Product_ID, Category, ProductName, Price) values ('010002', 'Cakes', 'Nutella', '800');
insert into Products (Product_ID, Category, ProductName, Price) values ('010003', 'Cakes', 'DarkForest', '600');
insert into Products (Product_ID, Category, ProductName, Price) values ('020001', 'Donuts', 'basic', '150');
insert into Products (Product_ID, Category, ProductName, Price) values ('020002', 'Donuts', 'assorted', '250');
insert into Products (Product_ID, Category, ProductName, Price) values ('030001', 'Chocolates', 'white', '100');
insert into Products (Product_ID, Category, ProductName, Price) values ('030002', 'Chocolates', 'Dark', '70');
insert into Products (Product_ID, Category, ProductName, Price) values ('040001', 'Hampers', 'Valentines', '500');


insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2522615213', 'Sylas McCurt', 'smccurt0@europa.eu', '23-09-1997', 1, '02-03-2023', 500760.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6444506684', 'Pebrook Childerhouse', 'pchilderhouse1@homestead.com', '23-12-2014', 2, '08-04-2020', 992396.27);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9393389891', 'Conny Kinsley', 'ckinsley2@elpais.com', '24-07-2016', 3, '15-08-2021', 466644.56);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6422446696', 'Franni Safell', 'fsafell3@apple.com', '16-06-1992', 4, '23-02-2022', 643484.74);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5657495224', 'Gunilla Boultwood', 'gboultwood4@mapy.cz', '29-10-2008', 5, '23-08-2020', 166934.95);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8968399328', 'Daisy Thonger', 'dthonger5@t-online.de', '17-09-2004', 6, '07-05-2022', 901861.67);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1602154056', 'Tonya Ellif', 'tellif6@arizona.edu', '10-06-2004', 7, '27-12-2020', 145093.42);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3386389403', 'Hyacinth Brehault', 'hbrehault7@bluehost.com', '10-04-2003', 8, '01-07-2022', 667692.92);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3018687233', 'Dyan Larraway', 'dlarraway8@posterous.com', '25-10-1992', 9, '11-04-2020', 882734.48);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2031234750', 'Belvia Quarles', 'bquarles9@vinaora.com', '25-12-2016', 10, '29-01-2021', 466186.1);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3141427792', 'Maddie Lineen', 'mlineena@digg.com', '13-05-2007', 11, '04-02-2023', 454891.49);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5795922853', 'Willa Castelow', 'wcastelowb@mysql.com', '01-06-2000', 12, '15-12-2022', 568740.01);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2724504092', 'Silva Rattenbury', 'srattenburyc@cbc.ca', '01-08-2006', 13, '07-10-2020', 608293.08);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2492514613', 'Marget Shelvey', 'mshelveyd@skyrock.com', '24-08-2009', 14, '29-12-2020', 174496.28);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7418450028', 'Ward Cornelius', 'wcorneliuse@youtu.be', '13-09-2014', 15, '06-08-2021', 470466.53);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5254686164', 'Salim Giacomuzzi', 'sgiacomuzzif@naver.com', '13-03-2020', 16, '28-08-2022', 863751.63);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2488319929', 'Linzy Leward', 'llewardg@ow.ly', '07-11-1991', 17, '11-05-2022', 861984.69);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7515404975', 'Becky Marini', 'bmarinih@about.me', '12-07-1994', 18, '28-04-2021', 463591.33);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3587415648', 'Kahlil Tomasi', 'ktomasii@squidoo.com', '01-10-2003', 19, '05-11-2021', 964023.85);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4834152743', 'Ede Seckington', 'eseckingtonj@tiny.cc', '07-06-1992', 20, '14-08-2021', 50498.57);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3485154973', 'Conan Kleinberer', 'ckleinbererk@prlog.org', '09-08-1992', 21, '07-06-2020', 767086.09);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9727623053', 'Burton Bygraves', 'bbygravesl@cyberchimps.com', '12-12-2005', 22, '29-03-2022', 527058.3);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2968674058', 'Siusan Ten Broek', 'stenm@constantcontact.com', '07-05-2007', 23, '20-06-2021', 816383.01);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9509586324', 'Rockwell Ormes', 'rormesn@intel.com', '17-04-2002', 24, '29-05-2020', 454239.5);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5615935506', 'Anabel Polino', 'apolinoo@list-manage.com', '14-10-2012', 25, '06-09-2021', 582655.34);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4006298305', 'Fernanda Sprionghall', 'fsprionghallp@ucsd.edu', '28-07-2003', 26, '03-12-2021', 273556.56);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6958265644', 'De witt Clemence', 'dwittq@unicef.org', '10-02-2014', 27, '09-03-2023', 809298.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4222641086', 'Demeter Bathow', 'dbathowr@ovh.net', '12-03-1997', 28, '02-09-2022', 475834.14);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2203466626', 'Sunshine Bernardy', 'sbernardys@vk.com', '29-10-2016', 29, '23-09-2022', 479207.4);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6605399334', 'Vivianne McMurty', 'vmcmurtyt@sun.com', '04-04-2008', 30, '11-06-2021', 251818.55);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3243208847', 'Fritz Huitt', 'fhuittu@aboutads.info', '13-02-2000', 31, '10-06-2021', 363603.01);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8608052908', 'Dolf Rickman', 'drickmanv@netlog.com', '03-05-2019', 32, '04-01-2022', 60340.3);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6191524544', 'Dene Escalero', 'descalerow@ebay.com', '20-06-2017', 33, '29-11-2022', 941610.71);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9103091215', 'Guenna Alvaro', 'galvarox@yahoo.com', '17-02-2015', 34, '03-12-2021', 902091.95);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5204108002', 'Mikol Stroud', 'mstroudy@ehow.com', '17-12-1991', 35, '19-06-2021', 937191.2);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9576632414', 'Huntlee Tofpik', 'htofpikz@furl.net', '13-02-2011', 36, '28-06-2020', 998236.62);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8703415542', 'Holden Sheldon', 'hsheldon10@nps.gov', '13-08-2010', 37, '15-10-2022', 350237.51);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1278235130', 'Jessie Tiffin', 'jtiffin11@dot.gov', '27-08-2008', 38, '11-01-2021', 122073.34);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4185356474', 'Oswell Palfreyman', 'opalfreyman12@domainmarket.com', '31-03-2018', 39, '18-07-2020', 295342.7);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6101665720', 'Kaile Anyene', 'kanyene13@networksolutions.com', '09-08-1992', 40, '01-01-2021', 90278.87);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6499893737', 'Cosimo Harborow', 'charborow14@g.co', '19-05-1996', 41, '06-01-2023', 230189.71);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5643659697', 'Melina Bickersteth', 'mbickersteth15@jigsy.com', '16-12-1993', 42, '01-09-2021', 250934.87);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9535391675', 'Fifine Ost', 'fost16@pagesperso-orange.fr', '24-07-1999', 43, '20-12-2022', 190263.45);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6325451105', 'Alon Warn', 'awarn17@pcworld.com', '26-06-2003', 44, '15-10-2022', 854991.51);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3301730361', 'Elisabet Kase', 'ekase18@biglobe.ne.jp', '23-10-1999', 45, '16-09-2021', 765795.99);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3262536803', 'Kendricks Berrygun', 'kberrygun19@t.co', '14-12-2006', 46, '31-01-2022', 498851.52);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6679031268', 'Morie Cant', 'mcant1a@latimes.com', '16-01-2002', 47, '24-05-2020', 656783.96);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9658189079', 'Erny Jordison', 'ejordison1b@360.cn', '06-12-1996', 48, '14-12-2022', 722684.38);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6938068727', 'Shoshana Lacoste', 'slacoste1c@macromedia.com', '22-07-1993', 49, '09-04-2021', 800633.13);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6464641889', 'Obadias Cossey', 'ocossey1d@so-net.ne.jp', '28-06-2008', 50, '08-06-2022', 671852.37);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3358604705', 'Elia Honywill', 'ehonywill1e@furl.net', '18-05-2010', 51, '08-07-2020', 141238.9);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7159230633', 'Ronica Avramovitz', 'ravramovitz1f@answers.com', '17-12-2011', 52, '27-05-2022', 716580.42);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8787428443', 'Bartlett Cuddehy', 'bcuddehy1g@wiley.com', '10-10-2012', 53, '15-12-2021', 773335.69);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6765511351', 'Alair Dealy', 'adealy1h@pagesperso-orange.fr', '06-04-1995', 54, '16-09-2021', 273650.6);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1976317150', 'Ethel Woollons', 'ewoollons1i@t-online.de', '29-03-2005', 55, '15-03-2021', 990400.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2589536740', 'Burg Brookson', 'bbrookson1j@webeden.co.uk', '23-03-1994', 56, '09-04-2021', 125840.69);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1371154788', 'Kenon Stroband', 'kstroband1k@theglobeandmail.com', '27-02-2008', 57, '14-11-2021', 73898.04);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4648834194', 'Deeann Osgorby', 'dosgorby1l@indiegogo.com', '06-11-2000', 58, '09-09-2020', 78937.19);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6152603184', 'Anselma Blanch', 'ablanch1m@weibo.com', '27-09-1994', 59, '01-01-2023', 967657.21);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7699407356', 'Winnie Lynde', 'wlynde1n@studiopress.com', '08-01-2020', 60, '14-10-2020', 563179.89);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7242825414', 'Honor Grace', 'hgrace1o@goodreads.com', '16-07-2014', 61, '09-09-2022', 238291.33);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9866740082', 'Tanney Cubbino', 'tcubbino1p@skype.com', '27-12-2011', 62, '11-05-2022', 870886.97);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7388196330', 'Carlotta Bristoe', 'cbristoe1q@baidu.com', '21-09-2019', 63, '27-02-2023', 979042.32);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4569221956', 'Patton Ducker', 'pducker1r@patch.com', '12-02-2009', 64, '08-02-2021', 275470.51);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2117231232', 'Dottie Elby', 'delby1s@webmd.com', '04-05-2013', 65, '05-11-2021', 795691.39);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3304269736', 'Dew Stancliffe', 'dstancliffe1t@xing.com', '31-03-1994', 66, '30-01-2021', 347101.67);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6726655421', 'Corby Twinborne', 'ctwinborne1u@netlog.com', '02-03-2012', 67, '11-07-2021', 598826.59);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1769243314', 'Rudyard Done', 'rdone1v@blinklist.com', '23-08-2014', 68, '29-05-2020', 159327.18);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4233013435', 'Trenna Klemps', 'tklemps1w@last.fm', '18-01-2015', 69, '28-12-2022', 758322.62);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2372796996', 'Gunar Seegar', 'gseegar1x@technorati.com', '27-05-2004', 70, '05-03-2022', 961914.17);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9564459801', 'Abbi Sullivan', 'asullivan1y@tamu.edu', '04-07-2009', 71, '25-05-2021', 942553.16);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2011183239', 'Sutton Heims', 'sheims1z@meetup.com', '09-06-2013', 72, '03-02-2023', 163485.13);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7428398346', 'Caz Cohen', 'ccohen20@amazonaws.com', '25-03-2003', 73, '11-09-2020', 335818.74);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6356721880', 'Felipa Bayly', 'fbayly21@tiny.cc', '24-11-1998', 74, '24-05-2022', 424797.51);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1668029891', 'Chrystel Bramhill', 'cbramhill22@networksolutions.com', '24-08-1994', 75, '01-04-2021', 689637.98);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9684444473', 'Elden Rohlf', 'erohlf23@instagram.com', '09-11-2012', 76, '17-09-2022', 321355.56);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8387227560', 'Marcus Sone', 'msone24@hostgator.com', '17-10-2007', 77, '20-07-2022', 779142.78);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5028506111', 'Onofredo Zelake', 'ozelake25@accuweather.com', '15-11-2008', 78, '21-03-2023', 8125.8);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9555832190', 'Jeffry Wichard', 'jwichard26@netlog.com', '04-04-2014', 79, '12-05-2020', 421966.7);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6912855078', 'Mavis Orrice', 'morrice27@dyndns.org', '01-12-2007', 80, '01-05-2020', 424936.6);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1804696816', 'Pieter Lochhead', 'plochhead28@ehow.com', '14-04-2011', 81, '10-03-2021', 716847.35);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3967791990', 'Halsy Finicj', 'hfinicj29@jimdo.com', '12-03-2014', 82, '08-11-2022', 232249.85);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5481324033', 'Sigvard Milmore', 'smilmore2a@unc.edu', '20-05-2007', 83, '28-05-2021', 48926.91);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5424351305', 'Matti Noades', 'mnoades2b@pinterest.com', '21-06-1992', 84, '01-05-2021', 619823.99);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5598557415', 'Casper Calbreath', 'ccalbreath2c@shareasale.com', '07-01-2017', 85, '08-08-2020', 542859.66);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7232713847', 'Ellette O''Lennane', 'eolennane2d@hostgator.com', '04-06-1993', 86, '24-11-2020', 242972.17);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7379660042', 'Melvin Tretter', 'mtretter2e@ted.com', '12-03-1997', 87, '17-12-2021', 62762.19);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8889832495', 'Emera Wilne', 'ewilne2f@xing.com', '18-09-2002', 88, '31-07-2022', 595940.68);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9536639189', 'Garrett Manneville', 'gmanneville2g@oracle.com', '16-02-1992', 89, '10-09-2021', 583460.35);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4248323354', 'Danita Geindre', 'dgeindre2h@senate.gov', '26-05-1992', 90, '12-11-2021', 54131.59);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5459191061', 'Anthea Daughtrey', 'adaughtrey2i@umn.edu', '31-07-2012', 91, '14-05-2020', 330351.03);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9118082386', 'See Snellman', 'ssnellman2j@home.pl', '21-07-1999', 92, '31-01-2022', 953359.44);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5786579353', 'Deeyn Daw', 'ddaw2k@sourceforge.net', '18-11-2005', 93, '19-02-2022', 294949.99);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5676417735', 'Reinold Thing', 'rthing2l@photobucket.com', '06-03-2002', 94, '11-05-2021', 998268.37);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4748941846', 'Leo Carneck', 'lcarneck2m@mashable.com', '06-01-1993', 95, '24-07-2022', 680565.62);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4548095236', 'Lanie Heinsh', 'lheinsh2n@canalblog.com', '15-04-2009', 96, '13-12-2021', 719302.46);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2166251343', 'Gerrard Loblie', 'globlie2o@indiatimes.com', '11-02-2011', 97, '30-12-2022', 975324.51);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2429674938', 'Tamar Berney', 'tberney2p@reddit.com', '20-02-2020', 98, '17-05-2022', 33997.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5365446300', 'Ivett Joyes', 'ijoyes2q@army.mil', '24-03-1998', 99, '12-03-2021', 69672.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6333399984', 'Anastassia Calladine', 'acalladine2r@parallels.com', '24-10-2003', 100, '13-11-2020', 203495.77);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9456858598', 'Willamina Tennet', 'wtennet2s@mysql.com', '13-05-2013', 101, '02-04-2022', 147508.88);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3051584194', 'Pippo Loads', 'ploads2t@narod.ru', '12-02-2003', 102, '17-07-2022', 37775.18);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8457707020', 'Roze Farress', 'rfarress2u@redcross.org', '24-01-2009', 103, '21-03-2021', 560710.11);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6121045512', 'Ira Castro', 'icastro2v@buzzfeed.com', '01-04-2016', 104, '30-08-2020', 93759.28);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4329604232', 'Torie Byrom', 'tbyrom2w@dion.ne.jp', '15-07-2018', 105, '27-05-2022', 223273.27);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3996371255', 'Deva Bramham', 'dbramham2x@w3.org', '15-03-2014', 106, '16-08-2022', 634024.26);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7079206463', 'Katee McGiffin', 'kmcgiffin2y@nytimes.com', '06-08-2011', 107, '08-03-2023', 112808.06);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8104403746', 'Wally Enever', 'wenever2z@buzzfeed.com', '25-06-2002', 108, '15-03-2022', 513889.67);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6986933210', 'Adair Dwelley', 'adwelley30@huffingtonpost.com', '23-06-1999', 109, '20-04-2020', 765228.04);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5762157126', 'Reggis Kunneke', 'rkunneke31@myspace.com', '29-05-2008', 110, '13-07-2020', 948999.79);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6079954024', 'Rochette Swynley', 'rswynley32@ucoz.com', '09-04-1996', 111, '04-09-2022', 155804.82);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9758656129', 'Angelique Schimank', 'aschimank33@imdb.com', '23-05-2007', 112, '11-02-2023', 848959.06);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3218026036', 'Susanna Lamey', 'slamey34@hibu.com', '05-12-1996', 113, '01-03-2022', 765896.92);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3883928881', 'Ivar Singers', 'isingers35@dedecms.com', '11-09-2008', 114, '12-06-2021', 20835.78);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6808331608', 'Dynah Isacoff', 'disacoff36@nyu.edu', '14-10-2019', 115, '22-12-2022', 343987.6);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3061039960', 'Janice Oleksinski', 'joleksinski37@stumbleupon.com', '01-07-2005', 116, '11-03-2022', 831159.6);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4725101151', 'Salli Cafferky', 'scafferky38@hc360.com', '11-04-1998', 117, '13-06-2021', 217620.68);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1248636224', 'Shane Ellul', 'sellul39@businesswire.com', '12-02-2018', 118, '28-09-2020', 991553.7);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1603984073', 'Laird Keavy', 'lkeavy3a@google.cn', '24-11-2004', 119, '29-08-2021', 498104.11);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1992471854', 'Alvira Belderfield', 'abelderfield3b@npr.org', '19-03-2003', 120, '09-02-2021', 947274.53);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8378617177', 'Jessika Radborn', 'jradborn3c@washingtonpost.com', '22-10-2014', 121, '05-03-2023', 729485.34);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3928328978', 'Cassondra Hastler', 'chastler3d@accuweather.com', '31-10-2001', 122, '04-04-2022', 893357.9);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4409289057', 'Athena Bowe', 'abowe3e@comcast.net', '19-12-2013', 123, '17-06-2021', 166606.81);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6063201344', 'Eloise Reddell', 'ereddell3f@census.gov', '20-09-2002', 124, '13-07-2021', 997634.96);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1185936138', 'Melesa Blackwood', 'mblackwood3g@youtu.be', '15-01-2017', 125, '28-05-2022', 709181.63);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4566902921', 'Joel Scanterbury', 'jscanterbury3h@mapquest.com', '02-10-2006', 126, '06-07-2022', 871926.41);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2634464229', 'Sander Craigmyle', 'scraigmyle3i@deviantart.com', '01-12-2010', 127, '30-06-2021', 846026.87);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4444189138', 'Clarisse Christofol', 'cchristofol3j@blogs.com', '03-09-1996', 128, '19-10-2022', 509707.05);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7825350536', 'Bron Yegorovnin', 'byegorovnin3k@naver.com', '18-12-2018', 129, '19-12-2022', 781091.81);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4614210729', 'Eryn Markl', 'emarkl3l@php.net', '02-08-2016', 130, '25-11-2020', 591218.56);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7979170698', 'Simone Malafe', 'smalafe3m@slate.com', '04-05-2016', 131, '25-11-2022', 372043.57);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9472771814', 'Jeddy Petheridge', 'jpetheridge3n@intel.com', '16-07-2011', 132, '30-03-2020', 445299.98);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6377980286', 'Cos Barents', 'cbarents3o@biglobe.ne.jp', '07-08-2012', 133, '28-05-2020', 997871.77);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1215604599', 'Wyn Wardrop', 'wwardrop3p@yolasite.com', '26-02-2002', 134, '07-12-2022', 628251.78);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7531953360', 'Darius Clines', 'dclines3q@moonfruit.com', '01-10-2001', 135, '03-09-2020', 644128.9);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5086127008', 'Blake Wasbey', 'bwasbey3r@pen.io', '13-08-2003', 136, '13-12-2020', 660357.98);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1808473832', 'Gibb Risom', 'grisom3s@dell.com', '07-04-2009', 137, '03-06-2020', 315620.98);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2013568958', 'Anett Tustin', 'atustin3t@vinaora.com', '24-09-2013', 138, '19-11-2021', 972098.31);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3168254477', 'Franchot Kondrachenko', 'fkondrachenko3u@ucoz.com', '06-10-2005', 139, '02-07-2022', 745273.61);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5253643661', 'Reuben Fawley', 'rfawley3v@oakley.com', '28-06-1996', 140, '14-05-2021', 398413.28);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1158268755', 'Hube Scahill', 'hscahill3w@privacy.gov.au', '15-12-2008', 141, '25-09-2021', 834778.12);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7312212417', 'Hanni Way', 'hway3x@webnode.com', '21-09-2018', 142, '04-08-2022', 309293.18);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2429465931', 'Harwell Blabey', 'hblabey3y@dedecms.com', '10-08-2007', 143, '15-01-2022', 226744.17);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5923119061', 'Doralyn Clemetts', 'dclemetts3z@1und1.de', '21-04-2018', 144, '28-02-2021', 225376.93);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4521194112', 'Myrtia O''Heyne', 'moheyne40@gnu.org', '25-07-2010', 145, '30-11-2020', 612979.89);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1975735020', 'Ardyce Kayne', 'akayne41@hubpages.com', '01-02-2012', 146, '26-02-2021', 332658.49);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9701048199', 'Kim Dopson', 'kdopson42@nsw.gov.au', '18-05-2005', 147, '20-09-2020', 456019.28);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1395484276', 'Thorvald Duplain', 'tduplain43@mozilla.org', '10-05-2005', 148, '25-11-2021', 564730.66);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9112857727', 'Hally Sadlier', 'hsadlier44@seattletimes.com', '10-06-2019', 149, '04-06-2021', 111478.18);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3311895589', 'Fanya Hustings', 'fhustings45@google.com.au', '16-06-2017', 150, '11-01-2023', 573380.37);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5561014336', 'Gaelan Goodsell', 'ggoodsell46@hexun.com', '26-02-1994', 151, '30-08-2020', 820284.5);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6519078723', 'Albrecht Rosedale', 'arosedale47@github.io', '15-04-2000', 152, '13-10-2022', 346865.36);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5846165527', 'Donny Littrik', 'dlittrik48@mit.edu', '04-02-2016', 153, '25-01-2021', 189994.6);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5094526973', 'Chico Bevis', 'cbevis49@usatoday.com', '28-04-2019', 154, '10-07-2022', 380935.45);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2575937321', 'Erina Saveall', 'esaveall4a@hubpages.com', '16-03-2013', 155, '14-11-2022', 561119.45);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1995409125', 'El Stockdale', 'estockdale4b@eepurl.com', '06-03-2015', 156, '23-07-2021', 762707.71);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8666900185', 'Tabbatha Stangroom', 'tstangroom4c@flavors.me', '16-09-1999', 157, '20-08-2021', 828300.17);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9997809561', 'Rafaello Daughtery', 'rdaughtery4d@amazonaws.com', '28-09-1995', 158, '05-10-2021', 874023.76);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1204292185', 'Sashenka Alexsandrev', 'salexsandrev4e@thetimes.co.uk', '12-06-1998', 159, '17-01-2023', 241592.42);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3106330519', 'Mariska Lorenc', 'mlorenc4f@bloomberg.com', '03-09-2014', 160, '09-03-2022', 260744.57);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1494581780', 'Cristiano Laingmaid', 'claingmaid4g@loc.gov', '14-04-1995', 161, '07-10-2020', 181640.33);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2059898152', 'Daisi Eickhoff', 'deickhoff4h@addtoany.com', '26-08-2001', 162, '25-02-2021', 260851.38);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9904976863', 'Noreen Spawell', 'nspawell4i@pinterest.com', '20-07-2007', 163, '14-01-2022', 289952.08);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5482015815', 'Janis Vere', 'jvere4j@marketwatch.com', '11-01-2018', 164, '01-11-2020', 309160.43);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9834148231', 'Cariotta Neachell', 'cneachell4k@rakuten.co.jp', '04-07-1997', 165, '15-04-2020', 147871.78);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1881510405', 'Jania Chainey', 'jchainey4l@unc.edu', '30-11-2016', 166, '19-07-2022', 287303.22);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9859109709', 'Hannah Allery', 'hallery4m@51.la', '26-03-1992', 167, '23-02-2021', 117524.35);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5141045051', 'Pablo Arnaez', 'parnaez4n@latimes.com', '13-07-2005', 168, '23-07-2020', 241745.87);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1279114336', 'Keely Hargreaves', 'khargreaves4o@theatlantic.com', '01-03-2016', 169, '22-12-2022', 701008.31);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6023187101', 'Dominique Gitting', 'dgitting4p@usgs.gov', '24-02-1994', 170, '19-04-2020', 89209.91);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7492560881', 'Veronique Justham', 'vjustham4q@narod.ru', '22-04-2004', 171, '22-12-2022', 990398.31);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7768473719', 'Nikaniki Flaunders', 'nflaunders4r@joomla.org', '18-12-2000', 172, '01-09-2020', 253342.65);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7282937244', 'Holly Langdale', 'hlangdale4s@hatena.ne.jp', '28-04-1992', 173, '07-11-2022', 258779.22);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3475888197', 'Johan Roomes', 'jroomes4t@thetimes.co.uk', '24-08-1991', 174, '02-10-2020', 793162.84);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2512392354', 'Janet Woollaston', 'jwoollaston4u@narod.ru', '08-04-2004', 175, '22-12-2022', 396975.17);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6143277593', 'Mahalia Clemas', 'mclemas4v@google.co.uk', '11-08-2010', 176, '21-10-2021', 931611.52);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7446439553', 'Hugh Rasmus', 'hrasmus4w@squarespace.com', '03-05-2004', 177, '27-11-2021', 642473.79);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7342930694', 'Alix Spray', 'aspray4x@yellowpages.com', '12-06-2006', 178, '15-01-2021', 917706.1);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9272195813', 'Kerrin Hayman', 'khayman4y@privacy.gov.au', '12-02-2000', 179, '20-02-2022', 235253.02);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6681432313', 'Archie Swadlin', 'aswadlin4z@macromedia.com', '31-07-2015', 180, '02-12-2022', 520039.83);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5385587991', 'Christiana Sturrock', 'csturrock50@wired.com', '27-05-1996', 181, '20-01-2023', 635966.44);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9702904433', 'Lilah Carine', 'lcarine51@cbslocal.com', '04-03-2015', 182, '09-05-2022', 820742.65);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4671779747', 'Wald Fallens', 'wfallens52@indiatimes.com', '05-01-2002', 183, '27-04-2021', 341501.95);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5816774941', 'Adiana Hatley', 'ahatley53@yelp.com', '03-04-2000', 184, '13-08-2020', 295961.34);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2418618307', 'Gage Cudmore', 'gcudmore54@lycos.com', '20-02-1994', 185, '23-10-2021', 32336.86);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3889382291', 'Bebe Arrault', 'barrault55@icio.us', '17-07-1996', 186, '12-06-2020', 447367.01);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7447805011', 'Quint Bosket', 'qbosket56@dailymotion.com', '11-12-2017', 187, '06-01-2021', 211637.3);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3322344312', 'Maddy Artharg', 'martharg57@woothemes.com', '31-03-1993', 188, '11-05-2022', 723336.86);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2471037175', 'Sinclair Glasgow', 'sglasgow58@microsoft.com', '03-05-1995', 189, '02-07-2021', 515268.74);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5387321464', 'Manuel Emblin', 'memblin59@zdnet.com', '07-10-2000', 190, '22-11-2020', 744627.16);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5628506598', 'Vidovik Cribbins', 'vcribbins5a@nymag.com', '31-10-2013', 191, '21-02-2023', 198780.36);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9134195275', 'Leese Weerdenburg', 'lweerdenburg5b@live.com', '23-07-1994', 192, '09-07-2022', 186080.63);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9777217037', 'Zeke Grange', 'zgrange5c@dailymotion.com', '19-07-2019', 193, '09-07-2021', 491423.93);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5455847260', 'Hilliary Pechan', 'hpechan5d@dion.ne.jp', '06-07-2013', 194, '04-05-2020', 975172.66);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3272611869', 'Buckie Matis', 'bmatis5e@columbia.edu', '25-09-2009', 195, '27-12-2020', 261736.37);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8785936932', 'Cindra Lancastle', 'clancastle5f@fda.gov', '11-11-2017', 196, '17-08-2020', 825767.2);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8326469899', 'Annelise Bourgourd', 'abourgourd5g@va.gov', '31-12-2011', 197, '09-12-2022', 270620.13);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9058182281', 'Calypso Sirkett', 'csirkett5h@pagesperso-orange.fr', '13-02-2013', 198, '14-06-2022', 468818.29);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9619482937', 'Mohammed Esherwood', 'mesherwood5i@exblog.jp', '26-04-2015', 199, '10-07-2022', 359448.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4113452488', 'Rosanne Gosalvez', 'rgosalvez5j@bing.com', '01-06-2001', 200, '15-05-2022', 364283.6);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1401151746', 'Hiram Dilston', 'hdilston5k@bravesites.com', '18-08-2003', 201, '03-10-2022', 633508.23);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3972113057', 'Krystal Penwright', 'kpenwright5l@google.com.br', '31-10-1995', 202, '07-07-2022', 435577.93);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4233490844', 'Corty McBride', 'cmcbride5m@amazonaws.com', '31-01-1993', 203, '30-01-2022', 543484.46);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6656363817', 'Rosa Howie', 'rhowie5n@fastcompany.com', '22-03-2000', 204, '09-01-2021', 852355.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5434087086', 'Teressa Clench', 'tclench5o@bandcamp.com', '03-09-1993', 205, '25-12-2020', 118521.31);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2906940807', 'Lusa Truckett', 'ltruckett5p@networksolutions.com', '12-02-2014', 206, '08-12-2021', 729548.9);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9483396778', 'Shelton Agron', 'sagron5q@youku.com', '10-08-2005', 207, '21-08-2022', 261178.77);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6073642930', 'Dinnie Dinneen', 'ddinneen5r@bandcamp.com', '10-12-1994', 208, '26-02-2023', 239457.84);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4204835142', 'Glyn Yuill', 'gyuill5s@nbcnews.com', '03-06-2007', 209, '26-12-2022', 129350.81);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5593348777', 'Pauletta Parlor', 'pparlor5t@mlb.com', '02-12-2012', 210, '13-06-2020', 604646.34);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3988035340', 'Carlina Treherne', 'ctreherne5u@gmpg.org', '06-02-2009', 211, '26-04-2020', 304217.85);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5773933952', 'Kipper Proschek', 'kproschek5v@aboutads.info', '13-07-1997', 212, '02-02-2022', 968127.55);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6026612084', 'Dulce Suermeiers', 'dsuermeiers5w@cnet.com', '06-08-2007', 213, '24-07-2020', 293944.77);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6807833142', 'Sibel Rosie', 'srosie5x@parallels.com', '20-05-1993', 214, '25-02-2023', 673499.66);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8477204164', 'Greer Lempel', 'glempel5y@japanpost.jp', '01-11-1991', 215, '29-04-2022', 398806.62);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2798723644', 'Orelie Cliss', 'ocliss5z@cnn.com', '07-11-2012', 216, '12-05-2021', 72058.83);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1759507367', 'Rich Mahaddy', 'rmahaddy60@japanpost.jp', '13-06-2010', 217, '01-07-2021', 694631.92);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1173918136', 'Jozef Menguy', 'jmenguy61@geocities.com', '01-08-2011', 218, '21-07-2022', 792367.39);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8906789360', 'Dmitri McCumskay', 'dmccumskay62@twitter.com', '03-07-2015', 219, '24-06-2020', 454858.1);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6449259909', 'Cristie Simpkins', 'csimpkins63@yelp.com', '05-02-2017', 220, '14-06-2022', 967058.78);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3081771842', 'Aland Doggerell', 'adoggerell64@cbslocal.com', '04-07-2018', 221, '10-08-2021', 765409.9);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6989718866', 'Martyn Lortzing', 'mlortzing65@sourceforge.net', '15-05-2007', 222, '27-11-2021', 242473.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4613931553', 'Vivianna Sollam', 'vsollam66@cocolog-nifty.com', '07-07-1993', 223, '11-12-2021', 75182.57);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8822206360', 'Evanne McFie', 'emcfie67@oaic.gov.au', '04-08-1998', 224, '31-03-2020', 53910.68);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4022457546', 'Kat Knibb', 'kknibb68@webs.com', '02-06-2019', 225, '18-08-2020', 188277.09);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1797684883', 'Sydney Lowres', 'slowres69@noaa.gov', '05-11-1995', 226, '23-07-2020', 42479.77);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8601248274', 'Brnaba Hoggan', 'bhoggan6a@nasa.gov', '20-02-1998', 227, '11-12-2021', 378675.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7799570198', 'Chaddy Vischi', 'cvischi6b@biglobe.ne.jp', '17-12-2004', 228, '09-11-2022', 390165.46);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4551659577', 'Hailee Neeson', 'hneeson6c@disqus.com', '29-11-2013', 229, '23-06-2020', 395436.61);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6629138190', 'Sampson Febre', 'sfebre6d@newsvine.com', '29-02-2012', 230, '30-10-2022', 865635.98);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6217544136', 'Augusto Emms', 'aemms6e@bravesites.com', '13-04-2009', 231, '10-05-2021', 595602.2);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1338228480', 'Ebba Bellefant', 'ebellefant6f@jalbum.net', '28-04-2007', 232, '30-11-2021', 491046.71);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6606491196', 'Ernie Checchi', 'echecchi6g@smugmug.com', '20-12-2005', 233, '15-02-2023', 676635.23);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8719421550', 'Taddeusz Bithany', 'tbithany6h@unesco.org', '11-09-2004', 234, '24-12-2021', 279591.81);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3445334531', 'Dew Shelbourne', 'dshelbourne6i@ow.ly', '14-05-2019', 235, '19-09-2021', 589414.82);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3983032594', 'Mandi Crumly', 'mcrumly6j@google.com.hk', '24-12-1999', 236, '15-09-2020', 231471.43);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1344839645', 'Muffin Mowen', 'mmowen6k@guardian.co.uk', '03-08-2005', 237, '17-09-2022', 671314.26);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1731634389', 'Yolane Tenwick', 'ytenwick6l@istockphoto.com', '13-03-1994', 238, '26-05-2022', 561580.74);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7921398615', 'Mimi Gounot', 'mgounot6m@vinaora.com', '03-12-1994', 239, '17-09-2020', 707845.84);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3724482665', 'Clareta Brodbin', 'cbrodbin6n@hao123.com', '06-08-1996', 240, '25-04-2021', 936213.89);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6024179547', 'Eben Leger', 'eleger6o@hhs.gov', '15-01-2001', 241, '03-05-2022', 637372.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5573508107', 'Demetris Summerlie', 'dsummerlie6p@seesaa.net', '09-01-1997', 242, '19-03-2022', 30916.03);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6395867642', 'Galven Edgson', 'gedgson6q@statcounter.com', '22-08-1992', 243, '30-11-2020', 81410.67);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3104304360', 'Winthrop Sibary', 'wsibary6r@harvard.edu', '29-08-2013', 244, '09-08-2020', 426553.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9229897241', 'Andrea Busch', 'abusch6s@google.it', '14-07-2001', 245, '01-05-2021', 315038.08);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2265349382', 'Faith Vowell', 'fvowell6t@yellowpages.com', '19-04-2003', 246, '05-02-2023', 97349.31);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2907976734', 'Ilario Rodenborch', 'irodenborch6u@a8.net', '06-01-2020', 247, '16-11-2021', 400661.19);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6573144874', 'Cindy Vinter', 'cvinter6v@netscape.com', '15-12-2005', 248, '12-04-2020', 975373.13);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7047642157', 'Lauraine Rao', 'lrao6w@icio.us', '06-06-1996', 249, '23-02-2023', 948259.15);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7493575607', 'Augusta Boydell', 'aboydell6x@webnode.com', '20-01-1992', 250, '11-10-2021', 763330.39);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9408606971', 'Stormy Draisey', 'sdraisey6y@eepurl.com', '06-10-1995', 251, '27-10-2021', 528395.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2074719850', 'Brucie Kaufman', 'bkaufman6z@upenn.edu', '22-08-2011', 252, '11-05-2020', 337789.52);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8227756582', 'Ferdinanda Somerfield', 'fsomerfield70@marriott.com', '20-10-2006', 253, '25-07-2022', 433001.35);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3486121031', 'Fredrika Westrip', 'fwestrip71@macromedia.com', '18-10-1997', 254, '30-06-2021', 593718.9);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9711736183', 'Vaughn Ayre', 'vayre72@constantcontact.com', '08-10-2004', 255, '19-06-2021', 549398.06);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8881685693', 'Bellanca Tucker', 'btucker73@comcast.net', '07-04-1997', 256, '03-05-2021', 501705.9);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1324221708', 'Willie Seeborne', 'wseeborne74@blogspot.com', '30-07-2009', 257, '08-02-2023', 367738.23);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5198852433', 'Rivy Kordova', 'rkordova75@blogspot.com', '08-02-1995', 258, '30-03-2022', 952490.71);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1192024683', 'Skippie Misselbrook', 'smisselbrook76@artisteer.com', '24-11-2002', 259, '13-07-2021', 363482.89);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6049660621', 'Alphonso Moralis', 'amoralis77@java.com', '28-07-2013', 260, '13-03-2021', 914505.02);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9405700145', 'Sumner Willgress', 'swillgress78@biglobe.ne.jp', '04-06-2009', 261, '12-10-2021', 332531.47);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1981822711', 'Geralda Seagood', 'gseagood79@narod.ru', '30-12-2014', 262, '19-03-2023', 325619.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2083031976', 'Vergil Ossulton', 'vossulton7a@google.co.uk', '22-02-2011', 263, '28-05-2020', 423010.9);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6543311575', 'Ruben Dunckley', 'rdunckley7b@4shared.com', '10-07-1996', 264, '18-05-2020', 594784.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7279327102', 'Kerianne Lichtfoth', 'klichtfoth7c@google.com', '05-09-2000', 265, '16-11-2021', 186170.51);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1103996701', 'Caron Depport', 'cdepport7d@discuz.net', '16-08-2015', 266, '17-05-2022', 843228.42);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1754603193', 'Deena Chislett', 'dchislett7e@examiner.com', '19-02-2003', 267, '07-11-2022', 347405.6);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2631897689', 'De witt Coales', 'dwitt7f@toplist.cz', '24-04-2005', 268, '22-04-2021', 447658.08);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9345034827', 'Claudius Pughsley', 'cpughsley7g@marriott.com', '25-11-1991', 269, '04-04-2020', 543798.07);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1656956916', 'Yolanda Lottrington', 'ylottrington7h@mozilla.com', '14-11-2006', 270, '21-04-2020', 457236.96);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7348418056', 'Chrystal Beinisch', 'cbeinisch7i@berkeley.edu', '31-07-2006', 271, '25-07-2020', 820088.63);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1171917090', 'Tamra Borwick', 'tborwick7j@miibeian.gov.cn', '21-08-2009', 272, '07-10-2021', 961422.92);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3604622393', 'Ralph Gilbertson', 'rgilbertson7k@ed.gov', '04-09-1991', 273, '21-06-2020', 186471.05);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6593988887', 'Stanfield Hamsley', 'shamsley7l@flavors.me', '08-02-2007', 274, '30-12-2021', 439751.5);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9238701549', 'Shandra Fliege', 'sfliege7m@technorati.com', '20-11-1993', 275, '05-07-2020', 604377.21);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7908280070', 'Arri Loveridge', 'aloveridge7n@ibm.com', '29-09-2009', 276, '30-08-2021', 348717.95);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7046465940', 'Kennedy Aggis', 'kaggis7o@diigo.com', '18-09-2009', 277, '06-03-2023', 615111.04);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6164242677', 'Enriqueta Matasov', 'ematasov7p@paginegialle.it', '06-01-1999', 278, '17-11-2020', 349500.69);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3318715315', 'Ronni Barnshaw', 'rbarnshaw7q@gravatar.com', '23-06-2006', 279, '15-01-2022', 932431.85);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7057816489', 'Johann Robertet', 'jrobertet7r@a8.net', '08-11-1997', 280, '15-05-2022', 20953.31);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8767219570', 'Henrietta Werlock', 'hwerlock7s@google.com', '26-12-1994', 281, '04-09-2020', 696812.71);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1519194218', 'Archie Medcalf', 'amedcalf7t@shinystat.com', '08-03-2009', 282, '13-02-2021', 978829.25);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9576428409', 'Earlie Nanetti', 'enanetti7u@simplemachines.org', '01-11-2016', 283, '22-08-2022', 210236.61);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2928531284', 'Branden Scorey', 'bscorey7v@state.tx.us', '16-06-2015', 284, '31-01-2023', 974968.13);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1055577824', 'Otha Yegorkov', 'oyegorkov7w@example.com', '27-08-1992', 285, '21-07-2020', 624353.81);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8625148612', 'Elisha Fishenden', 'efishenden7x@unesco.org', '05-12-1997', 286, '16-10-2021', 933561.1);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8626082528', 'Lowrance Corradini', 'lcorradini7y@4shared.com', '18-06-1992', 287, '30-11-2021', 352761.1);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7419508621', 'Dalli Barrar', 'dbarrar7z@ask.com', '09-11-1997', 288, '13-07-2022', 421231.3);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9659218661', 'Meade Stockau', 'mstockau80@sogou.com', '08-06-2017', 289, '01-07-2021', 567229.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7033020834', 'Starr Salway', 'ssalway81@devhub.com', '01-06-2004', 290, '15-12-2020', 929339.46);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9969259092', 'Andria Marde', 'amarde82@ucsd.edu', '01-04-2015', 291, '12-05-2021', 778176.15);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5507965012', 'Regen Axelbey', 'raxelbey83@opensource.org', '27-10-2015', 292, '10-12-2021', 2674.12);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9683966589', 'Casie Wharfe', 'cwharfe84@nature.com', '09-05-1994', 293, '08-08-2022', 163410.45);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7021626983', 'Nancey Titman', 'ntitman85@jalbum.net', '07-07-2005', 294, '03-08-2022', 4348.34);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6048680807', 'Dunn Conochie', 'dconochie86@spotify.com', '12-06-1992', 295, '05-09-2020', 278413.49);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4793167791', 'Alisun Douberday', 'adouberday87@sitemeter.com', '30-09-2011', 296, '21-02-2022', 49911.15);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5033089876', 'Selina Gannon', 'sgannon88@imdb.com', '06-10-1993', 297, '26-02-2023', 322468.14);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5902526687', 'Sheridan Aubri', 'saubri89@wikimedia.org', '01-08-1992', 298, '28-10-2020', 589359.59);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1795364361', 'Arielle Woltering', 'awoltering8a@statcounter.com', '03-08-2007', 299, '10-02-2022', 560551.63);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8398720652', 'Muffin Krysztowczyk', 'mkrysztowczyk8b@example.com', '29-08-1991', 300, '18-08-2021', 217692.3);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1674387509', 'Hiram Van de Velde', 'hvan8c@scientificamerican.com', '09-01-2009', 301, '17-03-2023', 160632.4);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1754916365', 'Carroll Adrian', 'cadrian8d@google.pl', '03-09-2012', 302, '02-05-2020', 388822.37);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8721446599', 'Calida Miere', 'cmiere8e@bluehost.com', '25-06-1994', 303, '04-11-2022', 194975.53);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5084623725', 'Nolana D''Hooge', 'ndhooge8f@globo.com', '29-07-1998', 304, '29-06-2022', 777855.14);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2348583214', 'Jerad Fery', 'jfery8g@ning.com', '22-12-1998', 305, '04-01-2023', 568953.49);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3463444619', 'Nikolaos Bagby', 'nbagby8h@example.com', '25-07-1995', 306, '06-12-2022', 313004.24);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4486870478', 'Gayle Rubert', 'grubert8i@i2i.jp', '06-04-2004', 307, '03-08-2022', 681595.76);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4704107115', 'Carroll Pecht', 'cpecht8j@mlb.com', '11-10-1999', 308, '13-12-2022', 315303.65);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3561840740', 'Rheba Mosby', 'rmosby8k@go.com', '13-03-2002', 309, '04-03-2022', 217332.67);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1471047526', 'Guendolen Coxall', 'gcoxall8l@uol.com.br', '04-10-2011', 310, '01-11-2021', 466064.47);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8536258974', 'Inessa Moorman', 'imoorman8m@yelp.com', '02-01-2020', 311, '16-06-2021', 949948.62);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5692350752', 'Wilma Bradly', 'wbradly8n@wordpress.com', '25-01-1992', 312, '23-03-2020', 596444.83);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6466802077', 'Marcellus Ranaghan', 'mranaghan8o@dropbox.com', '10-12-2018', 313, '21-02-2022', 317801.87);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5637241784', 'Guillermo Giacomasso', 'ggiacomasso8p@51.la', '23-04-2013', 314, '09-01-2021', 740679.32);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2123701541', 'Omar Jackson', 'ojackson8q@sciencedirect.com', '03-11-2015', 315, '13-12-2021', 38270.53);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8089424854', 'Brunhilda Tincknell', 'btincknell8r@marriott.com', '17-04-2017', 316, '28-06-2021', 78488.24);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2868531569', 'Jacenta Thornally', 'jthornally8s@bluehost.com', '12-02-2007', 317, '03-10-2022', 713635.17);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3425931171', 'Eirena Diboll', 'ediboll8t@myspace.com', '31-07-2010', 318, '05-04-2022', 93508.79);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5796808072', 'Lynna Swadlinge', 'lswadlinge8u@bluehost.com', '28-12-2001', 319, '11-08-2022', 175096.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7504421852', 'Lane Kuschke', 'lkuschke8v@imageshack.us', '12-08-2002', 320, '01-07-2020', 292424.43);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4984407484', 'Darill Dedham', 'ddedham8w@wix.com', '18-07-2013', 321, '09-02-2023', 922708.96);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3013008675', 'Brewster Goodin', 'bgoodin8x@digg.com', '24-09-2000', 322, '26-05-2022', 82674.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5996630898', 'Stefa Jozwiak', 'sjozwiak8y@feedburner.com', '15-07-1992', 323, '26-04-2020', 828470.99);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5549184949', 'Megan Whannel', 'mwhannel8z@linkedin.com', '09-04-1994', 324, '20-11-2020', 580294.97);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6788111243', 'Suzanne Alpes', 'salpes90@independent.co.uk', '13-10-1999', 325, '16-09-2020', 97658.02);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6216055264', 'Ardine Armes', 'aarmes91@diigo.com', '17-11-2017', 326, '29-05-2022', 409764.57);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8588325214', 'Kerry Popplewell', 'kpopplewell92@bluehost.com', '05-06-2007', 327, '26-09-2021', 514124.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6755964398', 'Oswell Harston', 'oharston93@cnn.com', '06-09-2015', 328, '27-12-2020', 767704.86);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3132328017', 'Pen Huitt', 'phuitt94@china.com.cn', '30-03-2013', 329, '18-03-2021', 22838.43);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3609764119', 'Stanfield Pethick', 'spethick95@senate.gov', '09-01-2000', 330, '14-06-2022', 756765.35);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6843045083', 'Shirlene Channon', 'schannon96@umn.edu', '12-04-2005', 331, '16-06-2020', 987206.82);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4526605489', 'Ami Mailes', 'amailes97@ask.com', '24-07-2006', 332, '01-08-2021', 984682.27);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8523083123', 'Hal Durtnell', 'hdurtnell98@amazon.co.jp', '25-03-2009', 333, '18-11-2022', 888742.35);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9876953649', 'Giorgi Blum', 'gblum99@nytimes.com', '10-06-2012', 334, '24-09-2020', 639715.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8154490714', 'Hal Mc Menamin', 'hmc9a@ibm.com', '06-03-1995', 335, '09-01-2022', 153814.88);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7892087313', 'Cosmo Schnitter', 'cschnitter9b@wp.com', '08-01-2014', 336, '10-03-2023', 114809.89);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7779692162', 'Eran Teas', 'eteas9c@slideshare.net', '17-04-2007', 337, '22-02-2021', 917374.84);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4366118657', 'Marlyn Grewer', 'mgrewer9d@hp.com', '17-11-1993', 338, '03-02-2021', 844347.03);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8471462591', 'Clare Govett', 'cgovett9e@cbc.ca', '24-11-1991', 339, '27-01-2022', 682135.24);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7254950090', 'Guthrey Underdown', 'gunderdown9f@exblog.jp', '18-04-2015', 340, '03-01-2023', 300073.7);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5009431002', 'Suzette Stockow', 'sstockow9g@netvibes.com', '19-09-2001', 341, '14-10-2022', 668401.84);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2332697786', 'Zechariah Sawyers', 'zsawyers9h@acquirethisname.com', '04-04-2015', 342, '30-01-2022', 268971.31);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3927389208', 'Benny Dummigan', 'bdummigan9i@gov.uk', '17-12-2017', 343, '30-08-2022', 824719.41);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9471580207', 'Panchito Davern', 'pdavern9j@pcworld.com', '05-06-1997', 344, '08-03-2023', 612402.43);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9501438335', 'Bernie Copplestone', 'bcopplestone9k@huffingtonpost.com', '19-03-1999', 345, '27-06-2022', 175216.77);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7513506345', 'Oona Cawt', 'ocawt9l@usatoday.com', '09-09-2014', 346, '12-02-2022', 936422.48);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2243989753', 'Abey Reisk', 'areisk9m@unc.edu', '08-01-2012', 347, '16-09-2021', 698910.86);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3404747688', 'Kendricks Beamson', 'kbeamson9n@elegantthemes.com', '12-03-1993', 348, '11-02-2021', 165344.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6679329436', 'Arther Benallack', 'abenallack9o@aboutads.info', '04-09-2000', 349, '08-03-2022', 345841.73);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7022657892', 'Rozina Sale', 'rsale9p@slate.com', '06-03-2018', 350, '31-03-2020', 89969.91);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5081097697', 'Jerome Stuchburie', 'jstuchburie9q@canalblog.com', '08-06-2016', 351, '20-05-2022', 512451.78);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6784801085', 'Henryetta Winstone', 'hwinstone9r@webnode.com', '18-12-2016', 352, '18-09-2022', 586353.31);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8444561975', 'Terry Cowely', 'tcowely9s@google.co.jp', '10-08-2008', 353, '19-06-2022', 385718.05);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5839806805', 'Saba Dowdney', 'sdowdney9t@cisco.com', '25-05-1999', 354, '05-01-2022', 980542.34);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8906018391', 'Clemmy Heritege', 'cheritege9u@mozilla.org', '08-06-1992', 355, '06-06-2020', 961214.94);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7187943691', 'Raddy Newbury', 'rnewbury9v@amazon.co.jp', '22-11-2015', 356, '29-10-2022', 291951.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5913264537', 'Cybil Fleury', 'cfleury9w@aol.com', '24-05-2005', 357, '21-05-2020', 207433.37);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7679320325', 'Jodi Moar', 'jmoar9x@theatlantic.com', '03-08-1992', 358, '30-01-2021', 636684.4);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9098774905', 'Ivan Dring', 'idring9y@shop-pro.jp', '24-12-2002', 359, '10-07-2021', 941060.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3393868527', 'Alfonse Klebes', 'aklebes9z@epa.gov', '20-06-1993', 360, '28-01-2022', 504865.97);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5062655199', 'Bambi Yelyashev', 'byelyasheva0@who.int', '14-10-2002', 361, '31-03-2022', 268756.48);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1913267880', 'Yvon Saddington', 'ysaddingtona1@pagesperso-orange.fr', '21-03-2012', 362, '29-04-2021', 561810.26);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2114333183', 'Francine Battany', 'fbattanya2@latimes.com', '20-04-2013', 363, '13-08-2020', 119239.96);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2646758318', 'Vincent Fuchs', 'vfuchsa3@google.com', '29-01-1998', 364, '18-05-2021', 667368.1);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8801430396', 'Chariot Stamp', 'cstampa4@engadget.com', '15-01-1997', 365, '23-04-2020', 98347.86);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6103199714', 'Peggy Lynn', 'plynna5@drupal.org', '19-06-2008', 366, '14-09-2020', 398938.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2256712262', 'Mei Attenburrow', 'mattenburrowa6@salon.com', '14-04-2013', 367, '24-06-2022', 463655.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1855972166', 'Barbe MacCrachen', 'bmaccrachena7@sourceforge.net', '15-01-2010', 368, '22-07-2021', 808905.4);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2463260335', 'Rawley Jimson', 'rjimsona8@comcast.net', '19-08-2018', 369, '19-10-2022', 136721.21);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4867309099', 'Derril Ryhorovich', 'dryhorovicha9@histats.com', '13-10-1991', 370, '24-01-2021', 99158.55);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6851895176', 'Sibbie Klausewitz', 'sklausewitzaa@imgur.com', '20-01-2002', 371, '23-10-2020', 623028.55);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5688107536', 'Nester Gimblet', 'ngimbletab@last.fm', '21-02-2000', 372, '12-11-2020', 746338.02);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2092331810', 'Lincoln Advani', 'ladvaniac@aboutads.info', '23-02-2011', 373, '14-03-2021', 469967.52);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2981332749', 'Carlie Vanns', 'cvannsad@shareasale.com', '19-05-1997', 374, '03-12-2020', 774588.24);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3936489736', 'Hillier Jaggar', 'hjaggarae@reddit.com', '14-05-1995', 375, '14-06-2022', 280610.87);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3794860199', 'Tommi Silverstone', 'tsilverstoneaf@last.fm', '08-09-1994', 376, '23-04-2022', 20216.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4751881259', 'Ardisj Utley', 'autleyag@hhs.gov', '02-09-2005', 377, '09-07-2020', 926132.61);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4192428947', 'Bell Imbrey', 'bimbreyah@naver.com', '03-04-2000', 378, '02-07-2020', 642274.25);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1288084216', 'Adiana Kincla', 'akinclaai@economist.com', '12-11-1996', 379, '21-08-2020', 965.89);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2903798209', 'Elicia Gruszczak', 'egruszczakaj@cafepress.com', '25-04-2011', 380, '25-05-2020', 892244.26);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8646352973', 'Courtnay Fulks', 'cfulksak@yellowpages.com', '10-08-2003', 381, '24-03-2022', 81069.35);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5059147489', 'Hermy Fishby', 'hfishbyal@home.pl', '26-12-2014', 382, '29-06-2022', 826491.9);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1183945208', 'Melesa Maskall', 'mmaskallam@cnet.com', '19-10-2007', 383, '09-04-2020', 500238.55);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1003254316', 'Lila Brenneke', 'lbrennekean@xinhuanet.com', '29-05-2002', 384, '10-07-2021', 700294.85);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3591223819', 'Deva Labell', 'dlabellao@hc360.com', '07-04-2019', 385, '20-04-2022', 98021.34);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6639441948', 'Tova Heijne', 'theijneap@blogs.com', '20-12-1994', 386, '28-05-2021', 389333.81);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8135065065', 'Candace Cresswell', 'ccresswellaq@xinhuanet.com', '15-08-2008', 387, '26-12-2021', 590828.69);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9739572722', 'Martie Munks', 'mmunksar@discovery.com', '07-08-2001', 388, '10-08-2020', 35375.7);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6313290498', 'Norbert Dubery', 'nduberyas@youtu.be', '06-11-1999', 389, '05-04-2022', 76547.33);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4085375530', 'Brinna Blabie', 'bblabieat@zdnet.com', '09-05-2009', 390, '14-06-2021', 932791.27);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4977024536', 'Humphrey Powys', 'hpowysau@slate.com', '06-08-1999', 391, '19-12-2022', 209838.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9974883916', 'Cara Bowskill', 'cbowskillav@etsy.com', '09-08-2012', 392, '12-04-2021', 746273.27);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1422469967', 'Maryrose Tschersich', 'mtschersichaw@de.vu', '13-12-2004', 393, '18-08-2020', 801017.86);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8692837495', 'Leicester Boscher', 'lboscherax@reverbnation.com', '30-09-2001', 394, '20-11-2022', 30102.98);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4051516449', 'Lannie Fetterplace', 'lfetterplaceay@foxnews.com', '18-02-2000', 395, '20-12-2020', 479015.28);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7003361614', 'Oliy Pawle', 'opawleaz@github.io', '25-09-2009', 396, '31-07-2020', 52255.83);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6382915410', 'Cornie Levet', 'clevetb0@economist.com', '25-02-2007', 397, '21-10-2020', 729803.21);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4519330381', 'Roxie Whithorn', 'rwhithornb1@google.es', '21-04-2006', 398, '07-12-2021', 121496.89);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4129408455', 'Fern Look', 'flookb2@mtv.com', '22-05-1995', 399, '24-01-2022', 346188.57);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9277682940', 'Angus Upward', 'aupwardb3@psu.edu', '14-09-1991', 400, '28-10-2020', 654149.21);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6291384000', 'Janaya McGow', 'jmcgowb4@gmpg.org', '02-01-2009', 401, '19-11-2020', 675321.78);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5968121475', 'Jock Olander', 'jolanderb5@prweb.com', '26-03-2004', 402, '19-09-2021', 654584.75);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3485662194', 'Arabel Klimov', 'aklimovb6@tinypic.com', '24-01-2019', 403, '11-04-2022', 446587.56);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7662903515', 'Truda Lissandrini', 'tlissandrinib7@yale.edu', '26-06-1999', 404, '15-06-2021', 636824.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8291687169', 'Charmain Trenaman', 'ctrenamanb8@yolasite.com', '10-03-2020', 405, '01-03-2023', 244140.75);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4254869456', 'Doretta Duckels', 'dduckelsb9@intel.com', '02-10-1996', 406, '26-10-2022', 682589.13);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2057353679', 'Greg Jeanesson', 'gjeanessonba@adobe.com', '24-10-1995', 407, '02-06-2021', 737035.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3241655764', 'Roderick Roote', 'rrootebb@slashdot.org', '23-08-2011', 408, '22-05-2020', 682256.9);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5668073245', 'Lucille Cosely', 'lcoselybc@godaddy.com', '30-05-2000', 409, '17-08-2020', 781762.45);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5024125760', 'Patricio Sketch', 'psketchbd@weebly.com', '25-09-2001', 410, '29-10-2021', 818759.81);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8567210553', 'Brenn Merryfield', 'bmerryfieldbe@sakura.ne.jp', '16-08-2007', 411, '18-02-2021', 963507.76);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6049398244', 'Barbara Dillistone', 'bdillistonebf@vinaora.com', '16-11-2000', 412, '26-07-2020', 678180.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4187828120', 'Frankie Kabsch', 'fkabschbg@walmart.com', '25-02-1995', 413, '09-07-2020', 240919.04);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8771085320', 'Hendrika Legen', 'hlegenbh@tumblr.com', '29-02-2004', 414, '22-03-2022', 310787.46);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7084019035', 'Mavis Melior', 'mmeliorbi@example.com', '07-10-2015', 415, '22-07-2022', 6406.95);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5667890616', 'Powell Toffolini', 'ptoffolinibj@spotify.com', '19-06-1998', 416, '28-05-2021', 479009.21);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7757243463', 'Seth Figgs', 'sfiggsbk@bloglovin.com', '27-03-1995', 417, '12-03-2022', 381480.56);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2567678482', 'Esmeralda Morkham', 'emorkhambl@telegraph.co.uk', '24-12-2000', 418, '20-12-2022', 883966.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8129633723', 'Shandie Windrum', 'swindrumbm@nyu.edu', '07-07-2011', 419, '09-06-2020', 579908.48);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3024998159', 'Fitz Sayse', 'fsaysebn@scientificamerican.com', '30-10-2013', 420, '15-05-2022', 846301.9);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9546102019', 'Jacklyn MacMechan', 'jmacmechanbo@blogspot.com', '14-12-2000', 421, '07-01-2022', 29099.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7576814817', 'Erek Howford', 'ehowfordbp@pen.io', '23-09-1992', 422, '14-07-2021', 812881.79);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2848270052', 'Marget Dabinett', 'mdabinettbq@comcast.net', '23-11-2014', 423, '16-04-2022', 103536.73);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6131170965', 'Antony Herety', 'aheretybr@dyndns.org', '07-09-2004', 424, '29-03-2022', 380427.03);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2496377904', 'Sharona Corson', 'scorsonbs@naver.com', '05-02-1997', 425, '03-03-2023', 713223.06);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3877914146', 'Albrecht Bollin', 'abollinbt@bloglines.com', '10-03-1997', 426, '27-05-2020', 55741.78);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8398862478', 'Darnall Sherston', 'dsherstonbu@histats.com', '13-10-2017', 427, '02-02-2023', 475270.16);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8294086865', 'Willy Thatcher', 'wthatcherbv@reverbnation.com', '12-12-2009', 428, '18-01-2023', 484362.37);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9757712861', 'Coop Didsbury', 'cdidsburybw@virginia.edu', '22-12-2016', 429, '24-12-2022', 626562.26);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1821787083', 'Aindrea Crean', 'acreanbx@illinois.edu', '25-11-1996', 430, '19-02-2023', 599969.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6651083021', 'Cornie Nusche', 'cnuscheby@ovh.net', '10-07-1998', 431, '04-06-2020', 294793.7);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3738813839', 'Tore Nunns', 'tnunnsbz@baidu.com', '19-09-2010', 432, '28-10-2021', 236732.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4499631837', 'Colby Johananoff', 'cjohananoffc0@telegraph.co.uk', '08-05-2009', 433, '28-02-2021', 679260.35);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8598332893', 'Abel Spore', 'asporec1@goo.gl', '25-05-2015', 434, '25-02-2023', 609331.42);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8449433487', 'Major Inkin', 'minkinc2@cam.ac.uk', '15-08-1992', 435, '29-03-2021', 154636.1);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3208143760', 'Kippie Dace', 'kdacec3@phoca.cz', '08-02-2009', 436, '05-08-2020', 568636.26);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3525467928', 'Abey Gotts', 'agottsc4@yahoo.co.jp', '19-02-1996', 437, '22-02-2022', 21164.98);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9151804103', 'Marion Basketter', 'mbasketterc5@baidu.com', '02-04-2002', 438, '21-02-2023', 20286.79);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7312186660', 'Sadye Morrison', 'smorrisonc6@newsvine.com', '16-12-1998', 439, '13-02-2022', 546403.24);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8041852631', 'Ave Leppingwell', 'aleppingwellc7@ask.com', '24-01-1995', 440, '25-07-2022', 495340.79);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7011882527', 'Caleb Vasyagin', 'cvasyaginc8@cafepress.com', '11-07-1996', 441, '01-03-2022', 599652.35);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2065386925', 'Gale Rhydderch', 'grhydderchc9@cargocollective.com', '28-02-2012', 442, '26-07-2022', 606315.55);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4864767692', 'Jocelyne O''Lyhane', 'jolyhaneca@creativecommons.org', '30-06-2014', 443, '25-01-2023', 982109.17);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5903307713', 'Wylie Josham', 'wjoshamcb@angelfire.com', '21-09-2010', 444, '05-12-2021', 372981.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3894715151', 'Pam Bastone', 'pbastonecc@indiegogo.com', '13-04-1998', 445, '26-11-2021', 326938.4);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8199836850', 'Roxie Thomassen', 'rthomassencd@oracle.com', '05-10-1992', 446, '07-03-2021', 745645.84);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7908758177', 'Klemens Daws', 'kdawsce@typepad.com', '12-01-2020', 447, '25-08-2020', 277781.98);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3192496330', 'Paulie O''Dee', 'podeecf@storify.com', '26-09-2002', 448, '12-01-2022', 235853.19);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2827835221', 'Delores Lawry', 'dlawrycg@state.tx.us', '16-04-2010', 449, '10-05-2021', 889943.68);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5147761193', 'Myra Leftbridge', 'mleftbridgech@angelfire.com', '04-09-1995', 450, '10-02-2023', 262775.45);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5355846202', 'Timoteo Frudd', 'tfruddci@un.org', '09-05-2014', 451, '17-08-2021', 288940.54);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4459927562', 'Archibaldo Odney', 'aodneycj@state.tx.us', '21-07-1994', 452, '12-09-2021', 679739.99);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6768042768', 'Vin Wolfarth', 'vwolfarthck@bbc.co.uk', '29-09-1997', 453, '21-12-2020', 621594.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3555502384', 'Edgard Hardan', 'ehardancl@stumbleupon.com', '22-06-2005', 454, '05-02-2022', 456512.81);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6149147565', 'Willie Wewell', 'wwewellcm@marketwatch.com', '21-07-1996', 455, '19-03-2022', 878670.09);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9176317514', 'Rowan Snyder', 'rsnydercn@boston.com', '30-07-2016', 456, '06-03-2023', 315114.97);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6108323215', 'Benetta Clifforth', 'bclifforthco@unicef.org', '27-07-2018', 457, '24-09-2020', 818961.96);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8447274290', 'Kendell Barthot', 'kbarthotcp@usnews.com', '30-08-1997', 458, '16-10-2021', 179504.1);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7771799101', 'Pavlov Kitchin', 'pkitchincq@wired.com', '04-11-2019', 459, '14-06-2022', 261323.78);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8178699101', 'Martie Birdis', 'mbirdiscr@shutterfly.com', '19-06-2017', 460, '12-09-2020', 764330.28);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7475102400', 'Gratia Williamson', 'gwilliamsoncs@independent.co.uk', '02-03-2004', 461, '13-02-2023', 860365.84);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9948871945', 'Cherye Ginglell', 'cginglellct@plala.or.jp', '26-08-2010', 462, '24-11-2020', 491184.84);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2658597247', 'Clifford Hanscomb', 'chanscombcu@spotify.com', '13-11-2008', 463, '24-02-2021', 789641.49);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5231169170', 'Thorndike Delves', 'tdelvescv@pagesperso-orange.fr', '08-11-2000', 464, '02-06-2022', 67054.99);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7859047485', 'Daron Christofides', 'dchristofidescw@nationalgeographic.com', '12-03-2008', 465, '07-02-2022', 550815.72);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2623381955', 'Alano Capini', 'acapinicx@drupal.org', '10-02-1999', 466, '04-12-2020', 100449.44);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6649177326', 'Silvio Wiffen', 'swiffency@altervista.org', '15-07-2013', 467, '19-03-2021', 232928.3);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6062053389', 'Annora Raynor', 'araynorcz@over-blog.com', '09-06-2015', 468, '05-08-2021', 2565.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7654959329', 'Sherye Sauven', 'ssauvend0@pagesperso-orange.fr', '23-01-2008', 469, '15-11-2020', 446672.36);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5846268507', 'Bria Alu', 'balud1@skype.com', '19-05-1992', 470, '12-05-2021', 922682.47);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8564778056', 'Reggie Doick', 'rdoickd2@kickstarter.com', '23-09-2007', 471, '21-07-2020', 361815.13);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6387702439', 'Redd Adame', 'radamed3@jugem.jp', '29-11-1997', 472, '11-07-2020', 304997.52);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7838323538', 'Callie Hutson', 'chutsond4@infoseek.co.jp', '30-09-2018', 473, '07-11-2020', 518462.32);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1425512780', 'Axe Ledgley', 'aledgleyd5@va.gov', '07-07-2002', 474, '20-10-2022', 395878.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5962860887', 'Muire Vanyashkin', 'mvanyashkind6@webmd.com', '29-09-2005', 475, '11-04-2020', 146308.75);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1752838147', 'Kipper Taggart', 'ktaggartd7@networksolutions.com', '02-02-1993', 476, '30-10-2020', 219422.3);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8949292730', 'Lucio Bow', 'lbowd8@simplemachines.org', '04-09-2013', 477, '28-10-2022', 542878.97);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9526395426', 'Tory Dart', 'tdartd9@google.co.jp', '18-05-2004', 478, '12-12-2020', 742639.62);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7469015989', 'Berte Leneve', 'bleneveda@nature.com', '25-03-1999', 479, '15-11-2020', 811009.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8131232315', 'Cullen Sevior', 'cseviordb@illinois.edu', '15-09-1999', 480, '09-12-2022', 114562.56);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8905223485', 'Lorant Hanley', 'lhanleydc@washington.edu', '10-06-2009', 481, '03-08-2022', 564949.24);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7562305226', 'Ciel Habert', 'chabertdd@feedburner.com', '19-12-2002', 482, '01-01-2022', 215223.98);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7238946910', 'Gaelan Worland', 'gworlandde@cisco.com', '27-07-1997', 483, '07-04-2020', 488372.76);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8443056305', 'Arabella Swine', 'aswinedf@thetimes.co.uk', '02-05-2014', 484, '14-09-2020', 890433.33);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5187023750', 'Hillyer Casarini', 'hcasarinidg@discuz.net', '25-08-2005', 485, '22-01-2023', 798761.79);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5858052307', 'Hebert Backhurst', 'hbackhurstdh@wikia.com', '20-08-2002', 486, '09-01-2023', 968632.3);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4722181578', 'Danika Leveridge', 'dleveridgedi@buzzfeed.com', '04-11-2009', 487, '28-07-2020', 277157.67);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8108042001', 'Theodora Le Huquet', 'tledj@umn.edu', '28-01-1995', 488, '24-03-2020', 771720.19);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9964491952', 'Mei Bodill', 'mbodilldk@webs.com', '05-12-1991', 489, '24-02-2022', 90493.57);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2509137181', 'Mayer Zmitrichenko', 'mzmitrichenkodl@g.co', '28-08-1999', 490, '19-07-2022', 945694.95);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9423270083', 'Doralyn Boddie', 'dboddiedm@prlog.org', '18-01-2012', 491, '20-07-2022', 575122.93);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2454801587', 'Case Camock', 'ccamockdn@newsvine.com', '26-12-1998', 492, '16-12-2020', 691031.14);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9168672257', 'Niki Jellard', 'njellarddo@ed.gov', '01-03-2002', 493, '26-04-2022', 520413.21);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6892106455', 'Federico Lytlle', 'flytlledp@example.com', '11-03-2020', 494, '11-04-2020', 926385.17);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9344447126', 'Muffin Pentin', 'mpentindq@zimbio.com', '01-09-2005', 495, '21-03-2021', 412809.27);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9013531119', 'Emmalee Thirlwell', 'ethirlwelldr@who.int', '12-01-2001', 496, '28-01-2023', 73988.34);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7868272416', 'Beniamino Suddaby', 'bsuddabyds@tamu.edu', '14-02-2001', 497, '08-12-2022', 524002.6);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5992122960', 'Adena Cannavan', 'acannavandt@studiopress.com', '19-08-1995', 498, '21-03-2021', 569141.87);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6279847313', 'Florie Remmer', 'fremmerdu@myspace.com', '27-03-2006', 499, '04-08-2021', 280153.77);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7614080442', 'Nicholle Blankhorn', 'nblankhorndv@cmu.edu', '26-06-2010', 500, '30-03-2022', 944765.89);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5795211574', 'Heindrick Gollop', 'hgollopdw@yellowpages.com', '28-05-2007', 501, '09-01-2022', 702069.49);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9089570789', 'Karlie Castrillo', 'kcastrillodx@msu.edu', '14-01-2006', 502, '19-04-2021', 393978.5);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1555788967', 'Kahaleel Greir', 'kgreirdy@aol.com', '16-05-2009', 503, '18-12-2022', 540242.71);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4756651226', 'Whit Colquite', 'wcolquitedz@skyrock.com', '14-11-2011', 504, '22-03-2022', 713767.55);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5504102338', 'Melanie Hargrave', 'mhargravee0@comsenz.com', '13-09-2004', 505, '08-07-2021', 369918.12);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7971934267', 'Ariela Todarini', 'atodarinie1@usnews.com', '19-09-2013', 506, '11-05-2020', 998501.09);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8734629341', 'Tait Kerton', 'tkertone2@gizmodo.com', '02-11-2002', 507, '20-12-2021', 492097.89);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7976541742', 'Jenni Tribe', 'jtribee3@huffingtonpost.com', '03-08-2004', 508, '23-09-2020', 54019.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1927401522', 'Radcliffe Gives', 'rgivese4@google.co.jp', '27-11-2017', 509, '09-10-2022', 8165.99);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5657864203', 'Fancy Ingrey', 'fingreye5@tripod.com', '20-03-1995', 510, '21-04-2022', 960880.65);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2244491124', 'Madlin Gateland', 'mgatelande6@bbb.org', '18-12-2006', 511, '20-04-2021', 645072.85);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9942177609', 'Antonina Rahl', 'arahle7@stumbleupon.com', '10-01-1995', 512, '10-12-2021', 673712.39);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9533366041', 'Ambur Cray', 'acraye8@microsoft.com', '12-01-2010', 513, '27-04-2020', 769629.41);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2103645831', 'Linnea Follacaro', 'lfollacaroe9@deliciousdays.com', '28-03-2013', 514, '05-07-2020', 229311.47);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4247420678', 'Winnie Zupa', 'wzupaea@ucla.edu', '10-10-2009', 515, '30-07-2020', 128891.18);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8407856783', 'Virge Pauer', 'vpauereb@imdb.com', '10-08-2005', 516, '11-08-2021', 63697.31);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9493719602', 'Frants Gallienne', 'fgallienneec@blogtalkradio.com', '18-10-2009', 517, '18-05-2021', 922344.24);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7131141924', 'Langsdon Pavese', 'lpaveseed@techcrunch.com', '02-11-1991', 518, '10-07-2021', 93207.77);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7422388646', 'Camella Garnam', 'cgarnamee@nih.gov', '03-05-2008', 519, '12-05-2021', 409168.75);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8501496588', 'Jarrid Arrundale', 'jarrundaleef@unblog.fr', '24-11-2007', 520, '04-08-2022', 770861.89);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4609632650', 'Jan Maunder', 'jmaundereg@sina.com.cn', '20-06-2013', 521, '23-03-2021', 274030.53);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7988340565', 'Susana Dupey', 'sdupeyeh@fc2.com', '03-07-2008', 522, '07-11-2021', 314453.94);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4512202327', 'August MacCosty', 'amaccostyei@photobucket.com', '08-01-1993', 523, '23-07-2020', 177135.98);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9465402806', 'Shauna Sinkin', 'ssinkinej@livejournal.com', '22-03-2003', 524, '03-07-2022', 557245.19);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7095041451', 'Ivory Bardwall', 'ibardwallek@webs.com', '23-01-2018', 525, '13-06-2022', 901932.88);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2628498908', 'Andra Ligoe', 'aligoeel@vimeo.com', '16-05-2016', 526, '09-11-2022', 786602.6);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8051742359', 'Dorris Sweetzer', 'dsweetzerem@state.tx.us', '03-01-2001', 527, '01-12-2020', 491533.51);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7999394157', 'Consuela Good', 'cgooden@discovery.com', '20-02-1994', 528, '30-05-2021', 818297.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4918683112', 'Hermine Blinco', 'hblincoeo@china.com.cn', '13-10-1993', 529, '29-07-2021', 907519.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7956869634', 'Gerianne Darkins', 'gdarkinsep@rambler.ru', '31-10-2004', 530, '02-06-2022', 384836.28);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9924646955', 'Matti Peyton', 'mpeytoneq@google.ru', '07-12-2008', 531, '19-09-2022', 934768.8);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7226291960', 'Jolyn Livens', 'jlivenser@forbes.com', '01-10-1991', 532, '26-01-2022', 59264.61);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1165340952', 'Camala De Cleyne', 'cdees@wufoo.com', '01-03-2000', 533, '27-01-2021', 49289.7);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3582026893', 'Hendrick Bernette', 'hbernetteet@unc.edu', '02-05-2003', 534, '06-07-2022', 237383.06);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4467035323', 'Conant Grimsdyke', 'cgrimsdykeeu@msu.edu', '20-06-2000', 535, '27-04-2020', 791039.54);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6417361194', 'Darrick Caldero', 'dcalderoev@php.net', '12-02-2016', 536, '15-01-2023', 424511.84);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6657851855', 'Carilyn Voak', 'cvoakew@trellian.com', '16-06-2000', 537, '15-03-2021', 165585.68);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3735677156', 'Toby Ferrao', 'tferraoex@omniture.com', '22-02-1992', 538, '18-07-2021', 919972.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7627260223', 'Aeriel Ormes', 'aormesey@ycombinator.com', '24-06-1999', 539, '18-01-2023', 277074.32);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4959077385', 'Ingunna Ravenhill', 'iravenhillez@alexa.com', '15-11-2010', 540, '15-03-2022', 298961.68);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5012344830', 'Kerrin Blaxland', 'kblaxlandf0@dyndns.org', '15-04-2001', 541, '16-09-2020', 402868.39);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4965753035', 'Had Bitten', 'hbittenf1@topsy.com', '19-05-1993', 542, '12-04-2022', 961459.85);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2015521739', 'Tiphany Bingle', 'tbinglef2@mail.ru', '30-05-1997', 543, '31-07-2020', 765973.83);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2537405997', 'Hilary Sudddard', 'hsudddardf3@xrea.com', '24-08-2016', 544, '15-11-2020', 490150.52);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9136322390', 'Darnall Cano', 'dcanof4@walmart.com', '01-09-2009', 545, '27-08-2022', 861175.56);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7966863577', 'Hernando Kacheller', 'hkachellerf5@cnn.com', '09-08-2019', 546, '12-04-2020', 667367.31);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6057066160', 'Kalindi Madgin', 'kmadginf6@google.com.au', '10-01-2015', 547, '29-11-2022', 166322.96);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8584943865', 'Floris Kollasch', 'fkollaschf7@house.gov', '23-05-2000', 548, '10-06-2022', 43034.34);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3869004193', 'Dew Wadly', 'dwadlyf8@pen.io', '13-07-2012', 549, '10-02-2023', 644481.8);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2765292014', 'Johnette Cosh', 'jcoshf9@sciencedaily.com', '26-01-2013', 550, '05-05-2021', 580916.44);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1551986819', 'Ina Hallihan', 'ihallihanfa@amazonaws.com', '08-02-2010', 551, '14-07-2020', 578821.28);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4284852276', 'Myrtle Drinnan', 'mdrinnanfb@telegraph.co.uk', '11-08-2015', 552, '18-11-2020', 865876.66);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7573328089', 'Rex Peirazzi', 'rpeirazzifc@twitpic.com', '12-10-1992', 553, '10-06-2022', 71385.7);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5647772901', 'Esra Pasby', 'epasbyfd@digg.com', '16-04-2002', 554, '15-02-2023', 459347.52);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1593110004', 'Camala Stickells', 'cstickellsfe@twitter.com', '30-01-1993', 555, '01-09-2022', 982878.59);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1938121839', 'Dunstan Hackworth', 'dhackworthff@prnewswire.com', '23-07-2013', 556, '26-08-2021', 730573.48);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1754266612', 'Pebrook McGroarty', 'pmcgroartyfg@amazon.co.jp', '17-05-1994', 557, '27-04-2022', 368960.72);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7353977545', 'Nalani Jenk', 'njenkfh@china.com.cn', '17-01-1994', 558, '24-06-2020', 570007.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6119953333', 'Lissy Cobbing', 'lcobbingfi@t.co', '17-08-2012', 559, '16-05-2020', 216680.24);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4212931394', 'Suzy Nelthorpe', 'snelthorpefj@canalblog.com', '02-09-1998', 560, '17-07-2021', 991933.23);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8076269019', 'Barnebas Piff', 'bpifffk@washington.edu', '09-09-1993', 561, '25-09-2022', 566846.68);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9285781444', 'Russell Wrate', 'rwratefl@bigcartel.com', '08-01-2005', 562, '15-08-2022', 270605.75);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3453924654', 'Stanly Hankinson', 'shankinsonfm@hao123.com', '04-08-2016', 563, '07-01-2023', 871847.93);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6484765872', 'Benjamin Wescott', 'bwescottfn@yahoo.co.jp', '31-03-2003', 564, '23-08-2021', 308123.01);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5279171566', 'Valentina Maric', 'vmaricfo@mediafire.com', '16-05-2001', 565, '01-09-2021', 119914.8);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6998434155', 'Skyler Butchart', 'sbutchartfp@mapy.cz', '21-05-1996', 566, '28-01-2021', 685317.81);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1388679917', 'Jeniece Neggrini', 'jneggrinifq@cocolog-nifty.com', '04-03-2005', 567, '10-10-2021', 95017.92);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8111735161', 'Bertrando Lawley', 'blawleyfr@japanpost.jp', '22-05-2014', 568, '10-02-2021', 384263.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9233326995', 'Orazio Clemens', 'oclemensfs@usa.gov', '03-02-2006', 569, '27-01-2022', 120534.97);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3374000976', 'Ashley Venables', 'avenablesft@lycos.com', '01-08-2016', 570, '03-02-2021', 264428.81);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9553141956', 'Therese Cressey', 'tcresseyfu@dot.gov', '22-09-2002', 571, '01-03-2022', 648762.09);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5371687920', 'Corny Swainson', 'cswainsonfv@ed.gov', '12-10-1996', 572, '12-01-2023', 663697.81);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6904939965', 'Brock Terrans', 'bterransfw@apache.org', '01-01-1998', 573, '15-09-2020', 490235.68);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3998480274', 'Robb Pelling', 'rpellingfx@slideshare.net', '22-01-2001', 574, '27-07-2020', 571766.07);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7289077786', 'Addia Conn', 'aconnfy@dion.ne.jp', '10-12-2017', 575, '04-03-2022', 754855.66);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8642571707', 'Margarethe Lowdiane', 'mlowdianefz@theglobeandmail.com', '28-10-2018', 576, '05-04-2022', 187882.11);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7326344927', 'Harmonie Emanueli', 'hemanuelig0@wufoo.com', '25-04-2014', 577, '24-09-2021', 188687.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6988030465', 'Noah Cellier', 'ncellierg1@163.com', '24-06-2014', 578, '07-02-2021', 890255.51);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7406245565', 'Melantha Sherrum', 'msherrumg2@prlog.org', '19-02-2003', 579, '23-03-2022', 79997.35);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1224509363', 'Clarence Barley', 'cbarleyg3@deliciousdays.com', '13-02-2010', 580, '31-03-2022', 109763.2);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4607209362', 'Alex Chittenden', 'achittendeng4@moonfruit.com', '21-01-2020', 581, '17-04-2022', 894605.86);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1467677248', 'Kelcy Helm', 'khelmg5@spiegel.de', '09-04-1994', 582, '04-12-2021', 17670.47);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4608084685', 'Levey Brierly', 'lbrierlyg6@tiny.cc', '21-06-1995', 583, '03-06-2020', 462293.3);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7617108250', 'Eleen Doubrava', 'edoubravag7@umich.edu', '15-07-1994', 584, '13-08-2020', 556503.87);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1654123660', 'Etheline Crole', 'ecroleg8@privacy.gov.au', '03-08-2013', 585, '15-08-2020', 242181.65);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3831082928', 'Kailey Dwelley', 'kdwelleyg9@kickstarter.com', '03-09-2005', 586, '21-01-2022', 975394.28);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9712004999', 'Auberta Elnor', 'aelnorga@360.cn', '13-12-2004', 587, '16-04-2021', 426882.92);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6518040918', 'Andrei Stebbings', 'astebbingsgb@opera.com', '18-03-2017', 588, '27-09-2021', 571051.92);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9745033429', 'Hadleigh Pitchers', 'hpitchersgc@amazon.co.jp', '26-08-1991', 589, '11-02-2023', 613057.6);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7374694214', 'Lyndel Arger', 'largergd@weather.com', '03-09-2016', 590, '07-08-2022', 308492.1);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3986501063', 'Oralie Davinet', 'odavinetge@barnesandnoble.com', '10-10-2010', 591, '09-11-2022', 50085.57);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9591948847', 'Arvie Morden', 'amordengf@theglobeandmail.com', '14-08-1992', 592, '17-05-2020', 517869.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8672611111', 'Sigismond Striker', 'sstrikergg@lycos.com', '30-08-1994', 593, '17-09-2022', 666380.09);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7715110470', 'Valdemar Ellice', 'vellicegh@ucoz.com', '24-04-2019', 594, '14-04-2022', 63087.28);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3744250097', 'Menard Dominicacci', 'mdominicaccigi@timesonline.co.uk', '16-12-2012', 595, '22-05-2022', 299942.36);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4909852043', 'Marie Petrakov', 'mpetrakovgj@ifeng.com', '26-08-2011', 596, '12-09-2022', 138394.33);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9629663495', 'Nikoletta Kayser', 'nkaysergk@paypal.com', '16-09-1996', 597, '06-11-2021', 151756.99);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2306698185', 'Gabriel Pretsell', 'gpretsellgl@opensource.org', '18-03-1994', 598, '08-02-2023', 982725.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7645819241', 'Lacee Sherborn', 'lsherborngm@myspace.com', '23-07-2012', 599, '16-03-2023', 397470.87);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7608894883', 'Zachariah Hearnah', 'zhearnahgn@time.com', '31-07-1995', 600, '06-10-2021', 892694.93);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7316340467', 'Brnaby Johnigan', 'bjohnigango@yahoo.co.jp', '17-06-1995', 601, '09-10-2021', 412412.22);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9481965743', 'Godfry Shelbourne', 'gshelbournegp@comcast.net', '15-11-2008', 602, '25-01-2023', 359890.4);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7277427477', 'Conrad Drysdall', 'cdrysdallgq@cargocollective.com', '04-02-2011', 603, '27-05-2020', 614575.57);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3601910651', 'Jacquelynn Roffe', 'jroffegr@networksolutions.com', '23-05-1993', 604, '08-09-2022', 361212.96);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8608392027', 'Cicily Turvie', 'cturviegs@google.com.br', '06-02-2015', 605, '26-03-2021', 592326.41);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6265542112', 'Katinka Le Ball', 'klegt@addtoany.com', '27-04-2006', 606, '27-06-2020', 542866.34);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4253538378', 'Merwin Quinn', 'mquinngu@auda.org.au', '31-08-2011', 607, '15-05-2022', 124343.69);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3588056935', 'Jacklyn Farlamb', 'jfarlambgv@wordpress.com', '13-05-1992', 608, '19-01-2022', 643282.53);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7068259163', 'Gerome Egar', 'gegargw@buzzfeed.com', '15-02-2005', 609, '13-10-2022', 936425.84);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7896239217', 'Eba Bosma', 'ebosmagx@prweb.com', '02-05-2016', 610, '02-12-2020', 426625.42);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7549897792', 'Elmira Manns', 'emannsgy@unblog.fr', '27-04-1996', 611, '18-11-2021', 834415.19);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3466697637', 'Kyla Delicate', 'kdelicategz@europa.eu', '26-02-1993', 612, '03-07-2022', 834671.48);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1539716898', 'Benjy Adlam', 'badlamh0@about.me', '15-07-2004', 613, '25-11-2021', 587288.68);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7405450645', 'Eduard Georgeson', 'egeorgesonh1@state.tx.us', '26-09-1997', 614, '23-11-2022', 596618.08);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6467813239', 'Meaghan Baskwell', 'mbaskwellh2@smugmug.com', '15-12-2018', 615, '07-06-2021', 558795.37);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4324950046', 'Tine Toope', 'ttoopeh3@virginia.edu', '25-01-2001', 616, '06-12-2020', 951888.45);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7554775258', 'Madelena Nund', 'mnundh4@google.com.au', '09-11-1991', 617, '30-10-2022', 737002.51);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9455211411', 'Flemming Fenn', 'ffennh5@upenn.edu', '23-12-2006', 618, '25-11-2020', 678112.04);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1761443600', 'Kat Ravilious', 'kravilioush6@acquirethisname.com', '22-10-1996', 619, '12-02-2022', 772330.96);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7693656915', 'Shandy Mahood', 'smahoodh7@ustream.tv', '11-09-1999', 620, '27-10-2021', 433481.12);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3291703905', 'Chrisse Dibden', 'cdibdenh8@cbsnews.com', '17-09-2018', 621, '21-05-2021', 601712.42);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7855345035', 'Grete Tomkowicz', 'gtomkowiczh9@ted.com', '08-08-2010', 622, '21-06-2021', 94774.03);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2354841278', 'Cleve Feldhammer', 'cfeldhammerha@sina.com.cn', '06-06-2008', 623, '22-02-2022', 269644.9);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2045219252', 'Benoite Godding', 'bgoddinghb@merriam-webster.com', '28-08-1992', 624, '25-09-2020', 805017.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7034874149', 'Wittie Calcut', 'wcalcuthc@harvard.edu', '31-07-1997', 625, '22-11-2020', 473865.37);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7348994029', 'Gwenora Gerrit', 'ggerrithd@webs.com', '05-05-1998', 626, '10-09-2022', 89496.75);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6862035738', 'Nerissa O'' Reagan', 'nohe@wikia.com', '05-01-1993', 627, '16-10-2022', 160975.81);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3564070169', 'Sherline Touret', 'stourethf@nps.gov', '12-02-2003', 628, '12-12-2020', 631158.97);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4644258315', 'Rosemonde Swepstone', 'rswepstonehg@ebay.co.uk', '21-04-1998', 629, '24-11-2022', 408203.54);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9983595345', 'Luce Tate', 'ltatehh@shutterfly.com', '01-01-1993', 630, '05-12-2021', 617436.77);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7268505069', 'Sylvester Rodbourne', 'srodbournehi@ustream.tv', '29-04-2007', 631, '18-11-2020', 353286.89);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2964793955', 'Mollie Newtown', 'mnewtownhj@acquirethisname.com', '25-06-1998', 632, '25-07-2022', 436346.6);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9631140649', 'Wildon Murthwaite', 'wmurthwaitehk@creativecommons.org', '22-07-1992', 633, '03-05-2020', 668612.52);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3471102446', 'Stephi Sills', 'ssillshl@sciencedaily.com', '20-04-2001', 634, '27-04-2022', 612059.83);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1041020824', 'Josh Georgi', 'jgeorgihm@house.gov', '27-03-2017', 635, '07-10-2021', 759563.14);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6448304311', 'Ophelia Keddie', 'okeddiehn@1und1.de', '03-10-2017', 636, '19-07-2022', 883399.87);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6104350566', 'Tildi Budnik', 'tbudnikho@statcounter.com', '13-02-1999', 637, '04-08-2022', 275656.38);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8169350240', 'Eda Hackney', 'ehackneyhp@merriam-webster.com', '03-03-2011', 638, '13-05-2021', 656014.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9094035450', 'Gabriello Klazenga', 'gklazengahq@time.com', '23-10-2013', 639, '26-04-2021', 940469.2);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5623930602', 'Levey de Glanville', 'ldehr@china.com.cn', '10-01-2007', 640, '18-12-2021', 823025.93);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6857397193', 'Muffin Carbin', 'mcarbinhs@clickbank.net', '25-08-1995', 641, '27-05-2021', 240929.51);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3925955893', 'Selig Sherwill', 'ssherwillht@japanpost.jp', '18-03-1993', 642, '30-03-2021', 510040.77);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4286347228', 'Claiborn Feehery', 'cfeeheryhu@icq.com', '21-12-1991', 643, '24-10-2022', 374003.8);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6525009412', 'Auberta Wanstall', 'awanstallhv@bluehost.com', '08-07-1998', 644, '15-09-2022', 910812.79);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3046102763', 'Leia Norwich', 'lnorwichhw@altervista.org', '14-04-1993', 645, '25-06-2021', 574728.19);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6575213840', 'Clark Telling', 'ctellinghx@themeforest.net', '10-10-2008', 646, '10-11-2021', 853391.51);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2504472642', 'Mab Jullian', 'mjullianhy@home.pl', '03-05-1994', 647, '02-07-2020', 765823.7);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8249890919', 'Camila O''Spillane', 'cospillanehz@google.es', '10-09-1996', 648, '15-03-2022', 936455.2);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1117829986', 'Cash M''cowis', 'cmcowisi0@jugem.jp', '12-09-1998', 649, '10-02-2023', 295946.71);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8563940586', 'Koral Simonazzi', 'ksimonazzii1@wikispaces.com', '23-01-2004', 650, '07-03-2022', 534815.79);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2499592318', 'Benedict Burns', 'bburnsi2@ocn.ne.jp', '20-11-1994', 651, '27-12-2021', 444865.77);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3731796867', 'Costa Yanson', 'cyansoni3@state.tx.us', '21-02-2019', 652, '29-12-2021', 162678.12);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6347413302', 'Gilda Bolderstone', 'gbolderstonei4@sogou.com', '27-08-1992', 653, '16-10-2022', 657913.45);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3641058988', 'Andrei Francke', 'afranckei5@livejournal.com', '26-02-2006', 654, '05-09-2022', 209672.81);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7926484519', 'Boniface Spinas', 'bspinasi6@sitemeter.com', '18-05-1998', 655, '27-08-2020', 998193.18);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9699990528', 'Jonie Kingzeth', 'jkingzethi7@chronoengine.com', '01-06-2013', 656, '16-09-2021', 812214.53);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9179090765', 'Niccolo Patshull', 'npatshulli8@wix.com', '23-08-2017', 657, '10-11-2021', 494864.54);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7268369591', 'Mahmud Liptrot', 'mliptroti9@myspace.com', '24-10-1998', 658, '15-02-2021', 646814.91);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4154928976', 'Augustus Cossor', 'acossoria@wiley.com', '05-01-2011', 659, '02-01-2021', 104853.49);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9779477130', 'Kermy Pilsbury', 'kpilsburyib@hugedomains.com', '10-01-2012', 660, '04-08-2021', 610195.43);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7284465370', 'Alica De Vaux', 'adeic@sciencedirect.com', '24-02-1999', 661, '30-05-2021', 899451.9);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6798558369', 'Arron Purle', 'apurleid@diigo.com', '17-03-2020', 662, '17-03-2022', 704936.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4958420690', 'Laurianne Hearty', 'lheartyie@boston.com', '08-12-2003', 663, '28-11-2020', 83445.47);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3569721791', 'Charmane Mayman', 'cmaymanif@networkadvertising.org', '18-01-2009', 664, '07-03-2021', 965638.07);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7437243755', 'Ariadne Dearsley', 'adearsleyig@walmart.com', '15-09-2012', 665, '22-05-2021', 430142.46);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8938263979', 'Ermina Squibbes', 'esquibbesih@indiegogo.com', '28-06-1998', 666, '16-12-2020', 185825.62);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4965960928', 'Doralia Zealey', 'dzealeyii@bigcartel.com', '09-12-2018', 667, '23-02-2022', 212398.73);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7884232019', 'Phillipp Laurent', 'plaurentij@chron.com', '20-01-1996', 668, '09-08-2021', 463184.22);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1571273448', 'Mollee Capeloff', 'mcapeloffik@gov.uk', '02-09-1993', 669, '24-04-2022', 357352.66);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4356614053', 'Wynne Boyd', 'wboydil@gravatar.com', '17-10-1992', 670, '04-09-2022', 471795.15);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4003837129', 'Jeremiah Solesbury', 'jsolesburyim@washingtonpost.com', '08-04-1998', 671, '21-06-2020', 4100.16);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9938087641', 'Lewie MacColm', 'lmaccolmin@networksolutions.com', '19-11-2015', 672, '27-08-2022', 306080.06);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1665041868', 'Gaven Norquoy', 'gnorquoyio@cargocollective.com', '18-09-2012', 673, '23-04-2021', 819787.13);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6811863087', 'Marleah Szimoni', 'mszimoniip@sogou.com', '21-06-1992', 674, '20-11-2021', 609050.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8189199119', 'Horatius Barcke', 'hbarckeiq@imdb.com', '12-11-2003', 675, '09-05-2022', 86074.17);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9156897674', 'Tansy Lorryman', 'tlorrymanir@go.com', '01-10-2017', 676, '21-01-2021', 641249.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5336952870', 'Grant Strowthers', 'gstrowthersis@taobao.com', '21-03-2015', 677, '02-03-2022', 362048.88);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3852375437', 'Elvina Harland', 'eharlandit@house.gov', '15-08-2008', 678, '19-01-2022', 563812.37);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5145450217', 'Antonino Slocomb', 'aslocombiu@zimbio.com', '26-10-1992', 679, '26-10-2021', 283613.53);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3092259188', 'Ava Mahoney', 'amahoneyiv@ftc.gov', '07-10-2008', 680, '20-04-2020', 482052.11);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4555705787', 'Archer Bone', 'aboneiw@tinyurl.com', '30-07-2019', 681, '15-06-2021', 464115.56);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6858939587', 'Cyndie Skelhorn', 'cskelhornix@spotify.com', '29-10-2016', 682, '28-11-2022', 887892.68);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5303013953', 'Wyatt Jedraszek', 'wjedraszekiy@jiathis.com', '28-10-1995', 683, '03-09-2022', 862742.35);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6586400788', 'Ramonda Streeton', 'rstreetoniz@google.cn', '03-06-1995', 684, '11-06-2021', 235969.05);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9432242218', 'Maisie Toal', 'mtoalj0@reference.com', '20-10-2015', 685, '12-06-2021', 373185.45);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3661262242', 'Gray Eytel', 'geytelj1@joomla.org', '30-09-2003', 686, '29-09-2022', 493279.55);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4818453986', 'Cristi Chmarny', 'cchmarnyj2@imageshack.us', '10-10-1993', 687, '26-11-2022', 878374.38);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8402151724', 'Cathi Cockman', 'ccockmanj3@gmpg.org', '22-10-2002', 688, '24-07-2022', 107424.03);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9787070653', 'Sidonnie McGilvray', 'smcgilvrayj4@fc2.com', '08-08-1992', 689, '06-09-2020', 808129.31);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2696452694', 'Britte Dowsett', 'bdowsettj5@ucla.edu', '10-05-1998', 690, '16-06-2022', 310893.73);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5708140404', 'Zach Fabry', 'zfabryj6@fda.gov', '17-04-1992', 691, '06-08-2021', 917123.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7409305625', 'Gilda Ungerer', 'gungererj7@si.edu', '18-07-2013', 692, '21-09-2021', 189340.53);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8967010520', 'Seamus Reddlesden', 'sreddlesdenj8@stanford.edu', '28-03-1998', 693, '07-07-2021', 858167.48);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1082534030', 'Broddie Duffer', 'bdufferj9@elpais.com', '12-03-2015', 694, '23-12-2021', 437180.34);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6676526880', 'Neille Cookson', 'ncooksonja@shutterfly.com', '08-09-1991', 695, '20-09-2022', 850296.93);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1705547560', 'Hubert Reaveley', 'hreaveleyjb@dagondesign.com', '27-10-2002', 696, '14-01-2022', 551402.21);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1191880929', 'Larina Meconi', 'lmeconijc@discovery.com', '17-07-2000', 697, '08-06-2022', 413202.65);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9701413890', 'Raul Adshede', 'radshedejd@nps.gov', '29-05-2017', 698, '15-12-2020', 362121.45);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6648342210', 'Hayward Hise', 'hhiseje@apache.org', '02-11-1996', 699, '22-07-2022', 451643.76);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7917732537', 'Nathanael De Cruce', 'ndejf@google.com.au', '07-07-2004', 700, '01-10-2022', 182508.07);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6377662240', 'Lena Gore', 'lgorejg@so-net.ne.jp', '25-02-1994', 701, '15-11-2020', 317634.08);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7971692630', 'Taite Cominello', 'tcominellojh@prlog.org', '17-07-2015', 702, '08-08-2020', 780560.17);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3325717975', 'Henrik Ronca', 'hroncaji@microsoft.com', '26-04-2006', 703, '30-03-2020', 487465.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1993881673', 'Ingar Aizkovitch', 'iaizkovitchjj@fotki.com', '07-10-2016', 704, '23-12-2021', 975243.48);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8448678913', 'Delcine Meins', 'dmeinsjk@addtoany.com', '15-01-2019', 705, '02-10-2022', 978012.69);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5746889746', 'Katee Ollington', 'kollingtonjl@pagesperso-orange.fr', '31-07-1998', 706, '21-02-2023', 693404.03);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1215230891', 'Mame Filby', 'mfilbyjm@springer.com', '22-02-2010', 707, '03-03-2022', 181167.86);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1031944549', 'Josiah Pettendrich', 'jpettendrichjn@booking.com', '22-09-2004', 708, '13-12-2020', 206627.85);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8579340996', 'Rem Bezants', 'rbezantsjo@blinklist.com', '19-05-2012', 709, '06-09-2021', 285823.24);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5456492755', 'Kesley Bolver', 'kbolverjp@theglobeandmail.com', '02-12-2011', 710, '15-07-2021', 145572.39);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7955874218', 'Rhodia Willatts', 'rwillattsjq@typepad.com', '24-11-2011', 711, '12-12-2022', 478552.65);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9029166211', 'Penrod Massingham', 'pmassinghamjr@google.es', '13-10-1997', 712, '26-12-2021', 249130.82);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6676309303', 'Odele Bedminster', 'obedminsterjs@hhs.gov', '17-07-2002', 713, '13-12-2022', 745607.32);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8462357459', 'Gussi Broy', 'gbroyjt@artisteer.com', '23-04-2018', 714, '06-11-2022', 31677.99);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4029771600', 'Ric Swepstone', 'rswepstoneju@yolasite.com', '17-08-1997', 715, '13-02-2023', 986379.09);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3147124439', 'Gabriela Stebbins', 'gstebbinsjv@spotify.com', '03-11-1991', 716, '02-08-2021', 343829.89);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1827989017', 'Albina Sandaver', 'asandaverjw@zimbio.com', '21-07-1993', 717, '03-05-2021', 157687.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4733970782', 'Austen Alster', 'aalsterjx@constantcontact.com', '13-08-2007', 718, '24-11-2021', 781628.71);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7939854776', 'Rowen Geertz', 'rgeertzjy@godaddy.com', '07-10-2017', 719, '02-11-2021', 155965.72);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9869869930', 'Darbie Mell', 'dmelljz@odnoklassniki.ru', '04-04-2017', 720, '11-06-2021', 198093.14);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3178747128', 'Sunny Dripp', 'sdrippk0@ihg.com', '23-04-1999', 721, '01-07-2020', 819899.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5571516441', 'Ketty Kinsey', 'kkinseyk1@nsw.gov.au', '25-02-1994', 722, '05-12-2020', 833163.72);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5504992315', 'Pren Hassey', 'phasseyk2@ovh.net', '06-10-2010', 723, '15-02-2021', 142846.2);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7198845416', 'Marlo Nation', 'mnationk3@google.ca', '01-06-1995', 724, '29-06-2021', 929750.44);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5103315949', 'Marjorie La Batie', 'mlak4@facebook.com', '09-02-2008', 725, '09-07-2020', 465989.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5101115959', 'Vance Fawks', 'vfawksk5@linkedin.com', '06-02-2018', 726, '27-12-2021', 873123.69);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1315739165', 'Liva Beddis', 'lbeddisk6@deliciousdays.com', '30-09-1992', 727, '15-12-2022', 353455.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4577165424', 'Ronny Najera', 'rnajerak7@1und1.de', '24-11-1997', 728, '28-08-2020', 210108.44);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6011473638', 'Doris Pethybridge', 'dpethybridgek8@bloomberg.com', '25-09-1998', 729, '15-08-2022', 551200.34);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1477324969', 'Mano Bonass', 'mbonassk9@oakley.com', '28-10-2013', 730, '12-04-2022', 239815.36);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4602906006', 'Miranda Kohrding', 'mkohrdingka@fastcompany.com', '26-11-2015', 731, '03-08-2020', 474829.88);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5126049836', 'Kassie Moxstead', 'kmoxsteadkb@usnews.com', '27-12-2019', 732, '01-09-2020', 549524.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6653126959', 'Sallyanne Thredder', 'sthredderkc@myspace.com', '13-07-2015', 733, '14-05-2022', 152201.26);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6146058048', 'Nada Yellowley', 'nyellowleykd@about.me', '24-06-1999', 734, '12-08-2021', 36744.04);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1257833053', 'Carie Blaycock', 'cblaycockke@mediafire.com', '19-10-2005', 735, '14-07-2022', 206467.47);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1096966442', 'Jobina O''Sheeryne', 'josheerynekf@youtu.be', '30-08-2004', 736, '25-11-2021', 34044.54);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4916278329', 'Torrence Burnup', 'tburnupkg@google.co.jp', '20-11-2005', 737, '22-11-2022', 95769.59);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5668370270', 'Felisha Ludvigsen', 'fludvigsenkh@washington.edu', '09-12-2001', 738, '09-01-2021', 275110.44);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5243792410', 'Jake Tooby', 'jtoobyki@cmu.edu', '18-08-1995', 739, '25-05-2021', 165191.59);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6088899082', 'Randee Spon', 'rsponkj@ibm.com', '12-08-1997', 740, '03-12-2021', 55837.76);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3806071261', 'Vallie Aveling', 'vavelingkk@woothemes.com', '09-11-1993', 741, '29-04-2022', 587034.08);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7746269345', 'Miner Bindin', 'mbindinkl@mail.ru', '25-10-2000', 742, '26-10-2022', 714922.42);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4539945724', 'Clarine Sotheby', 'csothebykm@merriam-webster.com', '18-03-2001', 743, '20-11-2021', 398371.48);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4025630772', 'Deck Lowthorpe', 'dlowthorpekn@github.com', '27-04-2015', 744, '19-02-2021', 249790.62);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1881430363', 'Annemarie Figgins', 'afigginsko@list-manage.com', '09-03-1992', 745, '18-09-2022', 342895.17);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8172912912', 'Gilbertine Bengough', 'gbengoughkp@creativecommons.org', '13-10-1997', 746, '16-07-2022', 404856.25);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7138579020', 'Alexina Amori', 'aamorikq@mit.edu', '24-08-2008', 747, '28-05-2022', 560625.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8418588812', 'Seka Say', 'ssaykr@cdbaby.com', '10-03-2003', 748, '17-05-2020', 822417.43);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3361786502', 'Jerrine Vanyarkin', 'jvanyarkinks@ucoz.com', '17-04-2002', 749, '10-10-2022', 72978.62);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4241641978', 'Park Ferraron', 'pferraronkt@archive.org', '01-05-1992', 750, '02-06-2021', 741395.34);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9943648653', 'Matelda Klehyn', 'mklehynku@hp.com', '28-12-1996', 751, '31-08-2020', 979891.91);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9279777743', 'Tiffany Cartmale', 'tcartmalekv@smugmug.com', '15-06-2009', 752, '15-04-2021', 284393.06);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8651031276', 'Callida Aust', 'caustkw@theatlantic.com', '19-11-1996', 753, '13-09-2022', 581375.31);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4242780753', 'Gigi Iglesias', 'giglesiaskx@yellowpages.com', '10-08-2017', 754, '25-08-2022', 792255.38);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9378433980', 'Clevey Dillingston', 'cdillingstonky@eventbrite.com', '09-05-2005', 755, '19-05-2020', 698879.67);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6126131194', 'Brianne Phizacklea', 'bphizackleakz@intel.com', '07-07-1993', 756, '06-11-2022', 980351.78);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8268024321', 'Gretchen Copping', 'gcoppingl0@engadget.com', '30-03-2009', 757, '16-02-2022', 615401.85);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5793434963', 'Ezra Wilder', 'ewilderl1@scientificamerican.com', '13-04-2006', 758, '16-04-2022', 518080.79);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6147061949', 'Cody Blamphin', 'cblamphinl2@walmart.com', '08-04-1995', 759, '03-02-2022', 550594.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4621192542', 'Chandler Kivlehan', 'ckivlehanl3@theglobeandmail.com', '08-05-2000', 760, '03-03-2023', 924645.12);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9275531134', 'Gisella Dovidian', 'gdovidianl4@answers.com', '30-07-2009', 761, '29-09-2020', 172105.79);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3591237310', 'Emmalynn Rosengarten', 'erosengartenl5@google.co.jp', '16-07-2013', 762, '02-10-2022', 193897.26);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1763607331', 'Clementine Anthonies', 'canthoniesl6@chron.com', '27-12-2015', 763, '03-05-2021', 938597.73);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9218971522', 'Harriett Yushankin', 'hyushankinl7@ihg.com', '04-05-2002', 764, '10-11-2022', 182127.32);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6667058477', 'Heidie McCallam', 'hmccallaml8@bravesites.com', '01-11-2003', 765, '21-12-2021', 315060.45);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6244144907', 'Hayward Futter', 'hfutterl9@digg.com', '25-05-2012', 766, '11-01-2023', 221585.83);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3423676487', 'Karoly Instone', 'kinstonela@independent.co.uk', '30-10-2000', 767, '02-09-2021', 881270.04);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6862797701', 'Riordan Kalberer', 'rkalbererlb@cbc.ca', '03-03-2007', 768, '30-09-2022', 238861.65);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2587118278', 'Farah Drews', 'fdrewslc@gizmodo.com', '15-06-2015', 769, '17-07-2021', 194756.3);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2361618958', 'Pavla Grammer', 'pgrammerld@edublogs.org', '30-05-1997', 770, '13-11-2020', 784650.05);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7549381233', 'Sidonnie Roydon', 'sroydonle@mayoclinic.com', '16-04-1996', 771, '26-04-2021', 263303.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3944085029', 'Antons Blackwell', 'ablackwelllf@spiegel.de', '21-01-1992', 772, '04-10-2021', 639963.79);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6327969498', 'Selia Rotlauf', 'srotlauflg@europa.eu', '24-04-2006', 773, '22-03-2020', 65401.5);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3436560821', 'Betteanne Fargie', 'bfargielh@networksolutions.com', '06-01-2012', 774, '22-03-2020', 891010.85);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1308941431', 'Prescott Gillian', 'pgillianli@nbcnews.com', '11-04-1995', 775, '07-05-2021', 125217.07);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9059551883', 'Briggs Demcik', 'bdemciklj@163.com', '04-02-2015', 776, '14-07-2020', 61888.49);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6469237956', 'Lilia Domange', 'ldomangelk@plala.or.jp', '23-11-2018', 777, '21-03-2021', 455373.4);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7037665025', 'Ann Liddiard', 'aliddiardll@businesswire.com', '01-04-2012', 778, '17-04-2020', 61387.51);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1019083762', 'Diannne Tarry', 'dtarrylm@delicious.com', '30-04-1993', 779, '27-02-2022', 692274.66);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4418840420', 'Charla Baynton', 'cbayntonln@miitbeian.gov.cn', '14-11-2001', 780, '21-04-2022', 719132.2);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8098732214', 'Ruttger Szach', 'rszachlo@1688.com', '11-07-2018', 781, '08-01-2022', 735103.56);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1217953455', 'Morgan Bock', 'mbocklp@dedecms.com', '24-01-1992', 782, '25-12-2021', 387169.14);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2284643185', 'Adlai Jellico', 'ajellicolq@ning.com', '26-01-2008', 783, '09-07-2021', 159160.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2233459739', 'Lira Binne', 'lbinnelr@oakley.com', '22-11-2015', 784, '08-01-2021', 667669.12);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7637911990', 'Gan Felkin', 'gfelkinls@symantec.com', '12-06-1994', 785, '28-07-2022', 353860.43);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4522519424', 'Roosevelt Leisman', 'rleismanlt@msn.com', '10-03-2012', 786, '25-04-2022', 125480.65);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6991216696', 'Shoshana Pyffe', 'spyffelu@nps.gov', '13-09-2014', 787, '20-12-2022', 468285.25);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1497489950', 'Christie Lehrian', 'clehrianlv@drupal.org', '05-01-1993', 788, '26-03-2022', 341901.93);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5688508853', 'Darnall Broader', 'dbroaderlw@aboutads.info', '17-08-1998', 789, '01-09-2022', 119848.67);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9227066845', 'Katleen Baribal', 'kbariballx@walmart.com', '05-08-2010', 790, '25-06-2020', 807774.91);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5358152838', 'Gwenora Blacket', 'gblacketly@dmoz.org', '19-10-2012', 791, '25-11-2020', 462428.84);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4936563748', 'Galen Chooter', 'gchooterlz@baidu.com', '29-05-1995', 792, '06-06-2022', 125646.25);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1173236550', 'Rubie Winckle', 'rwincklem0@indiatimes.com', '10-07-2005', 793, '09-07-2021', 230381.8);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2158734187', 'Nickolaus Wolfe', 'nwolfem1@ovh.net', '28-06-1999', 794, '09-03-2023', 575214.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5825229107', 'Norene Shortcliffe', 'nshortcliffem2@bbc.co.uk', '08-06-2002', 795, '04-02-2022', 331108.66);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1455121456', 'Johanna O''Hagirtie', 'johagirtiem3@unc.edu', '23-05-2015', 796, '08-12-2020', 280384.55);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5547289512', 'Howard Tiller', 'htillerm4@creativecommons.org', '27-05-1994', 797, '16-12-2021', 910001.67);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2372112335', 'Dallis Carreyette', 'dcarreyettem5@xing.com', '20-12-2004', 798, '19-02-2022', 782257.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6907539784', 'Rayna Oris', 'rorism6@goo.ne.jp', '24-09-2000', 799, '26-10-2021', 187105.6);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3806436794', 'Ricardo Cadden', 'rcaddenm7@blogtalkradio.com', '11-07-2019', 800, '14-07-2020', 754141.38);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7065103207', 'Willie De Cristofalo', 'wdem8@bbb.org', '28-10-2004', 801, '07-05-2022', 189701.31);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7229197841', 'Livvy Hopewell', 'lhopewellm9@about.com', '10-07-2019', 802, '14-12-2021', 589933.67);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4193378896', 'Rosalinda Lorek', 'rlorekma@usa.gov', '14-12-1992', 803, '07-01-2021', 713061.43);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5829783894', 'Gasparo Tankin', 'gtankinmb@examiner.com', '10-11-2008', 804, '14-11-2020', 912609.02);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5624593730', 'Eada Abrehart', 'eabrehartmc@vk.com', '16-09-2001', 805, '30-06-2021', 302268.94);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7208127497', 'Ari Dymocke', 'adymockemd@cdc.gov', '03-06-2005', 806, '12-09-2022', 947977.15);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8266585352', 'Kelcy D'' Angelo', 'kdme@thetimes.co.uk', '14-07-1994', 807, '28-03-2020', 990496.74);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3277183377', 'Sella Llop', 'sllopmf@homestead.com', '11-01-2016', 808, '24-08-2020', 49963.42);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2851855648', 'Thaine Lethieulier', 'tlethieuliermg@cocolog-nifty.com', '31-05-2004', 809, '17-05-2022', 868009.09);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6777068293', 'Laurence Wickliffe', 'lwickliffemh@ebay.com', '05-07-2011', 810, '15-01-2021', 57735.33);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9895783096', 'Vin Baumler', 'vbaumlermi@businesswire.com', '15-04-1994', 811, '15-09-2021', 47462.02);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8437160945', 'Dukie MacAnelley', 'dmacanelleymj@nydailynews.com', '04-04-2005', 812, '29-04-2021', 994309.3);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7108933607', 'Shelley Kilban', 'skilbanmk@issuu.com', '23-07-1999', 813, '04-02-2023', 421243.56);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8631104490', 'Muhammad Toal', 'mtoalml@123-reg.co.uk', '06-03-2006', 814, '22-08-2022', 915388.44);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4957079289', 'Brenda Anniwell', 'banniwellmm@paypal.com', '11-08-2005', 815, '15-08-2021', 538908.85);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6862209428', 'Thayne Biermatowicz', 'tbiermatowiczmn@mashable.com', '02-03-1997', 816, '11-08-2020', 530863.22);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2651954990', 'Ramsay Swannell', 'rswannellmo@blogtalkradio.com', '22-03-2017', 817, '29-06-2021', 127649.17);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4016002441', 'Nikolai Remirez', 'nremirezmp@earthlink.net', '11-08-1993', 818, '12-12-2021', 528056.94);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1762344414', 'Franny Ames', 'famesmq@scribd.com', '24-05-2002', 819, '03-04-2021', 453191.9);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3769086744', 'Anett Szach', 'aszachmr@de.vu', '13-05-1999', 820, '26-04-2021', 394118.03);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8178231352', 'Zondra Zorzutti', 'zzorzuttims@ow.ly', '24-04-1999', 821, '26-06-2021', 400765.97);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2363962262', 'Sylvan Roache', 'sroachemt@w3.org', '29-10-1997', 822, '28-09-2020', 744625.88);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7586053752', 'Adelle Sorsby', 'asorsbymu@gnu.org', '16-10-2000', 823, '17-08-2021', 177921.93);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2794575337', 'Mathian Whetland', 'mwhetlandmv@baidu.com', '15-11-1996', 824, '09-05-2020', 815993.68);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4663323721', 'Schuyler Wilford', 'swilfordmw@linkedin.com', '31-10-2005', 825, '19-02-2023', 262415.5);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6352511415', 'Hayden Boatright', 'hboatrightmx@tamu.edu', '03-12-2013', 826, '07-05-2021', 845782.2);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6509546507', 'Roana Munro', 'rmunromy@cargocollective.com', '15-06-2008', 827, '25-11-2020', 418156.68);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7904177221', 'Sybille Chittem', 'schittemmz@alexa.com', '06-12-1997', 828, '28-12-2022', 132276.03);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4655779271', 'Vanda Shearer', 'vshearern0@buzzfeed.com', '24-07-2004', 829, '20-04-2022', 161457.07);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9277709109', 'Shurwood Borgesio', 'sborgesion1@diigo.com', '24-11-2014', 830, '18-09-2020', 416253.86);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7944893884', 'Berti Mallabone', 'bmallabonen2@jimdo.com', '04-02-2015', 831, '10-06-2020', 636922.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2286738584', 'Lucia Reffe', 'lreffen3@unicef.org', '07-07-1995', 832, '13-07-2020', 844145.97);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1657035361', 'Annie Lowater', 'alowatern4@mapy.cz', '30-12-2012', 833, '17-06-2021', 255182.94);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7597211600', 'Auroora Cuthbert', 'acuthbertn5@state.gov', '25-11-2017', 834, '05-03-2023', 111295.53);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2267550394', 'Lira Dulanty', 'ldulantyn6@wordpress.org', '19-01-2000', 835, '05-06-2021', 627346.84);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9013382797', 'Gustie Harmour', 'gharmourn7@google.ru', '13-11-2006', 836, '27-01-2023', 595647.18);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7921247338', 'Giuditta Lebreton', 'glebretonn8@livejournal.com', '13-12-2011', 837, '05-03-2021', 639854.62);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8467315003', 'Melissa Gepson', 'mgepsonn9@weebly.com', '14-02-1999', 838, '08-05-2022', 827898.42);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2229974302', 'Cherye Newlyn', 'cnewlynna@ustream.tv', '30-05-2015', 839, '08-12-2022', 47681.78);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7398091754', 'Vasili Phinnis', 'vphinnisnb@mozilla.com', '11-06-1992', 840, '28-07-2022', 965145.49);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6628497528', 'Maddie Pywell', 'mpywellnc@wikispaces.com', '15-05-1995', 841, '26-09-2021', 591252.1);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3238063475', 'Oswell Dessant', 'odessantnd@a8.net', '05-11-2009', 842, '05-02-2022', 498220.26);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7449047926', 'Georgiana Baughan', 'gbaughanne@yahoo.co.jp', '05-04-2012', 843, '18-07-2020', 500100.76);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8471713939', 'Gerardo Rutty', 'gruttynf@accuweather.com', '21-06-2012', 844, '10-06-2020', 240685.4);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9974948962', 'Honey Gutans', 'hgutansng@youku.com', '04-08-1995', 845, '06-12-2021', 433373.09);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4848032519', 'Edee Bottleson', 'ebottlesonnh@tmall.com', '27-11-2018', 846, '25-11-2020', 273687.89);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9618638263', 'Nevin Braine', 'nbraineni@indiegogo.com', '23-04-2016', 847, '01-04-2021', 970028.4);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3101628107', 'Janka Groger', 'jgrogernj@51.la', '17-01-2002', 848, '12-07-2022', 714339.39);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7361775630', 'Jilleen Steventon', 'jsteventonnk@vistaprint.com', '08-08-2015', 849, '03-12-2021', 921932.08);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9659009267', 'Sybil Huish', 'shuishnl@constantcontact.com', '27-01-1999', 850, '05-07-2020', 808381.11);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7311669063', 'Eloisa Ruzek', 'eruzeknm@freewebs.com', '06-02-2011', 851, '15-09-2021', 582628.14);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2488178722', 'Ashla Allerton', 'aallertonnn@e-recht24.de', '23-03-2014', 852, '03-02-2022', 525269.83);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4086136754', 'Goober Scranedge', 'gscranedgeno@utexas.edu', '31-07-2003', 853, '15-05-2020', 868787.52);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4624779124', 'Bartie Goodhall', 'bgoodhallnp@economist.com', '14-04-2011', 854, '31-12-2022', 243748.5);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6608709927', 'Andie Swaddle', 'aswaddlenq@simplemachines.org', '16-12-2016', 855, '28-11-2022', 843971.07);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8203470958', 'Cecilla Sleicht', 'csleichtnr@ebay.co.uk', '13-05-2016', 856, '25-10-2022', 321224.46);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1785456323', 'Cam Cabera', 'ccaberans@aboutads.info', '01-07-2009', 857, '26-05-2020', 309630.73);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6749299880', 'Deonne Pickard', 'dpickardnt@house.gov', '20-02-2008', 858, '23-03-2020', 234215.92);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1657328252', 'Yoshiko Stavers', 'ystaversnu@privacy.gov.au', '28-04-2000', 859, '01-01-2023', 107898.95);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5637634438', 'Aime Collet', 'acolletnv@woothemes.com', '06-04-2013', 860, '14-12-2021', 886243.69);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9613269011', 'Vassily Melchior', 'vmelchiornw@360.cn', '24-10-2009', 861, '12-04-2021', 595400.35);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7406018482', 'Britta Esselen', 'besselennx@indiegogo.com', '17-08-2011', 862, '25-11-2020', 660075.26);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6483855608', 'Russ Pescott', 'rpescottny@nifty.com', '23-04-2007', 863, '18-09-2022', 96627.83);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7426637669', 'Elfrieda Rushman', 'erushmannz@networkadvertising.org', '18-02-2000', 864, '18-08-2021', 507777.09);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3013011958', 'Farly Winborn', 'fwinborno0@xrea.com', '10-06-2014', 865, '11-10-2021', 614776.45);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6333089238', 'Walsh Isson', 'wissono1@icq.com', '29-12-1997', 866, '10-12-2021', 549892.37);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5598455027', 'Rivkah Lucian', 'rluciano2@g.co', '23-11-2002', 867, '08-02-2021', 907205.97);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3475302682', 'Christabel Aslott', 'caslotto3@yellowpages.com', '02-02-1998', 868, '16-09-2020', 462283.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1017085162', 'Veradis Allery', 'valleryo4@ibm.com', '14-06-1993', 869, '31-03-2021', 529154.47);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6395087959', 'Colby Pirie', 'cpirieo5@irs.gov', '08-04-2002', 870, '18-12-2022', 511206.9);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4923517134', 'Sheelah Rennebach', 'srennebacho6@ocn.ne.jp', '10-03-2011', 871, '30-09-2021', 263301.87);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1608618856', 'Adina Mayers', 'amayerso7@vk.com', '20-10-1999', 872, '18-05-2021', 929153.79);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6185271319', 'Judie Lowsely', 'jlowselyo8@miitbeian.gov.cn', '07-11-1991', 873, '12-10-2020', 734421.74);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4704927178', 'Albertina Baccas', 'abaccaso9@mit.edu', '26-12-2013', 874, '02-02-2022', 741085.14);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6111324744', 'Lorianna Dwerryhouse', 'ldwerryhouseoa@amazon.de', '14-12-2015', 875, '19-01-2021', 535145.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3925382477', 'Ruthy Tripony', 'rtriponyob@wired.com', '17-11-2015', 876, '21-06-2022', 842795.42);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5984518289', 'Antone Rundall', 'arundalloc@csmonitor.com', '22-02-1994', 877, '02-03-2022', 142512.27);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4811264495', 'Kellyann Pashler', 'kpashlerod@is.gd', '02-01-2006', 878, '20-10-2021', 275808.99);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4514036876', 'Currey Deniset', 'cdenisetoe@howstuffworks.com', '10-04-2012', 879, '20-12-2021', 363425.16);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1904221777', 'Selle Beeze', 'sbeezeof@ebay.com', '29-09-1995', 880, '17-09-2021', 539974.23);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5257056802', 'Jeffie Rany', 'jranyog@army.mil', '18-05-2011', 881, '26-10-2022', 625426.87);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4519830880', 'Nahum Mostyn', 'nmostynoh@freewebs.com', '27-08-2005', 882, '10-02-2021', 181386.16);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4897088381', 'Chaim Dobson', 'cdobsonoi@barnesandnoble.com', '24-02-2006', 883, '11-04-2022', 981827.44);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7981551683', 'Jandy Powles', 'jpowlesoj@over-blog.com', '06-11-2019', 884, '20-11-2022', 782343.23);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4429198570', 'Mead Aarons', 'maaronsok@freewebs.com', '04-03-2003', 885, '17-03-2022', 825277.91);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3073359661', 'Colleen Fissenden', 'cfissendenol@indiegogo.com', '23-01-2008', 886, '24-08-2021', 384483.8);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2536733334', 'Jorry Stichall', 'jstichallom@oracle.com', '18-12-1993', 887, '30-10-2021', 656040.63);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2528283824', 'Shela Axston', 'saxstonon@umich.edu', '01-11-2004', 888, '09-01-2023', 262300.19);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4206767847', 'Devland Lefort', 'dlefortoo@shop-pro.jp', '05-02-2009', 889, '21-09-2020', 466251.45);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2057500827', 'Muffin Bleiman', 'mbleimanop@pinterest.com', '08-07-1991', 890, '28-06-2020', 653929.61);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1578256524', 'Jozef Swindlehurst', 'jswindlehurstoq@delicious.com', '18-05-2001', 891, '16-08-2021', 193600.82);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1008932000', 'Ange Scafe', 'ascafeor@163.com', '16-05-2007', 892, '22-05-2021', 43169.33);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2584359881', 'Tab Bamb', 'tbambos@webs.com', '21-04-2016', 893, '08-04-2020', 112330.69);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8527615081', 'Bartholomew Schultheiss', 'bschultheissot@jiathis.com', '22-05-2008', 894, '02-07-2021', 485582.42);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4248928740', 'Barby Stringer', 'bstringerou@mlb.com', '03-10-2016', 895, '23-04-2022', 815125.43);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3517748316', 'Corene Powner', 'cpownerov@thetimes.co.uk', '26-09-2006', 896, '23-05-2022', 597443.99);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7143918670', 'Fleurette MacIan', 'fmacianow@yandex.ru', '18-01-1993', 897, '25-02-2023', 717409.78);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3181444567', 'Alta Hounsham', 'ahounshamox@rakuten.co.jp', '12-11-1997', 898, '28-01-2023', 471314.09);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7681945095', 'Brittany Redmore', 'bredmoreoy@reverbnation.com', '12-10-2013', 899, '01-11-2022', 4169.67);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7077858645', 'Tawnya Stearn', 'tstearnoz@sakura.ne.jp', '11-07-2018', 900, '29-05-2020', 894018.71);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3892175148', 'Glynnis Woodroofe', 'gwoodroofep0@prlog.org', '26-06-2014', 901, '21-07-2020', 901005.55);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2727488234', 'Kordula Copestake', 'kcopestakep1@yale.edu', '29-01-2005', 902, '07-03-2023', 144224.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4117411366', 'Hortensia Boulden', 'hbouldenp2@yahoo.co.jp', '21-12-1994', 903, '10-01-2021', 992175.77);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8982019009', 'Ethelin Kirwan', 'ekirwanp3@accuweather.com', '30-08-2011', 904, '30-08-2021', 123054.59);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8741107066', 'Terrance Thorns', 'tthornsp4@tripod.com', '18-08-2013', 905, '12-06-2020', 569844.23);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2345229266', 'Obediah Chaimson', 'ochaimsonp5@instagram.com', '23-01-2009', 906, '08-07-2021', 649283.07);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6738853014', 'Veronique Ambrose', 'vambrosep6@google.com', '27-02-2002', 907, '24-09-2021', 718716.73);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1529405005', 'Susanne Meadus', 'smeadusp7@histats.com', '06-02-2007', 908, '27-02-2022', 33460.04);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9181850522', 'Rozelle Lamden', 'rlamdenp8@1688.com', '05-08-1995', 909, '26-02-2021', 823637.7);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8923591424', 'Guillemette Isoldi', 'gisoldip9@zdnet.com', '30-04-2005', 910, '04-06-2021', 520229.85);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8467622307', 'Carmina Lupton', 'cluptonpa@buzzfeed.com', '11-08-1991', 911, '12-10-2022', 105996.36);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7126703488', 'Spenser Baldacco', 'sbaldaccopb@hubpages.com', '24-08-1998', 912, '14-06-2021', 490527.84);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4101883854', 'Abey Mc Grath', 'amcpc@microsoft.com', '09-11-2006', 913, '26-04-2020', 987070.93);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3566971907', 'Kip Ostler', 'kostlerpd@blog.com', '27-05-2014', 914, '19-07-2020', 700870.55);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9863016127', 'Hadrian Rawsthorne', 'hrawsthornepe@cnn.com', '01-07-2011', 915, '16-06-2021', 914148.24);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6318935834', 'Eldin Balmann', 'ebalmannpf@hp.com', '12-01-1997', 916, '01-06-2020', 775236.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3942920152', 'Somerset Kendell', 'skendellpg@imdb.com', '10-07-2001', 917, '09-05-2020', 503356.98);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3297141437', 'Amanda Gyppes', 'agyppesph@mozilla.com', '22-02-2009', 918, '22-01-2022', 369753.88);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4416730555', 'Florida Ferdinand', 'fferdinandpi@yelp.com', '15-02-1999', 919, '10-12-2021', 794761.09);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8574170808', 'Yasmin Rishbrook', 'yrishbrookpj@jigsy.com', '16-03-2010', 920, '16-12-2021', 473987.79);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8751201108', 'Kaitlynn Trudgian', 'ktrudgianpk@businesswire.com', '14-08-2012', 921, '23-12-2020', 955513.02);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7327446832', 'Claribel Hardisty', 'chardistypl@java.com', '18-06-2019', 922, '19-08-2022', 969480.85);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9726725727', 'Ad Gonnel', 'agonnelpm@unesco.org', '29-11-2018', 923, '13-03-2022', 958545.47);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7451682033', 'Ambrosi Critchell', 'acritchellpn@etsy.com', '22-04-2006', 924, '05-11-2020', 674577.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4008718103', 'Brinna Cully', 'bcullypo@google.co.uk', '02-10-1998', 925, '12-06-2020', 778535.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9202092104', 'Alexei Minett', 'aminettpp@people.com.cn', '18-10-2018', 926, '01-06-2020', 895201.04);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5095336932', 'Juli Rehm', 'jrehmpq@gizmodo.com', '08-08-1995', 927, '07-06-2021', 105257.64);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6334925704', 'Edy Martinolli', 'emartinollipr@cnbc.com', '19-03-2013', 928, '01-07-2020', 87960.11);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5417889218', 'Sebastien Shaylor', 'sshaylorps@digg.com', '30-06-1997', 929, '15-07-2020', 240276.92);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6936023750', 'Worth Farragher', 'wfarragherpt@china.com.cn', '14-01-1994', 930, '17-09-2020', 349011.74);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2297887885', 'Clarisse Cheyney', 'ccheyneypu@aboutads.info', '09-02-2015', 931, '10-06-2021', 177941.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2305270857', 'Rania Aiskovitch', 'raiskovitchpv@scientificamerican.com', '20-03-2010', 932, '04-09-2022', 772081.03);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3926548130', 'Althea Ferrandez', 'aferrandezpw@miitbeian.gov.cn', '31-03-2001', 933, '19-10-2021', 757243.98);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7149383185', 'Nicoli Bullene', 'nbullenepx@about.me', '16-04-1993', 934, '25-03-2022', 349295.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9399485544', 'Victoir McMeekan', 'vmcmeekanpy@nih.gov', '30-09-2009', 935, '17-09-2021', 54574.72);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2006186595', 'Dalila Corroyer', 'dcorroyerpz@4shared.com', '30-04-1998', 936, '09-01-2023', 387324.32);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7729360722', 'Sander D''Ambrogio', 'sdambrogioq0@state.gov', '01-12-1994', 937, '10-05-2020', 872228.53);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6776486199', 'Ellissa McGilroy', 'emcgilroyq1@sina.com.cn', '04-03-2013', 938, '05-04-2020', 701743.11);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3604985640', 'Wilone Hollibone', 'wholliboneq2@bloglovin.com', '21-05-2018', 939, '01-03-2021', 573308.93);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6849187530', 'Bridget Millery', 'bmilleryq3@vk.com', '04-11-2006', 940, '07-05-2020', 858128.42);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8699669026', 'Meridel Frowd', 'mfrowdq4@deliciousdays.com', '22-03-2005', 941, '28-07-2022', 595706.67);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1105361950', 'Renado Pothbury', 'rpothburyq5@earthlink.net', '26-02-2001', 942, '10-01-2021', 474257.13);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9123010116', 'Yorker Winfindine', 'ywinfindineq6@blogs.com', '20-01-2003', 943, '23-08-2022', 151236.04);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5259093951', 'Carmon Kramer', 'ckramerq7@gmpg.org', '22-10-1994', 944, '11-06-2021', 807439.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5236249503', 'Annadiane Tonkin', 'atonkinq8@homestead.com', '13-04-2006', 945, '08-09-2021', 143419.7);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8696446071', 'Ellynn Askam', 'easkamq9@reference.com', '14-10-2010', 946, '11-12-2020', 429315.49);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1767490733', 'Amalle Balchin', 'abalchinqa@usda.gov', '21-01-1993', 947, '26-08-2021', 46143.35);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7496186494', 'Kimberli Wiszniewski', 'kwiszniewskiqb@slashdot.org', '08-03-2002', 948, '27-12-2021', 413218.33);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2622200642', 'Brynn Gierck', 'bgierckqc@tiny.cc', '06-10-1995', 949, '27-05-2020', 373260.52);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7748430612', 'Wald Baake', 'wbaakeqd@indiegogo.com', '13-09-2017', 950, '17-05-2021', 410110.74);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9233555830', 'Issie Franck', 'ifranckqe@ameblo.jp', '23-03-2011', 951, '21-11-2021', 983986.11);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7804775293', 'Tawnya Nevins', 'tnevinsqf@dot.gov', '29-09-2011', 952, '30-05-2021', 22103.74);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9008001913', 'Dominic Softley', 'dsoftleyqg@home.pl', '23-12-2011', 953, '10-12-2020', 847990.94);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5122243137', 'Dallon Messom', 'dmessomqh@histats.com', '15-02-1998', 954, '12-08-2022', 30490.93);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3492391815', 'Lorin Simenet', 'lsimenetqi@nasa.gov', '08-03-2005', 955, '26-02-2022', 862670.75);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5005182860', 'Deane Ricson', 'dricsonqj@cam.ac.uk', '15-08-2018', 956, '14-01-2023', 327006.54);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3412366663', 'Lara Kleinschmidt', 'lkleinschmidtqk@squidoo.com', '04-09-2009', 957, '17-03-2021', 782897.55);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8966816407', 'Hernando Taffee', 'htaffeeql@loc.gov', '15-05-2015', 958, '20-03-2023', 329800.26);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3555462880', 'Lucine Nowak', 'lnowakqm@altervista.org', '15-01-1994', 959, '24-11-2022', 855480.79);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4371711092', 'Tandy Doxsey', 'tdoxseyqn@vistaprint.com', '18-03-2004', 960, '07-09-2020', 636605.76);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5265330747', 'Hermia Wind', 'hwindqo@flavors.me', '04-04-2013', 961, '28-07-2021', 308541.27);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2485217344', 'Viviene Frith', 'vfrithqp@nsw.gov.au', '02-04-2001', 962, '27-10-2020', 283682.39);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9957458882', 'El Bracegirdle', 'ebracegirdleqq@google.it', '25-03-1993', 963, '20-05-2022', 65034.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9506922033', 'Lorianne Maden', 'lmadenqr@timesonline.co.uk', '26-01-1994', 964, '24-03-2021', 82316.44);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1311290527', 'Fanni Scouller', 'fscoullerqs@privacy.gov.au', '08-02-2005', 965, '16-10-2022', 965748.46);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6831178793', 'Tyrus Albrighton', 'talbrightonqt@cloudflare.com', '03-03-2005', 966, '28-04-2021', 720883.73);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3242712148', 'Cassaundra Iohananof', 'ciohananofqu@hostgator.com', '05-01-2003', 967, '05-09-2021', 708067.38);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8387813508', 'Dav Dowsett', 'ddowsettqv@istockphoto.com', '05-05-2012', 968, '04-03-2022', 291686.2);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3819375781', 'Annnora Kirtley', 'akirtleyqw@nasa.gov', '04-06-2002', 969, '18-08-2020', 691307.51);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9812669774', 'Bette Goundsy', 'bgoundsyqx@blogspot.com', '17-06-2014', 970, '01-10-2020', 141904.65);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5285664288', 'Gallagher Balmforth', 'gbalmforthqy@nih.gov', '28-11-2005', 971, '23-03-2020', 373104.03);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6139376503', 'Cathrine Skim', 'cskimqz@java.com', '19-11-1996', 972, '14-05-2020', 393698.72);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1976413943', 'Gisela Ulyet', 'gulyetr0@skyrock.com', '11-05-2010', 973, '17-08-2020', 371248.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4951613621', 'Boniface Kliner', 'bklinerr1@google.cn', '22-05-2009', 974, '14-06-2021', 77014.03);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9555752804', 'Alejandro Beeken', 'abeekenr2@reverbnation.com', '07-07-1999', 975, '13-02-2023', 682711.15);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4961522512', 'Madelaine Thornewell', 'mthornewellr3@cyberchimps.com', '09-09-2007', 976, '22-07-2022', 488921.22);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8607954985', 'Arleen Liddiard', 'aliddiardr4@livejournal.com', '11-02-1997', 977, '27-06-2021', 543704.23);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5148838014', 'Fanni Hradsky', 'fhradskyr5@google.com', '08-04-2015', 978, '28-03-2021', 806336.04);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8548992487', 'Shena Rolfe', 'srolfer6@discovery.com', '22-01-2004', 979, '28-03-2022', 345065.03);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4196461416', 'Dion Brisseau', 'dbrisseaur7@microsoft.com', '14-01-1997', 980, '08-01-2023', 549977.96);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9602109145', 'Marcelia Benmore', 'mbenmorer8@fda.gov', '18-03-2006', 981, '18-02-2021', 613942.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9158529419', 'Alissa Martinec', 'amartinecr9@hibu.com', '01-10-1999', 982, '18-05-2020', 27325.06);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1853307193', 'Chantal Spackman', 'cspackmanra@accuweather.com', '24-06-2004', 983, '08-12-2022', 193693.81);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3304180046', 'Grayce Gogin', 'ggoginrb@wordpress.com', '29-10-2003', 984, '20-07-2022', 75742.99);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8351861013', 'Harriot Bendson', 'hbendsonrc@marketwatch.com', '28-12-2001', 985, '12-07-2021', 977826.44);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6899200991', 'Kit Paridge', 'kparidgerd@ovh.net', '09-03-1999', 986, '20-01-2023', 974412.72);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9028222426', 'Julian Reymers', 'jreymersre@dyndns.org', '23-09-1994', 987, '18-10-2020', 157090.49);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8016905612', 'Miller Colvine', 'mcolvinerf@godaddy.com', '21-06-2013', 988, '19-06-2022', 679134.58);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2406442365', 'Violet Pozzi', 'vpozzirg@sourceforge.net', '24-05-2011', 989, '17-01-2023', 892950.1);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8217430413', 'Haily Gozzard', 'hgozzardrh@ezinearticles.com', '08-08-2002', 990, '16-07-2020', 522180.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('1681137008', 'Mady Abelwhite', 'mabelwhiteri@dell.com', '13-09-2008', 991, '17-10-2021', 77256.87);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8563117548', 'Shaun Kuban', 'skubanrj@sfgate.com', '30-06-1998', 992, '13-11-2021', 229066.03);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('5667092134', 'Lynelle Vandrill', 'lvandrillrk@nymag.com', '24-11-2011', 993, '16-05-2020', 502175.84);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('3442457136', 'Ardath Ensley', 'aensleyrl@e-recht24.de', '16-04-2011', 994, '21-11-2020', 611139.27);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('7169532471', 'Janela St Leger', 'jstrm@instagram.com', '01-02-2016', 995, '17-08-2022', 841274.85);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('6796299850', 'Lelia Briffett', 'lbriffettrn@prlog.org', '12-12-2007', 996, '26-10-2022', 521980.96);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('8784014922', 'Car Roll', 'crollro@freewebs.com', '25-10-1993', 997, '16-06-2021', 902774.51);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('2747505369', 'Mable Pollicatt', 'mpollicattrp@vkontakte.ru', '27-07-1994', 998, '30-11-2021', 759369.45);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('4507758880', 'Liza Creer', 'lcreerrq@yolasite.com', '21-11-1996', 999, '02-05-2022', 986017.0);
insert into Customers (MobileNumber, Name, Email, DateOfBirth, Orders, DateOfJoining, Value) values ('9207606358', 'Jarrid Cathery', 'jcatheryrr@google.co.uk', '09-08-2008', 1000, '18-10-2022', 948052.17);


insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (1, '2020-08-22', 1003254316, '040001', 'Partial traumatic amputation of one lesser toe', 599);
insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (2, '2021-03-05', 1019083762, '010003', 'Nondisp fx of prox phalanx of unsp fngr, 7thD', 448);
insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (3, '2022-01-13', 1055577824, '010001', 'Injury of unsp nerve at ank/ft level, right leg, sequela', 916);
insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (4, '2023-02-02', 1019083762, '010002', 'Poisoning by aspirin, assault', 336);
insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (5, '2021-12-16', 1055577824, '030002', 'Unsp inj extn musc/fasc/tend l lit fngr at wrs/hnd lv, sqla', 509);
insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (6, '2020-05-27', 1055577824, '030002', 'Displ trimalleol fx unsp lower leg, init for opn fx type I/2', 140);
insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (7, '2020-11-09', 1055577824, '010002', 'Poisn by crbnc-anhydr inhibtr,benzo/oth diuretc,slf-hrm,subs', 326);
insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (8, '2022-11-30', 9493719602, '010003', 'Blister (nonthermal) of unspecified thumb', 236);
insert into Orders (Order_ID, Date, Customer_ID, Product_ID, Description, BillAmount) values (9, '2021-04-20', 9493719602, '030001', 'Driver of special industr vehicle injured in traf, sequela', 805);

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