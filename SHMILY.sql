Create table Menu 
(
	id_menu int identity(1,1) primary key,
	name_menu nvarchar(50),
	link nvarchar(max),
	meta nvarchar(50),
	hide bit,
	[order] int,
	datebegin smalldatetime
)

insert into Menu (name_menu, meta, hide, [order], datebegin)
values(N'GIÀY NỮ', 'giay-nu', 1, 1, '2023-03-10 16:46:43')

insert into Menu (name_menu, meta, hide, [order], datebegin)
values(N'GIÀY NAM','giay-nam', 1, 2, '2023-03-10 16:47:43')

insert into Menu (name_menu, meta, hide, [order], datebegin)
values(N'BALO - TÚI', 'balo-tui', 1, 3, '2023-03-10 16:48:43')

insert into Menu (name_menu, meta, hide, [order], datebegin)
values(N'PHỤ KIỆN', 'phu-kien', 1, 4, '2023-03-10 16:49:50')

insert into Menu (name_menu, meta, hide, [order], datebegin)
values(N'SẢN PHẨM BÁN CHẠY', 'san-pham-ban-chay', 1, 5, '2023-03-10 16:50:43')

select * from Menu

Create table Footer 
(
	id_footer int identity(1,1) primary key,
	name_web nvarchar(50),
	[address] nvarchar(250),
	phone_number varchar(20),
	copyright nvarchar(100),
	link nvarchar(max),
	meta nvarchar(50),
	hide bit,
	[order] int,
	datebegin smalldatetime
)
select * from Footer

insert into Footer(name_web, [address], phone_number, copyright, hide, [order], datebegin)
values (N'SHMILY Shoe Shop', N'Địa chỉ: Nguyễn Hữu Thọ, phường Tân Phong, Q7, TP.HCM', '028 337755****', N'2023 SHMILY Shoe Shop', 1, 1, '2023-03-10 16:37:43')

Create Table Category(
	id_cate int IDENTITY(1,1) NOT NULL,
	name_cate nvarchar(50),
	link varchar(max),
	meta varchar(max),
	hide bit,
	[order] int,
	datebegin smalldatetime,
	Primary key(id_cate)
);
select * from Category
insert into Category (name_cate, meta, hide, [order])
values(N'GIÀY NỮ', 'giay-nu', 1, 1)

insert into Category (name_cate, meta, hide, [order])
values(N'GIÀY NAM', 'giay-nam', 1, 2)

insert into Category (name_cate, meta, hide, [order])
values(N'BALO - TÚI', 'balo-tui', 1, 3)

insert into Category (name_cate, meta, hide, [order])
values(N'PHỤ KIỆN', 'phu-kien', 1, 4)

insert into Category (name_cate, meta, hide, [order])
values(N'SẢN PHẨM BÁN CHẠY', 'san-pham-ban-chay', 1, 5)

Create Table ProductCategory(
	id_pcate int IDENTITY(1,1) NOT NULL,
	id_cate int,
	name_pcate nvarchar(50),
	link varchar(max),
	meta varchar(max),
	hide bit,
	[order] int,
	datebegin smalldatetime,
	Primary key(id_pcate)
);

drop table ProductCategory
ALTER TABLE ProductCategory ADD FOREIGN KEY(id_cate)  REFERENCES Category (id_cate);

select * from ProductCategory
insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(1, N'GIÀY THỂ THAO NỮ','giay-the-thao-nu', 1, 1)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(1, N'GIÀY CAO GÓT','giay-cao-got', 1, 2)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(2, N'GIÀY THỂ THAO NAM','giay-the-thao-nam', 1, 1)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(2, N'GIÀY TÂY & SLIP ON','giay-tay', 1, 2)

Create Table Product(
	id_product int IDENTITY(1,1) NOT NULL,
	id_cate int,
	id_pcate int,
	name_product nvarchar(50),
	price float,
	color nvarchar(50),
	size varchar(30),
	amount int,
	[status] nvarchar,
	img varchar(50),
	img1 varchar(50),
	img2 varchar(50),
	img3 varchar(50),
	img4 varchar(50),
	img5 varchar(50),
	detail ntext,
	[description] ntext,
	link varchar(max),
	meta varchar(max),
	hide bit,
	[order] int,
	datebegin smalldatetime,
	Primary key(id_product)
);

drop table Product

ALTER TABLE Product ADD FOREIGN KEY(id_cate)  REFERENCES Category (id_cate);
ALTER TABLE Product ADD FOREIGN KEY(id_pcate)  REFERENCES ProductCategory (id_pcate);

select * from Product
insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(1, 1, N'Giày thể thao nữ MWC NUTT- 0764',10,'1.jpg','MWC-NUTT-0764', 1, 1)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(1, 1, N'Giày thể thao nữ MWC NUTT- 0777',12,'2.jpg','MWC-NUTT-0777', 1, 2)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(1, 1, N'Giày thể thao nữ MWC NUTT- 0764',12,'3.jpg','MWC-NUTT-0752', 1, 3)


