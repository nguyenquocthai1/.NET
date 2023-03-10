create database SHMILY

use SHMILY

create table Menu 
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


create table Footer 
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

insert into Footer(name_web, [address], phone_number, copyright, hide, [order], datebegin)
values (N'SHMILY Shoe Shop', N'Địa chỉ: Nguyễn Hữu Thọ, phường Tân Phong, Q7, TP.HCM', '028 337755****', N'2023 SHMILY Shoe Shop', 1, 1, '2023-03-10 16:37:43')

select * from Footer

select * from Menu