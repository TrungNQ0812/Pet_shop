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

create table [pet](
	[pet_id] int identity(1,1) primary key,
	[pet_type] varchar(25) not null,
	[pet_breeds] varchar(25) not null
);
GO

create table [Appointment](
	[appointment_id] int identity(1,1) primary key not null,
	[account_id] int not null foreign key (account_id)  references [Accounts](account_id),
	[service_id] int not null foreign key (service_id) references [Services](service_id),
	[cost] int
)

insert into [Accounts] values ('TrungNQ', '123121', 'trungnguye.081203@gmail.com', '0377712343', 0);
insert into [Accounts] values ('HoaNK', '081203', 'nkhoa13042003@gmail.com', '0377432521', 0);
insert into [Accounts] values ('AnhNLV', '123121', 'anhnlv@gmail.com', '0398765432', 1);
insert into [Accounts] values ('YenNH', '123121', 'yennh@gmail.com', '0371234567', 2);
GO
INSERT INTO [pet] ([pet_type], [pet_breeds]) VALUES ('Dog', 'Golden Retriever');
INSERT INTO [pet] ([pet_type], [pet_breeds]) VALUES ('Cat', 'Siamese');
INSERT INTO [pet] ([pet_type], [pet_breeds]) VALUES ('Bird', 'Parrot');
INSERT INTO [pet] ([pet_type], [pet_breeds]) VALUES ('Chicken', 'Goldfish');
INSERT INTO [pet] ([pet_type], [pet_breeds]) VALUES ('Rabbit', 'Lop');
GO
INSERT INTO [Items] ([item_name], [quantity]) VALUES ('Dog Food - Chicken Flavor', 50);
INSERT INTO [Items] ([item_name], [quantity]) VALUES ('Cat Food - Salmon Flavor', 40);
INSERT INTO [Items] ([item_name], [quantity]) VALUES ('Dog Leash - Red', 30);
INSERT INTO [Items] ([item_name], [quantity]) VALUES ('Cat Litter - Clumping', 25);
INSERT INTO [Items] ([item_name], [quantity]) VALUES ('Dog Toy - Squeaky Bone', 20);
INSERT INTO [Items] ([item_name], [quantity]) VALUES ('Cat Toy - Feather Wand', 15);
INSERT INTO [Items] ([item_name], [quantity]) VALUES ('Dog Bed - Large', 10);
INSERT INTO [Items] ([item_name], [quantity]) VALUES ('Cat Bed - Small', 12);
INSERT INTO [Items] ([item_name], [quantity]) VALUES ('Dog Shampoo - Oatmeal', 18);
INSERT INTO [Items] ([item_name], [quantity]) VALUES ('Cat Scratch Post', 8);
GO
INSERT INTO [Services] ([service_name], [service_charge]) VALUES ('Pet Bathing', 15.00);
INSERT INTO [Services] ([service_name], [service_charge]) VALUES ('Vaccination', 50.00);
INSERT INTO [Services] ([service_name], [service_charge]) VALUES ('Grooming', 30.00);
INSERT INTO [Services] ([service_name], [service_charge]) VALUES ('Training', 40.00);
INSERT INTO [Services] ([service_name], [service_charge]) VALUES ('Dental Cleaning', 60.00);
INSERT INTO [Services] ([service_name], [service_charge]) VALUES ('Microchipping', 35.00);
INSERT INTO [Services] ([service_name], [service_charge]) VALUES ('Nail Trimming', 10.00);
INSERT INTO [Services] ([service_name], [service_charge]) VALUES ('Flea Treatment', 20.00);
INSERT INTO [Services] ([service_name], [service_charge]) VALUES ('Boarding', 45.00);
GO
