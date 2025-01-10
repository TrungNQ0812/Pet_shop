USE [master]
GO
/****** Object:  Database [SWP391_Project]    Script Date: 6/22/2024 10:56:45 PM ******/
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'PetShop')
BEGIN
	ALTER DATABASE PetShop SET OFFLINE WITH ROLLBACK IMMEDIATE;
	ALTER DATABASE PetShop SET ONLINE;
	DROP DATABASE PetShop;
END

GO
create database PetShop
GO
USE [PetShop]
GO

create table [Accounts](
	[account_id] int Identity(1,1) primary key not null,
	[username] nvarchar(50) not null,
	[password] varchar(50)  not null,
	[full_name] nvarchar(100) not null,
	[Dob] Date not null,
	[email] varchar(100) not null,
	[phone_number] varchar(10) check (len(phone_number) = 10),
	[account_type] nvarchar(50) not null check ([account_type] in ('admin','employee','customer'))
);
GO

create table [Items](
	[item_id] int Identity(1,1) primary key not null,
	[item_name] nvarchar(100) not null,
	[price] float not null,
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
	[pet_breeds] varchar(25) not null check ([pet_breeds] in ('Male','Female'))
);
GO

create table [Appointment](
	[appointment_id] int identity(1,1) primary key not null,
	[customer_name] nvarchar(200) NOT NULL,
	[appointment_date] date not null,
	[pet_type] nvarchar(25) not null,
	[pet-breeds] nvarchar(25) not null,
	[service_name] nvarchar(50) not null
);
GO

insert into [Accounts] values ('TrungNQ', '123121', 'Nguyen Quang Trung','2003-12-08' , 'trungnguye.081203@gmail.com', '0377712343', 'admin');
insert into [Accounts] values ('HoaNK', '081203','Nguyen Khanh Hoa', '2003-04-13', 'nkhoa13042003@gmail.com', '0377432521', 'admin');
insert into [Accounts] values ('AnhNLV', '123121', 'Nguyen Le Van Anh', '2003-10-10', 'anhnlv@gmail.com', '0398765432', 'employee');
insert into [Accounts] values ('YenNH', '123121', 'Nguyen Hai Yen', '2003-10-10', 'yennh@gmail.com', '0371234567', 'employee');
insert into [Accounts] values ('LanH', 'password1', 'Hoang Lan', '1995-07-10', 'lanhoang@example.com', '0367123456', 'customer');
insert into [Accounts] values ('DucT', 'password2', 'Tran Đuc', '1990-11-23', 'ductran@example.com', '0359876543', 'customer');
insert into [Accounts] values ('MaiB', 'password3', 'Bui Mai', '1988-04-05', 'maibui@example.com', '0387654321', 'customer');
insert into [Accounts] values ('PhuongN', 'password4', 'Nguyen Phuong', '1992-02-14', 'phuongnguyen@example.com', '0376543210', 'employee');
insert into [Accounts] values ('HanhL', 'password5', 'Le Hanh', '1997-09-17', 'lehanh@example.com', '0391234567', 'customer');
insert into [Accounts] values ('LongD', 'password6', 'Đo Long', '1994-12-25', 'longdo@example.com', '0345678901', 'employee');
insert into [Accounts] values ('ThuyV', 'password7', 'Vu Thuy', '1985-08-19', 'thuyvu@example.com', '0356789012', 'employee');
insert into [Accounts] values ('QuyenN', 'password8', 'Nguyen Quyen', '1999-06-30', 'quyennguyen@example.com', '0367890123', 'employee');
insert into [Accounts] values ('HieuT', 'password9', 'Tran Hieu', '1993-01-22', 'hieutran@example.com', '0378901234', 'employee');
insert into [Accounts] values ('NgaP', 'password10', 'Pham Nga', '1991-03-11', 'ngapham@example.com', '0389012345', 'employee');
GO

INSERT INTO [pet] ([pet_type], [pet_breeds]) VALUES ('Dog', 'Male');
INSERT INTO [pet] ([pet_type], [pet_breeds]) VALUES ('Cat', 'Male');
INSERT INTO [pet] ([pet_type], [pet_breeds]) VALUES ('Bird', 'Female');
INSERT INTO [pet] ([pet_type], [pet_breeds]) VALUES ('Chicken', 'Male');
INSERT INTO [pet] ([pet_type], [pet_breeds]) VALUES ('Rabbit', 'Female');
GO

INSERT INTO [Items] ([item_name], [price], [quantity]) VALUES ('Dog Food - Chicken Flavor', 25.00, 50);
INSERT INTO [Items] ([item_name], [price], [quantity]) VALUES ('Cat Food - Salmon Flavor', 20.00, 40);
INSERT INTO [Items] ([item_name], [price], [quantity]) VALUES ('Dog Leash - Red', 15.00, 30);
INSERT INTO [Items] ([item_name], [price], [quantity]) VALUES ('Cat Litter - Clumping', 10.00, 25);
INSERT INTO [Items] ([item_name], [price], [quantity]) VALUES ('Dog Toy - Squeaky Bone', 5.00, 20);
INSERT INTO [Items] ([item_name], [price], [quantity]) VALUES ('Cat Toy - Feather Wand', 7.00, 15);
INSERT INTO [Items] ([item_name], [price], [quantity]) VALUES ('Dog Bed - Large', 50.00, 10);
INSERT INTO [Items] ([item_name], [price], [quantity]) VALUES ('Cat Bed - Small', 30.00, 12);
INSERT INTO [Items] ([item_name], [price], [quantity]) VALUES ('Dog Shampoo - Oatmeal', 12.00, 18);
INSERT INTO [Items] ([item_name], [price], [quantity]) VALUES ('Cat Scratch Post', 20.00, 8);
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

INSERT INTO [Appointment] ([customer_name], [appointment_date], [pet_type], [pet-breeds], [service_name]) 
VALUES ('Nguyen Van A', '2024-07-01', 'Dog', 'Male', 'Vaccination');

INSERT INTO [Appointment] ([customer_name], [appointment_date], [pet_type], [pet-breeds], [service_name]) 
VALUES ('Tran Thi B', '2024-07-02', 'Cat', 'Female', 'Grooming');

INSERT INTO [Appointment] ([customer_name], [appointment_date], [pet_type], [pet-breeds], [service_name]) 
VALUES ('Le Van C', '2024-07-03', 'Bird', 'Male', 'Training');

INSERT INTO [Appointment] ([customer_name], [appointment_date], [pet_type], [pet-breeds], [service_name]) 
VALUES ('Pham Thi D', '2024-07-04', 'Chicken', 'Female', 'Dental Cleaning');

INSERT INTO [Appointment] ([customer_name], [appointment_date], [pet_type], [pet-breeds], [service_name]) 
VALUES ('Hoang Van E', '2024-07-05', 'Rabbit', 'Male', 'Microchipping');
GO
