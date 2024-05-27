USE [master]
GO
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'PetShop')
BEGIN
	ALTER DATABASE PetShop SET OFFLINE WITH ROLLBACK IMMEDIATE;
	ALTER DATABASE PetShop SET ONLINE;
	DROP DATABASE PetShop;
END

GO
create database PetShop
GO

use PetShop;
create table [Accounts](
	[account_id] int Identity(1,1) primary key not null,
	[account] nvarchar(50) not null,
	[password] varchar(50)  not null,
	[email] varchar(100),
	[phone_number] varchar(10) check (len(phone_number) = 10),
	[account_type] bit not null check ([account_type] in (0,1,2))
);
GO

create table [Items](
	[item_id] int Identity(1,1) primary key not null,
	[item_name] nvarchar(100) not null,
	[quantity] int not null
);
GO

create table [Services](
	[service_id] int Identity(1,1) primary key not null,
	[service_name] nvarchar(50) not null,
	[service_charge] float not null
);
GO

create table [service_using](
	[account_id] int not null foreign key (account_id) references [Accounts](account_id),
	[service_id] int not null foreign key (service_id) references [Services](service_id)
);
GO

create table [pet](
	[pet_id] int identity(1,1) primary key,
	[pet_type] varchar(25) not null,
	[pet_breeds] varchar(25) not null
);
GO

insert into [Accounts] values ('TrungNQ', '123121', 'trungnguye.081203@gmail.com', '0377712343', 0);
insert into [Accounts] values ('HoaNK', '081203', 'nkhoa13042003@gmail.com', '0377432521', 0);
insert into [Accounts] values ('AnhNLV', '123121', 'anhnlv@gmail.com', '0398765432', 1);
insert into [Accounts] values ('YenNH', '123121', 'yennh@gmail.com', '0371234567', 2);
GO
