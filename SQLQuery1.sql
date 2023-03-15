﻿Create table Menu 
(
	id_menu int identity(1,1) primary key,
	id_cate int,
	name_menu nvarchar(50),
	link nvarchar(max),
	meta nvarchar(50),
	hide bit,
	[order] int,
	datebegin smalldatetime
)

ALTER TABLE Menu ADD FOREIGN KEY(id_cate)  REFERENCES Category (id_cate);
drop table Menu

insert into Menu (id_cate, name_menu, meta, hide, [order], datebegin)
values(1, N'GIÀY NỮ', 'giay-nu', 1, 1, '2023-03-10 16:46:43')

insert into Menu (id_cate, name_menu, meta, hide, [order], datebegin)
values(2, N'GIÀY NAM','giay-nam', 1, 2, '2023-03-10 16:47:43')

insert into Menu (id_cate, name_menu, meta, hide, [order], datebegin)
values(3, N'BALO - TÚI', 'balo-tui', 1, 3, '2023-03-10 16:48:43')

insert into Menu (id_cate, name_menu, meta, hide, [order], datebegin)
values(4, N'PHỤ KIỆN', 'phu-kien', 1, 4, '2023-03-10 16:49:50')

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


insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(1, N'GIÀY THỂ THAO NỮ','giay-the-thao-nu', 1, 1)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(1, N'GIÀY CAO GÓT','giay-cao-got', 1, 2)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(1, N'SANDAL NỮ','sandal-nu', 1, 3)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(1, N'GIÀY BÚP BÊ','giay-bup-be', 1, 4)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(1, N'OXFORD & BOOT','oxford-boot', 1, 5)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(1, N'DÉP SỤC','dep-suc', 1, 6)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(1, N'DÉP NỮ','dep-nu', 1, 7)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(2, N'GIÀY THỂ THAO NAM','giay-the-thao-nam', 1, 1)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(2, N'GIÀY TÂY & SLIP ON','giay-tay-slip-on', 1, 2)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(2, N'SANDAL NAM','sandal-nam', 1, 3)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(2, N'DÉP NAM','dep-nam', 1, 4)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(3, N'BALO ĐA DẠNG','balo-da-dang', 1, 1)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(3, N'TÚI ĐEO CHÉO','tui-deo-cheo', 1, 2)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(4, N'VỚ','vo', 1, 1)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(4, N'VỆ SINH GIÀY','ve-sinh-giay', 1, 2)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(4, N'DÂY GIÀY','day-giay', 1, 3)

insert into ProductCategory (id_cate, name_pcate, meta, hide, [order])
values(4, N'ĐẾ LÓT','de-lot', 1, 4)


Create Table Product(
	id_product int IDENTITY(1,1) NOT NULL,
	id_cate int,
	id_pcate int,
	name_product nvarchar(100),
	price float,
	color nvarchar(50),
	size varchar(30),
	amount int,
	sale_amount int,
	discount float,
	[status] nvarchar,
	img varchar(150),
	img1 varchar(150),
	img2 varchar(150),
	img3 varchar(150),
	img4 varchar(150),
	img5 varchar(150),
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
values(1, 1, N'Giày thể thao nữ MWC NUTT- 0764',270.000,'San-Pham/Giay-Nu/Giay-The-Thao-Nu/0764.jpg','NUTT-0764', 1, 1)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(1, 1, N'Giày thể thao nữ MWC NUTT- 0777',295.000,'San-Pham/Giay-Nu/Giay-The-Thao-Nu/0777.jpg','NUTT-0777', 1, 2)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(1, 1, N'Giày thể thao nữ MWC NUTT- 0764',295.000,'San-Pham/Giay-Nu/Giay-The-Thao-Nu/0752.jpg','NUTT-0752', 1, 3)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(1, 1, N'Giày thể thao nữ MWC NUTT- 0643',295.000,'San-Pham/Giay-Nu/Giay-The-Thao-Nu/0643.jpg','NUTT-0643', 1, 4)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(1, 1, N'Giày thể thao nữ MWC NUTT- 0645',295.000,'San-Pham/Giay-Nu/Giay-The-Thao-Nu/0645.jpg','NUTT-0645', 1, 5)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(1, 1, N'Giày thể thao nữ MWC NUTT- 0678',295.000,'San-Pham/Giay-Nu/Giay-The-Thao-Nu/0678.jpg','NUTT-0678', 1, 6)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(1, 1, N'Giày thể thao nữ MWC NUTT- 0696',295.000,'San-Pham/Giay-Nu/Giay-The-Thao-Nu/0696.jpg','NUTT-0696', 1, 7)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(1, 1, N'Giày thể thao nữ MWC NUTT- 0578',235.000,'San-Pham/Giay-Nu/Giay-The-Thao-Nu/0578.jpg','NUTT-0578', 1, 8)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(1, 1, N'Giày thể thao nữ MWC NUTT- 0642',235.000,'San-Pham/Giay-Nu/Giay-The-Thao-Nu/0642.jpg','NUTT-0642', 1, 9)

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(9, N'Giày búp bê SHM NUBB- 2285', 180.000, N'Kem, Đen', N'35, 36, 37, 38, 39', 15, 10, N'Còn Hàng','San-Pham/Giay-Nu/Giay-Bup-Be/2285.jpg',
'San-Pham/Giay-Nu/Giay-Bup-Be/2285_1.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2285_2.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2285_3.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2285_4.jpg','giay-bup-be', 1, 1, 'giay-nu')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(9, N'Giày búp bê SHM NUBB- 2283', 150.000, N'Kem, Đen', N'36, 37, 38, 39', 15, 10, N'Còn Hàng','San-Pham/Giay-Nu/Giay-Bup-Be/2283.jpg',
'San-Pham/Giay-Nu/Giay-Bup-Be/2283_1.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2283_2.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2283_3.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2283_4.jpg','giay-bup-be', 1, 2, 'giay-nu')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(9, N'Giày búp bê SHM NUBB- 2281', 235.000, N'Kem, Đen', N'35, 36, 37, 38, 39', 15, 10, N'Còn Hàng','San-Pham/Giay-Nu/Giay-Bup-Be/2281.jpg',
'San-Pham/Giay-Nu/Giay-Bup-Be/2281_1.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2281_2.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2281_3.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2281_4.jpg','giay-bup-be', 1, 3, 'giay-nu')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(9, N'Giày búp bê SHM NUBB- 2260', 150.000, N'Kem, Đen', N'36, 37, 38, 39', 15, 10, N'Còn Hàng','San-Pham/Giay-Nu/Giay-Bup-Be/2260.jpg',
'San-Pham/Giay-Nu/Giay-Bup-Be/2260_1.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2260_2.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2260_3.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2260_4.jpg','giay-bup-be', 1, 4, 'giay-nu')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(9, N'Giày búp bê SHM NUBB- 2237', 150.000, N'Kem, Đen', N'35, 36, 37, 38, 39', 15, 10, N'Còn Hàng','San-Pham/Giay-Nu/Giay-Bup-Be/2237.jpg',
'San-Pham/Giay-Nu/Giay-Bup-Be/2237_1.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2237_2.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2237_3.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2237_4.jpg','giay-bup-be', 1, 5, 'giay-nu')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(9, N'Giày búp bê SHM NUBB- 2248', 150.000, N'Kem, Đen', N'36, 37, 38, 39', 15, 10, N'Còn Hàng','San-Pham/Giay-Nu/Giay-Bup-Be/2248.jpg',
'San-Pham/Giay-Nu/Giay-Bup-Be/2248_1.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2248_2.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2248_3.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2248_4.jpg','giay-bup-be', 1, 6, 'giay-nu')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(9, N'Giày búp bê SHM NUBB- 2240', 195.000, N'Kem, Đen', N'36, 37, 38, 39', 15, 10, N'Còn Hàng','San-Pham/Giay-Nu/Giay-Bup-Be/2240.jpg',
'San-Pham/Giay-Nu/Giay-Bup-Be/2240_1.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2240_2.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2240_3.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2240_4.jpg','giay-bup-be', 1, 7, 'giay-nu')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(9, N'Giày búp bê SHM NUBB- 2230', 150.000, N'Kem, Đen', N'36, 37, 38, 39', 15, 10, N'Còn Hàng','San-Pham/Giay-Nu/Giay-Bup-Be/2230.jpg',
'San-Pham/Giay-Nu/Giay-Bup-Be/2230_1.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2230_2.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2230_3.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2230_4.jpg','giay-bup-be', 1, 8, 'giay-nu')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(9, N'Giày búp bê SHM NUBB- 2242', 250.000, N'Kem, Đen', N'35, 36, 38', 17, 20, N'Còn Hàng','San-Pham/Giay-Nu/Giay-Bup-Be/2242.jpg',
'San-Pham/Giay-Nu/Giay-Bup-Be/2242_1.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2242_2.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2242_3.jpg','San-Pham/Giay-Nu/Giay-Bup-Be/2242_4.jpg','giay-bup-be', 1, 9, 'giay-nu')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(7, N'Giày cao gót SHM- 4388', 235.000, N'Bạc, Đen', N'35, 36, 37, 38, 39', 20, 21, N'Còn Hàng','San-Pham/Giay-Nu/Giay-Cao-Got/4388.jpg',
'San-Pham/Giay-Nu/Giay-Cao-Got/4388_1.jpg','San-Pham/Giay-Nu/Giay-Cao-Got/4388_2.jpg','San-Pham/Giay-Nu/Giay-Cao-Got/4388_3.jpg','San-Pham/Giay-Nu/Giay-Cao-Got/4388_4.jpg','giay-cao-got', 1, 1, 'giay-nu')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(7, N'Giày cao gót SHM- 3850', 195.000, N'Kem, Đen', N'35, 36, 37, 38, 39', 10, 11, N'Còn Hàng','San-Pham/Giay-Nu/Giay-Cao-Got/3850.jpg',
'San-Pham/Giay-Nu/Giay-Cao-Got/3850_1.jpg','San-Pham/Giay-Nu/Giay-Cao-Got/3850_2.jpg','San-Pham/Giay-Nu/Giay-Cao-Got/3850_3.jpg','San-Pham/Giay-Nu/Giay-Cao-Got/3850_4.jpg','giay-cao-got', 1, 2, 'giay-nu')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(7, N'Giày cao gót SHM- 4112', 195.000, N'Kem, Đen, Trắng', N'35, 36, 37, 38, 39', 20, 17, N'Còn Hàng','San-Pham/Giay-Nu/Giay-Cao-Got/4112.jpg',
'San-Pham/Giay-Nu/Giay-Cao-Got/4112_1.jpg','San-Pham/Giay-Nu/Giay-Cao-Got/4112_2.jpg','San-Pham/Giay-Nu/Giay-Cao-Got/4112_3.jpg','San-Pham/Giay-Nu/Giay-Cao-Got/4112_4.jpg','giay-cao-got', 1, 3, 'giay-nu')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(7, N'Giày cao gót SHM- 4326', 235.000, N'Đen', N'35, 36, 37, 38, 39', 15, 20, N'Còn Hàng','San-Pham/Giay-Nu/Giay-Cao-Got/4326.jpg',
'San-Pham/Giay-Nu/Giay-Cao-Got/4326_1.jpg','San-Pham/Giay-Nu/Giay-Cao-Got/4326_2.jpg','San-Pham/Giay-Nu/Giay-Cao-Got/4326_3.jpg','San-Pham/Giay-Nu/Giay-Cao-Got/4326_4.jpg','giay-cao-got', 1, 4, 'giay-nu')

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(2, 8, N'Giày thể thao nam MWC NATT- 5419',235.000,'San-Pham/Giay-Nam/Giay-The-Thao-Nam/5419.jpg','NATT-5419', 1, 1)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(2, 8, N'Giày thể thao nam MWC NATT- 5417',250.000,'San-Pham/Giay-Nam/Giay-The-Thao-Nam/5417.jpg','NATT-5417', 1, 1)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(2, 8, N'Giày thể thao nam MWC NATT- 5418',250.000,'San-Pham/Giay-Nam/Giay-The-Thao-Nam/5418.jpg','NATT-5418', 1, 3)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(2, 8, N'Giày thể thao nam MWC NATT- 5442',295.000,'San-Pham/Giay-Nam/Giay-The-Thao-Nam/5442.jpg','NATT-5442', 1, 4)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(2, 8, N'Giày thể thao nam MWC NATT- 5010',295.000,'San-Pham/Giay-Nam/Giay-The-Thao-Nam/5010.jpg','NATT-5010', 1, 5)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(2, 8, N'Giày thể thao nam MWC NATT- 5436',270.000,'San-Pham/Giay-Nam/Giay-The-Thao-Nam/5436.jpg','NATT-5436', 1, 6)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(3, 13, N'Túi đeo chéo MWC 0834',295.000,'San-Pham/Balo-Tui/Tui/0834.jpg','Tui-0834', 1, 1)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(3, 13, N'Túi đeo chéo MWC 0800',155.000,'San-Pham/Balo-Tui/Tui/0800.jpg','Tui-0800', 1, 1)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(3, 13, N'Túi đeo chéo MWC 0829',135.000,'San-Pham/Balo-Tui/Tui/0829.jpg','Tui-0829', 1, 3)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(3, 13, N'Túi đeo chéo MWC 0823',150.000,'San-Pham/Balo-Tui/Tui/0823.jpg','Tui-0823', 1, 4)

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(18, N'Túi đeo chéo SHM 1163', 195.000, N'Xanh Dương, Kem, Đen', N'Free Size', 15, 10, N'Còn Hàng','San-Pham/Balo-Tui/Tui/1163.jpg',
'San-Pham/Balo-Tui/Tui/1163_1.jpg','San-Pham/Balo-Tui/Tui/1163_2.jpg','San-Pham/Balo-Tui/Tui/1163_3.jpg','San-Pham/Balo-Tui/Tui/1163_4.jpg','tui-deo-cheo', 1, 5, 'balo-tui')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(18, N'Túi đeo chéo SHM 0812', 135.000, N'Xanh Dương, Xám, Đen', N'Free Size', 10, 10, N'Còn Hàng','San-Pham/Balo-Tui/Tui/0812.jpg',
'San-Pham/Balo-Tui/Tui/0812_1.jpg','San-Pham/Balo-Tui/Tui/0812_2.jpg','San-Pham/Balo-Tui/Tui/0812_3.jpg','San-Pham/Balo-Tui/Tui/0812_4.jpg','tui-deo-cheo', 1, 6, 'balo-tui')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(18, N'Túi đeo chéo SHM 0816', 135.000, N'Xanh Dương, Xám, Đen', N'Free Size', 10, 18, N'Còn Hàng','San-Pham/Balo-Tui/Tui/0816.jpg',
'San-Pham/Balo-Tui/Tui/0816_1.jpg','San-Pham/Balo-Tui/Tui/0816_2.jpg','San-Pham/Balo-Tui/Tui/0816_3.jpg','San-Pham/Balo-Tui/Tui/0816_4.jpg','tui-deo-cheo', 1, 7, 'balo-tui')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(18, N'Túi đeo chéo SHM 0820', 180.000, N'Xanh Dương, Đen', N'Free Size', 10, 18, N'Còn Hàng','San-Pham/Balo-Tui/Tui/0820.jpg',
'San-Pham/Balo-Tui/Tui/0820_1.jpg','San-Pham/Balo-Tui/Tui/0820_2.jpg','San-Pham/Balo-Tui/Tui/0820_3.jpg','San-Pham/Balo-Tui/Tui/0820_4.jpg','tui-deo-cheo', 1, 8, 'balo-tui')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(18, N'Túi đeo chéo SHM 0814', 180.000, N'Xanh Dương, Đen', N'Free Size', 10, 18, N'Còn Hàng','San-Pham/Balo-Tui/Tui/0814.jpg',
'San-Pham/Balo-Tui/Tui/0814_1.jpg','San-Pham/Balo-Tui/Tui/0814_2.jpg','San-Pham/Balo-Tui/Tui/0814_3.jpg','San-Pham/Balo-Tui/Tui/0814_4.jpg','tui-deo-cheo', 1, 9, 'balo-tui')

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(3, 12, N'Balo MWC 1125',215.000,'San-Pham/Balo-Tui/Balo/1125.jpg','Balo-1125', 1, 5)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(3, 12, N'Balo MWC 1125',215.000,'San-Pham/Balo-Tui/Balo/1125.jpg','Balo-1125', 1, 6)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(3, 12, N'Balo MWC 1137',200.000,'San-Pham/Balo-Tui/Balo/1137.jpg','Balo-1137', 1, 7)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(3, 12, N'Balo MWC 1145',250.000,'San-Pham/Balo-Tui/Balo/1145.jpg','Balo-1145', 1, 8)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(3, 12, N'Balo MWC 1165',225.000,'San-Pham/Balo-Tui/Balo/1165.jpg','Balo-1165', 1, 9)

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(17, N'Balo SHM 1072', 195.000, N'Xanh Biển, Kem, Đen, Hồng', N'Free Size', 15, 10, N'Còn Hàng','San-Pham/Balo-Tui/Balo/1072.jpg',
'San-Pham/Balo-Tui/Balo/1072_1.jpg','San-Pham/Balo-Tui/Balo/1072_2.jpg','San-Pham/Balo-Tui/Balo/1072_3.jpg','San-Pham/Balo-Tui/Balo/1072_4.jpg','balo-da-dang', 1, 10, 'balo-tui')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(17, N'Balo SHM 1108', 295.000, N'Xanh Biển, Xanh Lá, Đen, Hồng', N'Free Size', 16, 20, N'Còn Hàng','San-Pham/Balo-Tui/Balo/1108.jpg',
'San-Pham/Balo-Tui/Balo/1108_1.jpg','San-Pham/Balo-Tui/Balo/1108_2.jpg','San-Pham/Balo-Tui/Balo/1108_3.jpg','San-Pham/Balo-Tui/Balo/1108_4.jpg','balo-da-dang', 1, 11, 'balo-tui')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(17, N'Balo SHM 1116', 235.000, N'Xanh Biển, Đen', N'Free Size', 10, 20, N'Còn Hàng','San-Pham/Balo-Tui/Balo/1116.jpg',
'San-Pham/Balo-Tui/Balo/1116_1.jpg','San-Pham/Balo-Tui/Balo/1116_2.jpg','San-Pham/Balo-Tui/Balo/1116_3.jpg','San-Pham/Balo-Tui/Balo/1116_4.jpg','balo-da-dang', 1, 12, 'balo-tui')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(17, N'Balo SHM 1140', 195.000, N'Kem, Đen, Xám', N'Free Size', 15, 21, N'Còn Hàng','San-Pham/Balo-Tui/Balo/1140.jpg',
'San-Pham/Balo-Tui/Balo/1140_1.jpg','San-Pham/Balo-Tui/Balo/1140_2.jpg','San-Pham/Balo-Tui/Balo/1140_3.jpg','San-Pham/Balo-Tui/Balo/1140_4.jpg','balo-da-dang', 1, 13, 'balo-tui')

insert into Product (id_cate, name_product, price, color, size, amount, sale_amount, [status], img, img1, img2, img3, img4, meta, hide, [order], meta_paren)
values(17, N'Balo SHM 1164', 215.000, N'Kem, Đen, Xanh Dương, Hồng', N'Free Size', 17, 21, N'Còn Hàng','San-Pham/Balo-Tui/Balo/1164.jpg',
'San-Pham/Balo-Tui/Balo/1164_1.jpg','San-Pham/Balo-Tui/Balo/1164_2.jpg','San-Pham/Balo-Tui/Balo/1164_3.jpg','San-Pham/Balo-Tui/Balo/1164_4.jpg','balo-da-dang', 1, 14, 'balo-tui')

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(4, 16, N'Dây giày thể thao bản tròn MWC- 9015',20.000,'San-Pham/Phu-Kien/Day-Giay/9015.jpg','DG-9015', 1, 1)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(4, 16, N'Dây giày Hoa Cúc MWC- 9005',15.000,'San-Pham/Phu-Kien/Day-Giay/9005.jpg','DG-9005', 1, 2)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(4, 16, N'Dây giày thể thao bản dẹp MWC- 9006',10.000,'San-Pham/Phu-Kien/Day-Giay/9006.jpg','DG-9006', 1, 3)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(4, 16, N'Dây giày thể thao bản tròn MWC- 9007',10.000,'San-Pham/Phu-Kien/Day-Giay/9007.jpg','DG-9007', 1, 4)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(4, 14, N'Vớ nam nữ MWC- AT16',35.000,'San-Pham/Phu-Kien/Vo/AT16.jpg','Vo-AT16', 1, 5)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(4, 14, N'Vớ nam nữ MWC- AT106',25.000,'San-Pham/Phu-Kien/Vo/AT106.jpg','Vo-AT106', 1, 6)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(4, 14, N'Vớ nam nữ MWC- AT50',20.000,'San-Pham/Phu-Kien/Vo/AT50.jpg','Vo-AT50', 1, 7)

insert into Product (id_cate, id_pcate, name_product, price, img, meta, hide, [order])
values(4, 14, N'Vớ nam nữ MWC- AT53',35.000,'San-Pham/Phu-Kien/Vo/AT53.jpg','Vo-AT53', 1, 8)


Create Table New(
	id_new int IDENTITY(1,1) NOT NULL,
	name_new nvarchar(50),
	img varchar(150),
	[description] ntext,
	link varchar(max),
	meta varchar(max),
	hide bit,
	[order] int,
	datebegin smalldatetime,
	Primary key(id_new)
);

select * from New
insert into New (name_new, img, [description], hide, [order])
values(N'Khuyến mãi nhân ngày 8/3','Banner/banner_cate.jpg',N'Khuyến mãi up to 50% nhân ngày 8/3 dành cho các bạn nữ', 1, 1)

insert into New (name_new, img, [description], hide, [order])
values(N'Ưu đãi cực khủng ngày 9/3','Banner/banner_2.jpg',N'Khuyến mãi up to 30% khi mua từ 2 sản phẩm trên 100 $', 1, 2)

insert into New (name_new, img, [description], hide, [order])
values(N'Khuyến mãi nhân ngày 8/3','Banner/banner_cate.jpg',N'Khuyến mãi up to 50% nhân ngày 8/3 dành cho các bạn nữ', 1, 3)
