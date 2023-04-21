Create table Cart 
(
	id_cart int identity(1,1) primary key,
	id_account int,
	id_product int,
	id_discount int,
	amount int,
	total float,
	discount float,
	link nvarchar(max),
	meta nvarchar(50),
	hide bit,
	[order] int,
	datebegin smalldatetime
)
DROP TABLE Invoice
ALTER TABLE Cart ADD FOREIGN KEY(id_account)  REFERENCES Account (id_account)
ALTER TABLE Cart ADD FOREIGN KEY(id_discount)  REFERENCES Discount  (id_discount)
ALTER TABLE Cart ADD FOREIGN KEY(id_product)  REFERENCES Product  (id_product)

Create table Account
(
	id_account int identity(1,1) primary key,
	username nvarchar(100),
	[password] nvarchar(100),
	firstname nvarchar(100),
	lastname nvarchar(150),
	[location] ntext,
	phone varchar(10),
	email varchar(100),
	link nvarchar(max),
	meta nvarchar(50),
	hide bit,
	[order] int,
	datebegin smalldatetime
)

Create table Discount
(
	id_discount int identity(1,1) primary key,
	[key] varchar(50),
	discount float,
	link nvarchar(max),
	meta nvarchar(50),
	hide bit,
	[order] int,
	datebegin smalldatetime
)


Create table Invoice 
(
	id_invoice int identity(1,1) primary key,
	id_account int,
	id_product int,
	id_discount int,
	amount int,
	total float,
	discount float,
	sale_date datetime,
	firstname nvarchar(100),
	lastname nvarchar(150),
	[location] ntext,
	phone varchar(10),
	email varchar(100),
	note nvarchar(250),
	link nvarchar(max),
	meta nvarchar(50),
	hide bit,
	[order] int,
	datebegin smalldatetime
)
DROP TABLE Invoice
ALTER TABLE Invoice ADD FOREIGN KEY(id_cart)  REFERENCES Cart (id_cart)
ALTER TABLE Invoice ADD FOREIGN KEY(id_account)  REFERENCES Account (id_account)
ALTER TABLE Invoice ADD FOREIGN KEY(id_discount)  REFERENCES Discount  (id_discount)
ALTER TABLE Invoice ADD FOREIGN KEY(id_product)  REFERENCES Product  (id_product)
