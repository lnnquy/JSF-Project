/*

Source Server         : localhost sqlserver
Source Server Version : 110000
Source Host           : localhost,1433:1433
Source Database       : Team1
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2015-09-07 12:25:46
*/
USE master
GO
IF db_id (N'AngelShopDB') is not null
	Drop database [AngelShopDB];
GO
CREATE DATABASE AngelShopDB
GO

USE AngelShopDB
GO
-- ----------------------------
-- Table structure for Brands
-- ----------------------------
-- DROP TABLE [dbo].[Brands]
GO
CREATE TABLE [dbo].[Brands] (
[BrandID] int IDENTITY(1,1) ,
[BrandName] varchar(30) NOT NULL ,
[Status] smallint NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Brands]', RESEED, 16)
GO

-- ----------------------------
-- Records of Brands
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Brands] ON
GO
INSERT INTO [dbo].[Brands] ([BrandID], [BrandName], [Status]) VALUES (N'5', N'Adidas', null)
GO
GO
INSERT INTO [dbo].[Brands] ([BrandID], [BrandName], [Status]) VALUES (N'6', N'D & G', null)
GO
GO
INSERT INTO [dbo].[Brands] ([BrandID], [BrandName], [Status]) VALUES (N'7', N'Ken', null)
GO
GO
INSERT INTO [dbo].[Brands] ([BrandID], [BrandName], [Status]) VALUES (N'8', N'LeVi', null)
GO
GO
INSERT INTO [dbo].[Brands] ([BrandID], [BrandName], [Status]) VALUES (N'10', N'Lacoste', null)
GO
GO
INSERT INTO [dbo].[Brands] ([BrandID], [BrandName], [Status]) VALUES (N'11', N'Gucci', null)
GO
GO
INSERT INTO [dbo].[Brands] ([BrandID], [BrandName], [Status]) VALUES (N'12', N'Casio', null)
GO
GO
INSERT INTO [dbo].[Brands] ([BrandID], [BrandName], [Status]) VALUES (N'13', N'Nike', null)
GO
GO
INSERT INTO [dbo].[Brands] ([BrandID], [BrandName], [Status]) VALUES (N'14', N'Dior', null)
GO
GO
INSERT INTO [dbo].[Brands] ([BrandID], [BrandName], [Status]) VALUES (N'15', N'Vans', null)
GO
GO
INSERT INTO [dbo].[Brands] ([BrandID], [BrandName], [Status]) VALUES (N'16', N'Emporio Armani', null)
GO
GO
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO

-- ----------------------------
-- Table structure for Category
-- ----------------------------
-- DROP TABLE [dbo].[Category]
GO
CREATE TABLE [dbo].[Category] (
[CategoryID] int IDENTITY(1,1) ,
[CategoryName] nvarchar(50) NOT NULL ,
[Status] smallint NULL ,
[CategorySub] smallint NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Category]', RESEED, 48)
GO

-- ----------------------------
-- Records of Category
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Category] ON
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'1', N'Shoes', null, null)
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'2', N'Clothing', null, null)
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'4', N'Accessories', null, null)
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'12', N'Coats & Jackets', null, N'2')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'13', N'Dior', null, N'1')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'15', N'Sunglasses', null, N'4')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'16', N'Hats', null, N'4')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'19', N'Dresses', null, N'2')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'30', N'Women''s Belts', null, N'4')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'31', N'Men''s Belts', null, N'4')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'32', N'Women''s T-Shirt', null, N'2')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'33', N'Men''s T-Shirt', null, N'2')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'34', N'Jewelry', null, N'4')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'35', N'Women''s Jeans', null, N'2')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'36', N'Women''s Shorts', null, N'2')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'37', N'Men''s Jeans', null, N'2')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'38', N'Men''s Shorts', null, N'2')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'39', N'HandBag & Watches', null, null)
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'40', N'Vans', null, N'1')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'41', N'D & C', null, N'1')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'42', N'Nike', null, N'1')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'43', N'Converse Star ', null, N'1')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'44', N'Coach Handbags', null, N'39')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'45', N'Michael Kors Handbags', null, N'39')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'46', N'Men''s Watches', null, N'39')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'47', N'Women''s Watches', null, N'39')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryID], [CategoryName], [Status], [CategorySub]) VALUES (N'48', N'Adidas', null, N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO

-- ----------------------------
-- Table structure for Comments
-- ----------------------------
-- DROP TABLE [dbo].[Comments]
GO
CREATE TABLE [dbo].[Comments] (
[CommentID] int IDENTITY(1,1) ,
[ProductID] int NOT NULL ,
[CommentDetails] ntext NOT NULL ,
[CustomerID] int NOT NULL ,
[Rating] INT NOT NULL DEFAULT(0),
[Status] smallint NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Comments]', RESEED, 5)
GO

-- ----------------------------
-- Records of Comments
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Comments] ON
GO
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO

-- ----------------------------
-- Table structure for Contact
-- ----------------------------
-- DROP TABLE [dbo].[Contact]
GO
CREATE TABLE [dbo].[Contact] (
[ContactID] int NOT NULL IDENTITY(1,1) ,
[ContactName] nvarchar(50) NOT NULL ,
[ContactMail] nvarchar(50) NOT NULL ,
[ContactDetails] ntext NOT NULL ,
[Status] smallint NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Contact]', RESEED, 3)
GO

-- ----------------------------
-- Records of Contact
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Contact] ON
GO
INSERT INTO [dbo].[Contact] ([ContactID], [ContactName], [ContactMail], [ContactDetails], [Status]) VALUES (N'2', N'Nguyễn Cảnh Khánh Trình', N'trinh.nck@gmail.com', N'Xin chào bạn', null)
GO
GO
INSERT INTO [dbo].[Contact] ([ContactID], [ContactName], [ContactMail], [ContactDetails], [Status]) VALUES (N'3', N'Lương Tấn Chức', N'Chuc@gmail.com', N'Xin chào các bạn.
Mình là Lương Tấn Chức, rất vui được làm quen với các bạn', null)
GO
GO
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO

-- ----------------------------
-- Table structure for Customers
-- ----------------------------
-- DROP TABLE [dbo].[Customers]
GO
CREATE TABLE [dbo].[Customers] (
[CustomerID] int NOT NULL IDENTITY(1,1) ,
[Username] varchar(30) NOT NULL ,
[Password] varchar(20) NOT NULL ,
[CustomerName] nvarchar(60) NOT NULL ,
[CustomerAddress] nvarchar(200) NOT NULL ,
[CustomerEmail] varchar(100) NULL ,
[CustomerRole] varchar(10) NULL ,
[CustomerPhone] varchar(20) NULL ,
[Status] smallint NULL ,
[Reg_Date] datetime,
[Sex] nvarchar(10),
[Birthday] datetime
)


GO
DBCC CHECKIDENT(N'[dbo].[Customers]', RESEED, 20)
GO

-- ----------------------------
-- Records of Customers
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Customers] ON
GO
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (1, N'admin', N'123456', N'Admin', N'Thành Phố Hồ Chí Minh', N'admin@gmail.com', N'Admin', N'0969777529', 0, CAST(0x00009F4F00EBB4B1 AS DateTime), N'Male', CAST(0x000085E000EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (2, N'lnnquy', N'123456', N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'lnnquy1993@gmail.com', N'User', N'01685000113', 0, CAST(0x0000A0BD00EBB4B1 AS DateTime), N'Male', CAST(0x0000834200EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (3, N'khangduy', N'123456', N'Khang Duy', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'khangduy1@gmail.com', N'User', N'01685000011', 0, CAST(0x0000A39700EBB4B1 AS DateTime), N'Male', CAST(0x0000893300EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (4, N'anhkhoa', N'123456', N'Anh Khoa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'anhkhoa@gmail.com', N'User', N'0969777529', 0, CAST(0x0000A50400EBB4B1 AS DateTime), N'Male', CAST(0x00008B9500EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (5, N'phibang', N'123456', N'Phi Bằng', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'phibang@gmail.com', N'User', N'1234567890', 0, CAST(0x00009F4F00EBB4B1 AS DateTime), N'Male', CAST(0x0000878A00EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (6, N'TanYen', N'123456', N'Phạm Tân Yên', N'TP Hồ Chí Minh', N'phamtanyen@gmail.com', N'User', N'0966991144', 1, CAST(0x0000A67200EBB4B1 AS DateTime), N'Female', CAST(0x0000806800EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (7, N'MinhPhat', N'123456', N'Nguyễn Minh Phát', N'Thành Phố Hồ Chí Minh', N'phat@Gmail.com', N'User', N'0123456789', 0, CAST(0x0000A22A00EBB4B1 AS DateTime), N'Female', CAST(0x00008A6500EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (8, N'YenTan', N'123456', N'Pham Yen Tan', N'Tp Hồ Chí Minh', N'yen@mail.com', N'User', N'0129876543', 0, CAST(0x00009F8C00000000 AS DateTime), N'Female', CAST(0x000080A200000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (9, N'PhatMinh', N'123456', N'Nguyen Phat Minh', N'Tp HCM', N'minh@mail.com', N'User', N'0982716354', 1, CAST(0x00009F6400000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (10, N'SyLe', N'123456', N'Sy Le', N'Tp HCM', N'Syle@gmail.com', N'User', N'0982716354', 0, CAST(0x00009F6400000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (11, N'LeSy', N'123456', N'Le Sy', N'Tp HCM', N'lesy111@gmail.com', N'User', N'0982716354', 0, CAST(0x00009F6400000000 AS DateTime), N'Female', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (12, N'ToThu', N'123456', N'To Thu', N'Tp HCM', N'tothu@mail.com', N'User', N'0982716354', 0, CAST(0x0000A6C400000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (13, N'ThuTo', N'123456', N'Thu To', N'Tp HCM', N'thuto@mail.com', N'User', N'0982716354', 0, CAST(0x0000A6C400000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (14, N'Quyen', N'123456', N'Quyen Hoang', N'Tp HCM', N'quyenvo@mail.com', N'User', N'0982716354', 1, CAST(0x0000A6C400000000 AS DateTime), N'Female', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (15, N'BangTa', N'123456', N'Bang Ta', N'Tp HCM', N'bangtap@mail.com', N'User', N'0982716354', 0, CAST(0x0000A6C400000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (16, N'BuiVy', N'123456', N'Bui Vy', N'Tp HCM', N'buivy@mail.com', N'User', N'0982716354', 0, CAST(0x0000A6E200000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (17, N'HueTuong', N'123456', N'Tuong Hue', N'Tp HCM', N'tuonghue@mail.com', N'User', N'0982716354', 0, CAST(0x0000A6E200000000 AS DateTime), N'Female', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (18, N'PoohL', N'123456', N'Poppy L', N'Tp HCM', N'poppyreal@mail.com', N'User', N'0982716354', 0, CAST(0x0000A6E200000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (19, N'Pigglet', N'123456', N'Miss Piggy', N'Tp HCM', N'sessame@mail.com', N'User', N'0982716354', 0, CAST(0x0000A6E200000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (20, N'Tigeress', N'123456', N'Tigery', N'Tp HCM', N'tiigerb@mail.com', N'User', N'0982716354', 1, CAST(0x0000A6E200000000 AS DateTime), N'Female', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (21, N'CapTa', N'123456', N'Cap Ta', N'Tp HCM', N'capta1266@mail.com', N'User', N'0982716354', 0, CAST(0x0000A6E200000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (22, N'Loren', N'123456', N'Loren Ina', N'Tp HCM', N'lorenina@mail.com', N'User', N'0982716354', 0, CAST(0x0000A70100000000 AS DateTime), N'Female', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (23, N'TuyenTH', N'123456', N'Tuyen Truong', N'Tp HCM', N'tuyentruong@mail.com', N'User', N'0982716354', 0, CAST(0x0000A70100000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (24, N'BanTan', N'123456', N'Ban Tan', N'Tp HCM', N'bantan@mail.com', N'User', N'0982716354', 0, CAST(0x0000A70100000000 AS DateTime), N'Female', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (25, N'Wepro', N'123456', N'Trang T', N'Tp HCM', N'trangtran@mail.com', N'User', N'0982716354', 1, CAST(0x0000A70100000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (26, N'NameWee', N'123456', N'Nam Nguyen', N'Tp HCM', N'nguyennam6442@mail.com', N'User', N'0982716354', 0, CAST(0x0000A72000000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (27, N'TemLo', N'123456', N'Tem Lo', N'Tp HCM', N'templo43@mail.com', N'User', N'0982716354', 0, CAST(0x0000A72000000000 AS DateTime), N'Female', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (28, N'TruongPhat', N'123456', N'Truong Phat', N'Tp HCM', N'truonghoang@mail.com', N'User', N'0982716354', 0, CAST(0x0000A73C00000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (29, N'CuongThinh', N'123456', N'Cuong Thinh', N'Tp HCM', N'cuonghuynh@mail.com', N'User', N'0982716354', 1, CAST(0x0000A73C00000000 AS DateTime), N'Female', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (30, N'PhatThinh', N'123456', N'Phat Thinh', N'Tp HCM', N'thinhphat267@mail.com', N'User', N'0982716354', 0, CAST(0x0000A73C00000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (31, N'HuyTam', N'123456', N'Huy Tam', N'Tp HCM', N'huytam947@mail.com', N'User', N'0982716354', 0, CAST(0x0000A73C00000000 AS DateTime), N'Female', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (32, N'Optress', N'123456', N'Optress', N'Tp HCM', N'opra2redz@mail.com', N'User', N'0982716354', 1, CAST(0x0000A79800000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (33, N'poosy', N'123456', N'Optress', N'Tp HCM', N'opra2nxs@mail.com', N'User', N'0982716354', 0, CAST(0x0000A79800000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (34, N'optuis', N'123456', N'Optresop tuiss', N'Tp HCM', N'opra2ry@mail.com', N'User', N'0982716354', 0, CAST(0x0000A7F400000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (35, N'Optress2', N'123456', N'ruthymn', N'Tp HCM', N'opra244@mail.com', N'User', N'0982716354', 1, CAST(0x0000A7F400000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (36, N'tygra', N'123456', N'optre dorm', N'Tp HCM', N'opra2bcmn@mail.com', N'User', N'0982716354', 0, CAST(0x0000A84F00000000 AS DateTime), N'Female', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (37, N'tudjs', N'123456', N'tuj khal', N'Tp HCM', N'opra244@mail.com', N'User', N'0982716354', 1, CAST(0x0000A84F00000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (38, N'Typo', N'123456', N'Typorium Ony', N'Tp HCM', N'typori@mail.com', N'User', N'0982716354', 0, CAST(0x0000A84F00000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (39, N'Redu', N'123456', N'Red Uplo', N'Tp HCM', N'red1155@mail.com', N'User', N'0982716354', 0, CAST(0x0000A77900000000 AS DateTime), N'Female', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (40, N'Bleu', N'123456', N'Bleu Coponi', N'Tp HCM', N'BleuCo@mail.com', N'User', N'0982716354', 1, CAST(0x0000A85C00000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (41, N'renew', N'123456', N'Nontuni Coponi', N'Tp HCM', N'NeoCo@mail.com', N'User', N'0982716354', 0, CAST(0x0000A85C00000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (42, N'Quer', N'123456', N'Quer Coponi', N'Tp HCM', N'QueCo@mail.com', N'User', N'0982716354', 0, CAST(0x0000A85C00000000 AS DateTime), N'Female', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (43, N'quyki', N'123456', N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'lnnquy1993@gmail.com', N'User', N'01685000113', 0, CAST(0x0000A02400EBB4B1 AS DateTime), N'Female', CAST(0x0000834200EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (44, N'oppquy', N'123456', N'quy mor', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'lnnquy1993@gmail.com', N'User', N'01685000113', 0, CAST(0x0000A06100EBB4B1 AS DateTime), N'Male', CAST(0x0000834200EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (45, N'rety', N'123456', N'lety romoni', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'lnnquy1993@gmail.com', N'User', N'01685000113', 1, CAST(0x0000A13700EBB4B1 AS DateTime), N'Male', CAST(0x0000834200EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (46, N'ruti', N'123456', N'ruti monkini', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'lnnquy1993@gmail.com', N'User', N'01685000113', 0, CAST(0x0000A13700EBB4B1 AS DateTime), N'Female', CAST(0x0000834200EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (47, N'Possh', N'123456', N'peoloni lora', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'lnnquy1993@gmail.com', N'User', N'01685000113', 0, CAST(0x0000A13700EBB4B1 AS DateTime), N'Female', CAST(0x0000834200EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (48, N'MinhPhat2', N'123456', N'Nguyễn Minh Phát', N'Thành Phố Hồ Chí Minh', N'phat@Gmail.com', N'User', N'0123456789', 0, CAST(0x0000A24900EBB4B1 AS DateTime), N'Female', CAST(0x00008A6500EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (49, N'Querry ony', N'123456', N'Nguyễn Minh Phát', N'Thành Phố Hồ Chí Minh', N'phat@Gmail.com', N'User', N'0123456789', 1, CAST(0x0000A15600EBB4B1 AS DateTime), N'Female', CAST(0x00008A6500EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (50, N'Reiun ', N'123456', N'Reuin', N'Thành Phố Hồ Chí Minh', N'phat@Gmail.com', N'User', N'0123456789', 0, CAST(0x0000A1B000EBB4B1 AS DateTime), N'Female', CAST(0x00008A6500EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (51, N'Wendy', N'123456', N'Khang Duy', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'khangduy1@gmail.com', N'User', N'01685000011', 0, CAST(0x0000A39700EBB4B1 AS DateTime), N'Female', CAST(0x0000893300EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (52, N'Irene', N'123456', N'Khang Duy', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'khangduy1@gmail.com', N'User', N'01685000011', 0, CAST(0x0000A2E000EBB4B1 AS DateTime), N'Male', CAST(0x0000893300EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (53, N'Joy', N'123456', N'Khang Duy', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'khangduy1@gmail.com', N'User', N'01685000011', 1, CAST(0x0000A41100EBB4B1 AS DateTime), N'Female', CAST(0x0000893300EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (54, N'Yeri', N'123456', N'Khang Duy', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'khangduy1@gmail.com', N'User', N'01685000011', 0, CAST(0x0000A41100EBB4B1 AS DateTime), N'Male', CAST(0x0000893300EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (55, N'AnK', N'123456', N'Anh Khoa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'anhkhoa@gmail.com', N'User', N'0969777529', 0, CAST(0x0000A50400EBB4B1 AS DateTime), N'Male', CAST(0x00008B9500EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (56, N'MibJ', N'123456', N'Anh Khoa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'anhkhoa@gmail.com', N'User', N'0969777529', 1, CAST(0x0000A50400EBB4B1 AS DateTime), N'Male', CAST(0x00008B9500EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (57, N'PohD', N'123456', N'Anh Khoa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'anhkhoa@gmail.com', N'User', N'0969777529', 0, CAST(0x0000A57E00EBB4B1 AS DateTime), N'Male', CAST(0x00008B9500EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (58, N'Revol', N'123456', N'Anh Khoa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'anhkhoa@gmail.com', N'User', N'0969777529', 0, CAST(0x0000A46B00EBB4B1 AS DateTime), N'Male', CAST(0x00008B9500EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (59, N'BlackJ', N'123456', N'Anh Khoa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'anhkhoa@gmail.com', N'User', N'0969777529', 0, CAST(0x0000A46B00EBB4B1 AS DateTime), N'Male', CAST(0x00008B9500EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (60, N'GreyH', N'123456', N'Anh Khoa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'anhkhoa@gmail.com', N'User', N'0969777529', 0, CAST(0x0000A46B00EBB4B1 AS DateTime), N'Male', CAST(0x00008B9500EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (61, N'Quond', N'123456', N'Anh Khoa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'anhkhoa@gmail.com', N'User', N'0969777529', 0, CAST(0x0000A46B00EBB4B1 AS DateTime), N'Male', CAST(0x00008B9500EBB4B1 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (62, N'HuyNl', N'123456', N'Thu To', N'Tp HCM', N'thuto@mail.com', N'User', N'0982716354', 0, CAST(0x0000A5EE00000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerRole], [CustomerPhone], [Status], [Reg_Date], [Sex], [Birthday]) VALUES (63, N'Jack', N'123456', N'Thu To', N'Tp HCM', N'thuto@mail.com', N'User', N'0982716354', 0, CAST(0x0000A5EE00000000 AS DateTime), N'Male', CAST(0x0000800B00000000 AS DateTime))



GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO

-- ----------------------------
-- Table structure for NewsCate
-- ----------------------------
-- DROP TABLE [dbo].[NewsCate]
GO
CREATE TABLE [dbo].[NewsCate] (
[NewsCateID] int NOT NULL IDENTITY(1,1) ,
[NewsCateName] nvarchar(200) NOT NULL ,
[Status] smallint NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[NewsCate]', RESEED, 2)
GO

-- ----------------------------
-- Records of NewsCate
-- ----------------------------
SET IDENTITY_INSERT [dbo].[NewsCate] ON
GO
INSERT INTO [dbo].[NewsCate] ([NewsCateID], [NewsCateName], [Status]) VALUES (N'1', N'Men''s Fashion', null)
GO
GO
INSERT INTO [dbo].[NewsCate] ([NewsCateID], [NewsCateName], [Status]) VALUES (N'2', N'Women''s Fashion', null)
GO
GO
SET IDENTITY_INSERT [dbo].[NewsCate] OFF
GO

-- ----------------------------
-- Table structure for NewsDetail
-- ----------------------------
-- DROP TABLE [dbo].[NewsDetail]
GO
CREATE TABLE [dbo].[NewsDetail] (
[NewsID] int NOT NULL IDENTITY(1,1) ,
[NewsTitle] nvarchar(200) NOT NULL ,
[NewsContent] ntext NOT NULL ,
[NewsImage] nvarchar(200) NULL ,
[NewsCateID] int NOT NULL ,
[NewsDate] datetime NOT NULL ,
[Status] smallint NULL ,
[NewsDescription] ntext NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[NewsDetail]', RESEED, 1002)
GO

-- ----------------------------
-- Records of NewsDetail
-- ----------------------------
SET IDENTITY_INSERT [dbo].[NewsDetail] ON
GO
INSERT INTO [dbo].[NewsDetail] ([NewsID], [NewsTitle], [NewsContent], [NewsImage], [NewsCateID], [NewsDate], [Status], [NewsDescription]) VALUES (N'3', N'Hè 2015: Xu hướng tóc búi Natra sốt xình xịch dàn sao trẻ', N'<div>&nbsp;</div>

<div>
<p class="p1" style="margin: 0px 0px 10px; line-height: 20px; color: rgb(153, 153, 153); font-family: ''Open Sans'', calibri, Arial, Helvetica, sans-serif;"><span class="s1"><img data-mce-="" src="http://hstatic.net/193/1000016193/10/2015/4-8/b2.jpg" style="height: auto; max-width: 100%; vertical-align: middle; border: 0px; transition: background-color 0.2s ease, border 0.2s ease, color 0.2s ease, opacity 0.2s ease-in-out;" /><br />
<br />
Bạn đang ph&acirc;n v&acirc;n khi lựa chọn mua quần &aacute;o online?, bạn ph&acirc;n v&acirc;n về chất liệu, kiểu d&aacute;ng cũng như m&agrave;u sắc đối với những m&oacute;n đồ b&aacute;n online tr&ecirc;n mạng?, bạn thắc mắc kh&ocirc;ng biết liệu những bộ quần &aacute;o khi đặt mua tr&ecirc;n mạng c&oacute; ph&ugrave; hợp với m&igrave;nh kh&ocirc;ng? Vấn đề l&agrave; ngay cả khi bạn biết r&otilde; kiểu d&aacute;ng cơ thể m&igrave;nh, chất liệu cũng như k&iacute;ch thước của từng loại quần &aacute;o b&aacute;n online tr&ecirc;n mang bạn vẫn c&oacute; thể bị thất vọng khi nhận được những m&oacute;n đồ m&agrave; bạn đặt h&agrave;ng. C&oacute; một số t&iacute;p chọn đồ online sau đ&acirc;y m&agrave; bạn c&oacute; thể &aacute;p dụng để lựa chọn được những trang phục hay phụ kiện ưng &yacute; nhất.&nbsp;</span></p>

<p class="p2" style="margin: 0px 0px 10px; line-height: 20px; color: rgb(153, 153, 153); font-family: ''Open Sans'', calibri, Arial, Helvetica, sans-serif;">&nbsp;</p>

<p class="p1" style="margin: 0px 0px 10px; line-height: 20px; color: rgb(153, 153, 153); font-family: ''Open Sans'', calibri, Arial, Helvetica, sans-serif;"><span class="s1"><strong>1. Đọc kĩ phần ghi ch&uacute; của sản phẩm</strong></span><br />
<br />
Hầu hết c&aacute;c trang web b&aacute;n h&agrave;ng online tr&ecirc;n mạng đều c&oacute; phần ghi ch&uacute; về chất liệu sản phẩm, kiểu d&aacute;ng , m&agrave;u sắc, k&iacute;ch thước&hellip; bạn c&oacute; thể dựa v&agrave;o những số liệu đ&oacute; để &aacute;ng chừng size n&agrave;o c&oacute; ph&ugrave; hợp với m&igrave;nh, bạn cần đặc biệt ch&uacute; &yacute; về chất liệu vải v&agrave; size, n&ecirc;n lựa chọn những chất liệu co d&atilde;n v&igrave; đặc t&iacute;nh của chất liệu co d&atilde;n sẽ dễ d&agrave;ng ph&ugrave; hợp với h&igrave;nh d&aacute;ng k&iacute;ch thước cơ thể kh&aacute;c nhau. Cần tr&aacute;nh lựa chọn những chất liệu vải cứng, co d&atilde;n &iacute;t v&igrave; một khi bạn đ&atilde; kh&ocirc;ng mặc vừa m&oacute;n đồ m&agrave; m&igrave;nh đặt về th&igrave; kh&ocirc;ng c&ograve;n c&aacute;ch n&agrave;o kh&aacute;c l&agrave; phải đem gửi trả lại hoặc đem cho.&nbsp;</p>

<p class="p2" style="margin: 0px 0px 10px; line-height: 20px; color: rgb(153, 153, 153); font-family: ''Open Sans'', calibri, Arial, Helvetica, sans-serif;">&nbsp;</p>

<p class="p1" style="margin: 0px 0px 10px; line-height: 20px; color: rgb(153, 153, 153); font-family: ''Open Sans'', calibri, Arial, Helvetica, sans-serif;"><span class="s1"><strong>2. Kh&ocirc;ng n&ecirc;n mua những loại &aacute;o c&oacute; c&uacute;p ngực</strong>&nbsp;<br />
<br />
Tại sao lại kh&ocirc;ng n&ecirc;n mua những loại &aacute;o c&oacute; phần c&uacute;p ngực? Bởi v&ograve;ng ngực của mỗi người l&agrave; kh&aacute;c nhau, c&oacute; thể th&acirc;n h&igrave;nh bạn hơi mập một ch&uacute;t nhưng v&ograve;ng 1 lại kh&ocirc;ng được đầy đặn hay ngược lại&hellip; Bởi vậy m&agrave; những chiếc &aacute;o c&oacute; phần c&uacute;p ngực may sẵn sẽ kh&ocirc;ng chắc chắn c&oacute; thể &ocirc;m trọn lấy v&ograve;ng 1, từ đ&oacute; ngang nhi&ecirc;n tố c&aacute;o phần ngực kh&ocirc;ng được ưng &yacute; của bạn.<br />
<br />
<img data-mce-="" src="https://hstatic.net/193/1000016193/10/2015/4-8/b2.jpg" style="height: auto; max-width: 100%; vertical-align: middle; border: 0px; transition: background-color 0.2s ease, border 0.2s ease, color 0.2s ease, opacity 0.2s ease-in-out;" /><br />
<br />
<strong>3 . Cần ch&uacute; &yacute; xem th&agrave;nh phần chất liệu vải</strong>&nbsp;<br />
<br />
Khi ngắm quần &aacute;o tr&ecirc;n mạng, kh&ocirc;ng phải l&uacute;c n&agrave;o bạn cũng c&oacute; thể đo&aacute;n được chất liệu của ch&uacute;ng trong khi loại v&agrave; chất lượng vải của quần &aacute;o lại rất quan trọng. V&igrave; thế bạn cần trang bị cho m&igrave;nh những kiến thức về c&aacute;c một số th&agrave;nh phần cơ bản hay c&oacute; trong chất liệu vải để c&oacute; thể nhận biết được loại vải n&agrave;o thấm h&uacute;t mồ h&ocirc;i, loại vải n&agrave;o dễ bị nhăn, loại vải n&agrave;o kh&ocirc;ng co d&atilde;n, loại vải n&agrave;o ph&ugrave; hợp thời tiết&hellip; Tất cả những th&ocirc;ng tin n&agrave;y đều được ghi rất r&otilde; r&agrave;ng ở mục COMPOSITION b&ecirc;n cạnh c&aacute;c sản phẩm.<br />
<br />
<strong>4 . Nắm r&otilde; kiểu d&aacute;ng khu&ocirc;n mặt để lựa chọn mắt k&iacute;nh ph&ugrave; hợp</strong>&nbsp;<br />
<br />
Bạn cần nắm r&otilde; kiểu d&aacute;ng khu&ocirc;n mặt m&igrave;nh để lựa chọn được những chiếc k&iacute;nh ph&ugrave; hợp với m&igrave;nh .Những chiếc k&iacute;nh oval, gọng vu&ocirc;ng sẽ rất ph&ugrave; hợp cho những c&ocirc; n&agrave;ng mặt tr&ograve;n bởi ch&uacute;ng gi&uacute;p gương mặt bạn trở n&ecirc;n h&agrave;i h&ograve;a v&agrave; c&acirc;n đối hơn. Gọng k&iacute;nh tr&ograve;n lại rất hợp với những n&agrave;ng mặt vu&ocirc;ng hay g&oacute;c cạnh. Khu&ocirc;n mặt tr&aacute;i tim sẽ ho&agrave;n hảo hơn khi đeo những chiếc k&iacute;nh h&igrave;nh chữ nhật hoặc k&iacute;nh mắt m&egrave;o. C&ograve;n đối với những n&agrave;ng c&oacute; khu&ocirc;n mặt d&agrave;i th&igrave; k&iacute;nh c&oacute; họa tiết điểm nhấn ở phần g&oacute;c tr&ecirc;n gọng chắc chắn sẽ l&agrave; lựa chọn ph&ugrave; hợp nhất.</span></p>
</div>
', N'b2.jpg', N'2', N'2015-09-06 11:01:05.843', null, N'Bạn đang phân vân khi lựa chọn mua quần áo online?, bạn phân vân về chất liệu, kiểu dáng cũng như màu sắc đối với những món đồ bán online trên mạng?, bạn thắc mắc không biết liệu những bộ quần áo khi đặt mua trên mạng có phù hợp với mình không? Vấn đề là ngay cả khi bạn biết rõ kiểu dáng cơ thể mình, chất liệu cũng như kích thước của từng loại quần áo bán online trên mang bạn vẫn có thể bị thất vọng khi nhận được những món đồ mà bạn đặt hàng. Có một số típ chọn đồ online sau đây mà bạn có thể áp dụng để lựa chọn được những trang phục hay phụ kiện ưng ý nhất. ')
GO
GO
INSERT INTO [dbo].[NewsDetail] ([NewsID], [NewsTitle], [NewsContent], [NewsImage], [NewsCateID], [NewsDate], [Status], [NewsDescription]) VALUES (N'4', N'Bé xinh trong sét đồ ngày nắng', N'<div>&nbsp;</div>

<div>
<p class="p1" style="margin: 0px 0px 10px; line-height: 20px; color: rgb(153, 153, 153); font-family: ''Open Sans'', calibri, Arial, Helvetica, sans-serif;"><span class="s1"><img data-mce-="" src="http://hstatic.net/193/1000016193/10/2015/4-8/b3.jpg" style="height: auto; max-width: 100%; vertical-align: middle; border: 0px; transition: background-color 0.2s ease, border 0.2s ease, color 0.2s ease, opacity 0.2s ease-in-out;" /><br />
<br />
Bạn đang ph&acirc;n v&acirc;n khi lựa chọn mua quần &aacute;o online?, bạn ph&acirc;n v&acirc;n về chất liệu, kiểu d&aacute;ng cũng như m&agrave;u sắc đối với những m&oacute;n đồ b&aacute;n online tr&ecirc;n mạng?, bạn thắc mắc kh&ocirc;ng biết liệu những bộ quần &aacute;o khi đặt mua tr&ecirc;n mạng c&oacute; ph&ugrave; hợp với m&igrave;nh kh&ocirc;ng? Vấn đề l&agrave; ngay cả khi bạn biết r&otilde; kiểu d&aacute;ng cơ thể m&igrave;nh, chất liệu cũng như k&iacute;ch thước của từng loại quần &aacute;o b&aacute;n online tr&ecirc;n mang bạn vẫn c&oacute; thể bị thất vọng khi nhận được những m&oacute;n đồ m&agrave; bạn đặt h&agrave;ng. C&oacute; một số t&iacute;p chọn đồ online sau đ&acirc;y m&agrave; bạn c&oacute; thể &aacute;p dụng để lựa chọn được những trang phục hay phụ kiện ưng &yacute; nhất.&nbsp;</span></p>

<p class="p2" style="margin: 0px 0px 10px; line-height: 20px; color: rgb(153, 153, 153); font-family: ''Open Sans'', calibri, Arial, Helvetica, sans-serif;">&nbsp;</p>

<p class="p1" style="margin: 0px 0px 10px; line-height: 20px; color: rgb(153, 153, 153); font-family: ''Open Sans'', calibri, Arial, Helvetica, sans-serif;"><span class="s1"><strong>1. Đọc kĩ phần ghi ch&uacute; của sản phẩm</strong></span><br />
<br />
Hầu hết c&aacute;c trang web b&aacute;n h&agrave;ng online tr&ecirc;n mạng đều c&oacute; phần ghi ch&uacute; về chất liệu sản phẩm, kiểu d&aacute;ng , m&agrave;u sắc, k&iacute;ch thước&hellip; bạn c&oacute; thể dựa v&agrave;o những số liệu đ&oacute; để &aacute;ng chừng size n&agrave;o c&oacute; ph&ugrave; hợp với m&igrave;nh, bạn cần đặc biệt ch&uacute; &yacute; về chất liệu vải v&agrave; size, n&ecirc;n lựa chọn những chất liệu co d&atilde;n v&igrave; đặc t&iacute;nh của chất liệu co d&atilde;n sẽ dễ d&agrave;ng ph&ugrave; hợp với h&igrave;nh d&aacute;ng k&iacute;ch thước cơ thể kh&aacute;c nhau. Cần tr&aacute;nh lựa chọn những chất liệu vải cứng, co d&atilde;n &iacute;t v&igrave; một khi bạn đ&atilde; kh&ocirc;ng mặc vừa m&oacute;n đồ m&agrave; m&igrave;nh đặt về th&igrave; kh&ocirc;ng c&ograve;n c&aacute;ch n&agrave;o kh&aacute;c l&agrave; phải đem gửi trả lại hoặc đem cho.&nbsp;</p>

<p class="p2" style="margin: 0px 0px 10px; line-height: 20px; color: rgb(153, 153, 153); font-family: ''Open Sans'', calibri, Arial, Helvetica, sans-serif;">&nbsp;</p>

<p class="p1" style="margin: 0px 0px 10px; line-height: 20px; color: rgb(153, 153, 153); font-family: ''Open Sans'', calibri, Arial, Helvetica, sans-serif;"><span class="s1"><strong>2. Kh&ocirc;ng n&ecirc;n mua những loại &aacute;o c&oacute; c&uacute;p ngực</strong>&nbsp;<br />
<br />
Tại sao lại kh&ocirc;ng n&ecirc;n mua những loại &aacute;o c&oacute; phần c&uacute;p ngực? Bởi v&ograve;ng ngực của mỗi người l&agrave; kh&aacute;c nhau, c&oacute; thể th&acirc;n h&igrave;nh bạn hơi mập một ch&uacute;t nhưng v&ograve;ng 1 lại kh&ocirc;ng được đầy đặn hay ngược lại&hellip; Bởi vậy m&agrave; những chiếc &aacute;o c&oacute; phần c&uacute;p ngực may sẵn sẽ kh&ocirc;ng chắc chắn c&oacute; thể &ocirc;m trọn lấy v&ograve;ng 1, từ đ&oacute; ngang nhi&ecirc;n tố c&aacute;o phần ngực kh&ocirc;ng được ưng &yacute; của bạn.<br />
<br />
<img data-mce-="" src="https://hstatic.net/193/1000016193/10/2015/4-8/b2.jpg" style="height: auto; max-width: 100%; vertical-align: middle; border: 0px; transition: background-color 0.2s ease, border 0.2s ease, color 0.2s ease, opacity 0.2s ease-in-out;" /><br />
<br />
<strong>3 . Cần ch&uacute; &yacute; xem th&agrave;nh phần chất liệu vải</strong>&nbsp;<br />
<br />
Khi ngắm quần &aacute;o tr&ecirc;n mạng, kh&ocirc;ng phải l&uacute;c n&agrave;o bạn cũng c&oacute; thể đo&aacute;n được chất liệu của ch&uacute;ng trong khi loại v&agrave; chất lượng vải của quần &aacute;o lại rất quan trọng. V&igrave; thế bạn cần trang bị cho m&igrave;nh những kiến thức về c&aacute;c một số th&agrave;nh phần cơ bản hay c&oacute; trong chất liệu vải để c&oacute; thể nhận biết được loại vải n&agrave;o thấm h&uacute;t mồ h&ocirc;i, loại vải n&agrave;o dễ bị nhăn, loại vải n&agrave;o kh&ocirc;ng co d&atilde;n, loại vải n&agrave;o ph&ugrave; hợp thời tiết&hellip; Tất cả những th&ocirc;ng tin n&agrave;y đều được ghi rất r&otilde; r&agrave;ng ở mục COMPOSITION b&ecirc;n cạnh c&aacute;c sản phẩm.<br />
<br />
<strong>4 . Nắm r&otilde; kiểu d&aacute;ng khu&ocirc;n mặt để lựa chọn mắt k&iacute;nh ph&ugrave; hợp</strong>&nbsp;<br />
<br />
Bạn cần nắm r&otilde; kiểu d&aacute;ng khu&ocirc;n mặt m&igrave;nh để lựa chọn được những chiếc k&iacute;nh ph&ugrave; hợp với m&igrave;nh .Những chiếc k&iacute;nh oval, gọng vu&ocirc;ng sẽ rất ph&ugrave; hợp cho những c&ocirc; n&agrave;ng mặt tr&ograve;n bởi ch&uacute;ng gi&uacute;p gương mặt bạn trở n&ecirc;n h&agrave;i h&ograve;a v&agrave; c&acirc;n đối hơn. Gọng k&iacute;nh tr&ograve;n lại rất hợp với những n&agrave;ng mặt vu&ocirc;ng hay g&oacute;c cạnh. Khu&ocirc;n mặt tr&aacute;i tim sẽ ho&agrave;n hảo hơn khi đeo những chiếc k&iacute;nh h&igrave;nh chữ nhật hoặc k&iacute;nh mắt m&egrave;o. C&ograve;n đối với những n&agrave;ng c&oacute; khu&ocirc;n mặt d&agrave;i th&igrave; k&iacute;nh c&oacute; họa tiết điểm nhấn ở phần g&oacute;c tr&ecirc;n gọng chắc chắn sẽ l&agrave; lựa chọn ph&ugrave; hợp nhất.</span></p>
</div>
', N'b3.jpg', N'2', N'2015-09-06 11:02:32.670', null, N'Bạn đang phân vân khi lựa chọn mua quần áo online?, bạn phân vân về chất liệu, kiểu dáng cũng như màu sắc đối với những món đồ bán online trên mạng?, bạn thắc mắc không biết liệu những bộ quần áo khi đặt mua trên mạng có phù hợp với mình không? Vấn đề là ngay cả khi bạn biết rõ kiểu dáng cơ thể mình, chất liệu cũng như kích thước của từng loại quần áo bán online trên mang bạn vẫn có thể bị thất vọng khi nhận được những món đồ mà bạn đặt hàng. Có một số típ chọn đồ online sau đây mà bạn có thể áp dụng để lựa chọn được những trang phục hay phụ kiện ưng ý nhất. ')
GO
GO
INSERT INTO [dbo].[NewsDetail] ([NewsID], [NewsTitle], [NewsContent], [NewsImage], [NewsCateID], [NewsDate], [Status], [NewsDescription]) VALUES (N'5', N'9 típ giúp bạn mua quần áo online hiệu quả', N'<div>&nbsp;</div>

<div>
<p class="p1" style="margin: 0px 0px 10px; line-height: 20px; color: rgb(153, 153, 153); font-family: ''Open Sans'', calibri, Arial, Helvetica, sans-serif;"><span class="s1"><img data-mce-="" src="http://hstatic.net/193/1000016193/10/2015/4-8/b1.jpg" style="height: auto; max-width: 100%; vertical-align: middle; border: 0px; transition: background-color 0.2s ease, border 0.2s ease, color 0.2s ease, opacity 0.2s ease-in-out;" /><br />
<br />
Bạn đang ph&acirc;n v&acirc;n khi lựa chọn mua quần &aacute;o online?, bạn ph&acirc;n v&acirc;n về chất liệu, kiểu d&aacute;ng cũng như m&agrave;u sắc đối với những m&oacute;n đồ b&aacute;n online tr&ecirc;n mạng?, bạn thắc mắc kh&ocirc;ng biết liệu những bộ quần &aacute;o khi đặt mua tr&ecirc;n mạng c&oacute; ph&ugrave; hợp với m&igrave;nh kh&ocirc;ng? Vấn đề l&agrave; ngay cả khi bạn biết r&otilde; kiểu d&aacute;ng cơ thể m&igrave;nh, chất liệu cũng như k&iacute;ch thước của từng loại quần &aacute;o b&aacute;n online tr&ecirc;n mang bạn vẫn c&oacute; thể bị thất vọng khi nhận được những m&oacute;n đồ m&agrave; bạn đặt h&agrave;ng. C&oacute; một số t&iacute;p chọn đồ online sau đ&acirc;y m&agrave; bạn c&oacute; thể &aacute;p dụng để lựa chọn được những trang phục hay phụ kiện ưng &yacute; nhất.&nbsp;</span></p>

<p class="p2" style="margin: 0px 0px 10px; line-height: 20px; color: rgb(153, 153, 153); font-family: ''Open Sans'', calibri, Arial, Helvetica, sans-serif;">&nbsp;</p>

<p class="p1" style="margin: 0px 0px 10px; line-height: 20px; color: rgb(153, 153, 153); font-family: ''Open Sans'', calibri, Arial, Helvetica, sans-serif;"><span class="s1"><strong>1. Đọc kĩ phần ghi ch&uacute; của sản phẩm</strong></span><br />
<br />
Hầu hết c&aacute;c trang web b&aacute;n h&agrave;ng online tr&ecirc;n mạng đều c&oacute; phần ghi ch&uacute; về chất liệu sản phẩm, kiểu d&aacute;ng , m&agrave;u sắc, k&iacute;ch thước&hellip; bạn c&oacute; thể dựa v&agrave;o những số liệu đ&oacute; để &aacute;ng chừng size n&agrave;o c&oacute; ph&ugrave; hợp với m&igrave;nh, bạn cần đặc biệt ch&uacute; &yacute; về chất liệu vải v&agrave; size, n&ecirc;n lựa chọn những chất liệu co d&atilde;n v&igrave; đặc t&iacute;nh của chất liệu co d&atilde;n sẽ dễ d&agrave;ng ph&ugrave; hợp với h&igrave;nh d&aacute;ng k&iacute;ch thước cơ thể kh&aacute;c nhau. Cần tr&aacute;nh lựa chọn những chất liệu vải cứng, co d&atilde;n &iacute;t v&igrave; một khi bạn đ&atilde; kh&ocirc;ng mặc vừa m&oacute;n đồ m&agrave; m&igrave;nh đặt về th&igrave; kh&ocirc;ng c&ograve;n c&aacute;ch n&agrave;o kh&aacute;c l&agrave; phải đem gửi trả lại hoặc đem cho.&nbsp;</p>

<p class="p2" style="margin: 0px 0px 10px; line-height: 20px; color: rgb(153, 153, 153); font-family: ''Open Sans'', calibri, Arial, Helvetica, sans-serif;">&nbsp;</p>

<p class="p1" style="margin: 0px 0px 10px; line-height: 20px; color: rgb(153, 153, 153); font-family: ''Open Sans'', calibri, Arial, Helvetica, sans-serif;"><span class="s1"><strong>2. Kh&ocirc;ng n&ecirc;n mua những loại &aacute;o c&oacute; c&uacute;p ngực</strong>&nbsp;<br />
<br />
Tại sao lại kh&ocirc;ng n&ecirc;n mua những loại &aacute;o c&oacute; phần c&uacute;p ngực? Bởi v&ograve;ng ngực của mỗi người l&agrave; kh&aacute;c nhau, c&oacute; thể th&acirc;n h&igrave;nh bạn hơi mập một ch&uacute;t nhưng v&ograve;ng 1 lại kh&ocirc;ng được đầy đặn hay ngược lại&hellip; Bởi vậy m&agrave; những chiếc &aacute;o c&oacute; phần c&uacute;p ngực may sẵn sẽ kh&ocirc;ng chắc chắn c&oacute; thể &ocirc;m trọn lấy v&ograve;ng 1, từ đ&oacute; ngang nhi&ecirc;n tố c&aacute;o phần ngực kh&ocirc;ng được ưng &yacute; của bạn.<br />
<br />
<img data-mce-="" src="http://hstatic.net/193/1000016193/10/2015/4-8/b2.jpg" style="height: auto; max-width: 100%; vertical-align: middle; border: 0px; transition: background-color 0.2s ease, border 0.2s ease, color 0.2s ease, opacity 0.2s ease-in-out;" /><br />
<br />
<strong>3 . Cần ch&uacute; &yacute; xem th&agrave;nh phần chất liệu vải</strong>&nbsp;<br />
<br />
Khi ngắm quần &aacute;o tr&ecirc;n mạng, kh&ocirc;ng phải l&uacute;c n&agrave;o bạn cũng c&oacute; thể đo&aacute;n được chất liệu của ch&uacute;ng trong khi loại v&agrave; chất lượng vải của quần &aacute;o lại rất quan trọng. V&igrave; thế bạn cần trang bị cho m&igrave;nh những kiến thức về c&aacute;c một số th&agrave;nh phần cơ bản hay c&oacute; trong chất liệu vải để c&oacute; thể nhận biết được loại vải n&agrave;o thấm h&uacute;t mồ h&ocirc;i, loại vải n&agrave;o dễ bị nhăn, loại vải n&agrave;o kh&ocirc;ng co d&atilde;n, loại vải n&agrave;o ph&ugrave; hợp thời tiết&hellip; Tất cả những th&ocirc;ng tin n&agrave;y đều được ghi rất r&otilde; r&agrave;ng ở mục COMPOSITION b&ecirc;n cạnh c&aacute;c sản phẩm.<br />
<br />
<strong>4 . Nắm r&otilde; kiểu d&aacute;ng khu&ocirc;n mặt để lựa chọn mắt k&iacute;nh ph&ugrave; hợp</strong>&nbsp;<br />
<br />
Bạn cần nắm r&otilde; kiểu d&aacute;ng khu&ocirc;n mặt m&igrave;nh để lựa chọn được những chiếc k&iacute;nh ph&ugrave; hợp với m&igrave;nh .Những chiếc k&iacute;nh oval, gọng vu&ocirc;ng sẽ rất ph&ugrave; hợp cho những c&ocirc; n&agrave;ng mặt tr&ograve;n bởi ch&uacute;ng gi&uacute;p gương mặt bạn trở n&ecirc;n h&agrave;i h&ograve;a v&agrave; c&acirc;n đối hơn. Gọng k&iacute;nh tr&ograve;n lại rất hợp với những n&agrave;ng mặt vu&ocirc;ng hay g&oacute;c cạnh. Khu&ocirc;n mặt tr&aacute;i tim sẽ ho&agrave;n hảo hơn khi đeo những chiếc k&iacute;nh h&igrave;nh chữ nhật hoặc k&iacute;nh mắt m&egrave;o. C&ograve;n đối với những n&agrave;ng c&oacute; khu&ocirc;n mặt d&agrave;i th&igrave; k&iacute;nh c&oacute; họa tiết điểm nhấn ở phần g&oacute;c tr&ecirc;n gọng chắc chắn sẽ l&agrave; lựa chọn ph&ugrave; hợp nhất.</span></p>
</div>
', N'b1.jpg', N'2', N'2015-09-06 11:03:25.147', null, N'Bạn đang phân vân khi lựa chọn mua quần áo online?, bạn phân vân về chất liệu, kiểu dáng cũng như màu sắc đối với những món đồ bán online trên mạng?, bạn thắc mắc không biết liệu những bộ quần áo khi đặt mua trên mạng có phù hợp với mình không? Vấn đề là ngay cả khi bạn biết rõ kiểu dáng cơ thể mình, chất liệu cũng như kích thước của từng loại quần áo bán online trên mang bạn vẫn có thể bị thất vọng khi nhận được những món đồ mà bạn đặt hàng. Có một số típ chọn đồ online sau đây mà bạn có thể áp dụng để lựa chọn được những trang phục hay phụ kiện ưng ý nhất. ')
GO
GO
SET IDENTITY_INSERT [dbo].[NewsDetail] OFF
GO

-- ----------------------------
-- Table structure for OrderDetails
-- ----------------------------
-- DROP TABLE [dbo].[OrderDetails]
GO
CREATE TABLE [dbo].[OrderDetails] (
[ProductID] int NOT NULL ,
[Quantity] smallint NOT NULL ,
[OrderID] int NOT NULL ,
[OrderDetailID] int NOT NULL IDENTITY(1,1) 
)


GO
DBCC CHECKIDENT(N'[dbo].[OrderDetails]', RESEED, 2137)
GO

-- ----------------------------
-- Records of OrderDetails
-- ----------------------------
SET IDENTITY_INSERT [dbo].[OrderDetails] ON
GO
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 1064, 1058)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 7, 2064, 2057)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2064, 2058)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 1, 2065, 2059)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2066, 2060)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 7, 2066, 2061)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 7, 2067, 2063)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2067, 2064)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 1, 2067, 2065)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2068, 2066)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 7, 2068, 2067)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 13, 2068, 2068)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 6, 2069, 2069)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2069, 2070)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 7, 2069, 2071)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 36, 2069, 2072)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 7, 2070, 2073)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 10, 2070, 2074)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 9, 2070, 2075)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2070, 2076)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2071, 2079)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 8, 2071, 2080)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 7, 2071, 2081)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 6, 2071, 2082)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 38, 2072, 2085)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 36, 2072, 2087)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2072, 2088)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 7, 2072, 2089)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (21, 1, 2080, 2108)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 2, 2088, 2121)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 1, 2089, 2122)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 2, 2101, 2133)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (17, 3, 2105, 2136)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (21, 2, 2105, 2137)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 1, 2106, 2138)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 1, 2107, 2139)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 2, 2108, 2140)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (17, 3, 2109, 2141)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (21, 1, 2110, 2142)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (22, 1, 2111, 2143)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (37, 1, 2112, 2144)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (39, 1, 2113, 2145)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (60, 1, 2114, 2146)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (55, 1, 2115, 2147)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (58, 1, 2116, 2148)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (54, 1, 2117, 2149)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (46, 4, 2118, 2150)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (41, 3, 2119, 2151)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (22, 5, 2120, 2152)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (21, 3, 2121, 2153)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (42, 5, 2122, 2154)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (20, 10, 2123, 2155)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (17, 17, 2124, 2156)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (41, 1, 2125, 2157)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2126, 2158)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (38, 1, 2127, 2159)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (60, 3, 2128, 2160)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2129, 3000)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 7, 2130, 3001)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2131, 3002)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 1, 2132, 3003)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2133, 3004)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 7, 2134, 3005)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 7, 2135, 3006)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2136, 3007)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (18, 1, 2137, 3008)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2138, 3009)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2139, 3010)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2140, 3011)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2141, 3012)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2142, 3014)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2143, 3015)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2144, 3016)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2145, 3017)
INSERT [dbo].[OrderDetails] ([ProductID], [Quantity], [OrderID], [OrderDetailID]) VALUES (12, 5, 2146, 3018)
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO

-- ----------------------------
-- Table structure for Orders
-- ----------------------------
-- DROP TABLE [dbo].[Orders]
GO
CREATE TABLE [dbo].[Orders] (
[OrderID] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[OrderDate] datetime NOT NULL ,
[OrderName] nvarchar(100) NOT NULL ,
[OrderAddress] nvarchar(200) NOT NULL ,
[OrderMobile] nvarchar(12) NOT NULL ,
[OrderStatus] smallint NULL ,
[Status] smallint NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Orders]', RESEED, 2105)
GO

-- ----------------------------
-- Records of Orders
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Orders] ON
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2106, 7, CAST(N'2016-12-15 00:23:20.460' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2107, 7, CAST(N'2016-11-15 00:23:59.047' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2108, 7, CAST(N'2016-10-15 00:24:19.407' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2109, 7, CAST(N'2016-09-15 00:24:39.697' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2110, 7, CAST(N'2016-08-15 00:24:52.737' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2111, 7, CAST(N'2016-07-15 00:25:12.143' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2112, 7, CAST(N'2016-06-15 00:25:28.030' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2113, 7, CAST(N'2016-05-15 00:25:45.013' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2114, 7, CAST(N'2016-04-15 00:26:00.203' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2115, 7, CAST(N'2016-03-15 00:26:17.067' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2116, 7, CAST(N'2016-02-15 00:26:31.003' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2117, 7, CAST(N'2016-01-15 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (1064, 8, CAST(N'2017-01-30 14:18:10.723' AS DateTime), N'Lương Tấn Chức', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000011', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2064, 17, CAST(N'2017-02-02 09:05:24.147' AS DateTime), N'Phạm Tân Yên', N'TP Hồ Chí Minh', N'0966991144', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2065, 17, CAST(N'2017-08-02 09:08:26.357' AS DateTime), N'Phạm Tân Yên', N'TP Hồ Chí Minh', N'0966991144', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2066, 17, CAST(N'2017-03-02 09:52:06.617' AS DateTime), N'Phạm Tân Yên', N'TP Hồ Chí Minh', N'0966991144', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2067, 17, CAST(N'2017-07-02 09:53:16.320' AS DateTime), N'Phạm Tân Yên', N'TP Hồ Chí Minh', N'0966991144', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2068, 17, CAST(N'2017-04-02 10:00:29.830' AS DateTime), N'Phạm Tân Yên', N'TP Hồ Chí Minh', N'0966991144', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2069, 17, CAST(N'2017-05-02 10:02:20.957' AS DateTime), N'Phạm Tân Yên', N'TP Hồ Chí Minh', N'0966991144', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2070, 17, CAST(N'2017-06-02 10:07:16.810' AS DateTime), N'Phạm Tân Yên', N'TP Hồ Chí Minh', N'0966991144', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2071, 17, CAST(N'2017-09-02 10:12:28.390' AS DateTime), N'Phạm Tân Yên', N'TP Hồ Chí Minh', N'0966991144', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2072, 17, CAST(N'2017-10-02 10:13:47.750' AS DateTime), N'Phạm Tân Yên', N'TP Hồ Chí Minh', N'0966991144', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2080, 15, CAST(N'2017-11-02 16:25:27.687' AS DateTime), N'Nguyễn Đình Huy', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'0969777529', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2088, 16, CAST(N'2017-12-02 16:45:45.170' AS DateTime), N'Trần Đức Hòa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'1234567890', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2089, 16, CAST(N'2017-06-02 16:49:36.497' AS DateTime), N'Trần Đức Hòa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'1234567890', -1, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2101, 17, CAST(N'2017-09-02 17:29:37.900' AS DateTime), N'Phạm Tân Yên', N'TP Hồ Chí Minh', N'0966991144', 1, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2105, 7, CAST(N'2017-09-07 12:24:39.507' AS DateTime), N'Nguyễn Cảnh Khánh Trình', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 0, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2118, 15, CAST(N'2017-02-13 20:17:57.917' AS DateTime), N'Anh Khoa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'0969777529', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2119, 15, CAST(N'2017-03-13 20:22:59.683' AS DateTime), N'Anh Khoa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'0969777529', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2120, 15, CAST(N'2017-04-13 20:31:03.167' AS DateTime), N'Anh Khoa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'0969777529', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2121, 15, CAST(N'2017-05-13 20:51:41.877' AS DateTime), N'Anh Khoa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'0969777529', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2122, 15, CAST(N'2017-06-13 20:53:43.403' AS DateTime), N'Anh Khoa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'0969777529', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2123, 15, CAST(N'2017-07-13 20:54:24.127' AS DateTime), N'Anh Khoa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'0969777529', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2124, 15, CAST(N'2017-08-13 20:55:05.853' AS DateTime), N'Anh Khoa', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'0969777529', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2125, 16, CAST(N'2017-09-13 20:55:44.313' AS DateTime), N'Phi Bằng', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'1234567890', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2126, 16, CAST(N'2017-10-13 20:56:22.170' AS DateTime), N'Phi Bằng', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'1234567890', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2127, 16, CAST(N'2017-11-13 20:57:32.020' AS DateTime), N'Phi Bằng', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'1234567890', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) VALUES (2128, 16, CAST(N'2017-12-13 20:58:15.503' AS DateTime), N'Phi Bằng', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'1234567890', 2, NULL)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) 
VALUES (2129, 7, CAST(N'2017-01-15 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status])
VALUES (2130, 7, CAST(N'2017-01-18 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) 
VALUES (2131, 7, CAST(N'2017-01-22 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) 
VALUES (2132, 7, CAST(N'2017-01-28 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status])
VALUES (2133, 7, CAST(N'2017-01-30 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) 
VALUES (2134, 7, CAST(N'2017-02-03 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status])
VALUES (2135, 7, CAST(N'2017-02-13 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status])
VALUES (2136, 7, CAST(N'2017-02-23 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) 
VALUES (2137, 7, CAST(N'2017-03-10 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) 
VALUES (2138, 7, CAST(N'2017-03-25 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status])
VALUES (2139, 7, CAST(N'2017-04-25 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status])
VALUES (2140, 7, CAST(N'2017-05-25 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) 
VALUES (2141, 7, CAST(N'2017-06-25 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status])
VALUES (2142, 7, CAST(N'2017-08-25 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status]) 
VALUES (2143, 7, CAST(N'2017-09-25 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status])
VALUES (2144, 7, CAST(N'2017-10-25 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status])
VALUES (2145, 7, CAST(N'2017-11-25 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [OrderName], [OrderAddress], [OrderMobile], [OrderStatus], [Status])
VALUES (2146, 7, CAST(N'2017-12-25 00:26:43.790' AS DateTime), N'Ngọc Quý', N'30/14 Nguyễn Văn Công - Gò Vấp - Thành Phố Hồ Chí Minh', N'01685000113', 2, 100)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO

-- ----------------------------
-- Table structure for Products
-- ----------------------------
-- DROP TABLE [dbo].[Products]
GO
CREATE TABLE [dbo].[Products] (
[ProductID] int NOT NULL IDENTITY(1,1) ,
[ProductName] nvarchar(200) NOT NULL ,
[CategoryID] int NOT NULL ,
[BrandID] int NOT NULL ,
[ProductPrice] bigint NOT NULL ,
[ProductDetails] ntext NULL ,
[Quantity] int NOT NULL ,
[ThumbImage] varchar(200) NULL ,
[OrderCount] int NULL ,
[Status] smallint NULL,
[ImportDate] datetime
)


GO
DBCC CHECKIDENT(N'[dbo].[Products]', RESEED, 61)
GO

-- ----------------------------
-- Records of Products
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Products] ON
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'12', N'Boot Black', N'13', N'14', N'480000', N'Không có mô tả cho sản phẩm này.', N'15', N'img_product_6_large.jpg', N'6', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'15', N'Pretty Dresses', N'19', N'7', N'780000', N'Beatiful dresses .', N'7', N'img_product_3_large.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'16', N'New Boot', N'48', N'5', N'670000', N'Ladies Boot brown', N'4', N'sp_4_1_large.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'17', N'Boot Brown', N'41', N'6', N'590000', N'New Boot in the Winter.', N'27', N'img_giay_1_large.jpg', N'2', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'18', N'Dresses in Spring', N'19', N'6', N'320000', N'Không có mô tả cho sản phẩm này.', N'12', N'img_product_4_large.jpg', N'5', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'19', N'Nike''s Hat', N'16', N'13', N'130000', N'This is a new Hat in Summer 2015.', N'5', N'converse-2298-930714-1.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'20', N'Ken''s Hat', N'16', N'7', N'140000', N'New Hat in Summer 2015.', N'30', N'converse-2303-830714-1.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'21', N'Sunglasses', N'15', N'6', N'450000', N'Sunglasses in this Summer 2015.', N'9', N'ray-ban-7735-681843-1.jpg', N'2', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'22', N'Caribie Belts', N'30', N'6', N'780000', N'Không có mô tả cho sản phẩm này.', N'12', N'24-01-5655-581883-1.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'37', N'EMPORIO ARMANI WATCH', N'46', N'12', N'2800000', N'This watch is supplied with:

- Official Emporio Armani presentation box
- Official Emporio Armani guarantee
- Instruction manual (where applicable)
- 139 Reward points', N'5', N'99955995_v_1423883964.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'38', N' CHRONOGRAPH WATCH', N'46', N'16', N'3800000', N'This watch is supplied with:

- Official Emporio Armani presentation box
- Official Emporio Armani guarantee
- Instruction manual (where applicable)
- 237 Reward points', N'7', N'99933242_v_1423880987.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'39', N'MEN''S EMPORIO ARMANI ', N'46', N'16', N'3400000', N'This watch is supplied with:

- Official Emporio Armani presentation box
- Official Emporio Armani guarantee
- Instruction manual (where applicable)
- 237 Reward points', N'9', N'99935224_v_1423896267.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'40', N'LADIES'' MICHAEL KORS ', N'47', N'16', N'3500000', N'This watch is supplied with:

- Official Michael Kors presentation box
- Official Michael Kors guarantee
- Instruction manual (where applicable)
- 171 Reward points', N'6', N'99944281_v_1423897973.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'41', N'LADIES'' MICHAEL KORS ', N'47', N'16', N'2800000', N'This watch is supplied with:

- Official Michael Kors presentation box
- Official Michael Kors guarantee
- Instruction manual (where applicable)
- 169 Reward points', N'12', N'99939772_v_1423914827.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'42', N'Marina Fuschia Canvas', N'45', N'10', N'2500000', N'Grab hold of easygoing style with this breezy canvas carryall that makes the here-to-there a little lighter. Trimmed in rich leather with swishy tassel detailing, the rope drawstring adds nautical charm. By MICHAEL Michael Kors.
MICHAEL Michael Kors bag
Canvas; trim: leather
Double top handles with 6-1/2" -- DROP
Magnetic closure
Gold-tone hardware; tassel detailing; logo medallion charm
Interior features zip pocket, 2 slip pockets and key keeper
13" W x 11" H x 6-1/2" D
Michael Kors care card included
Michael Kors tag attached
Stored in a Smoke-Free Environment
Gift bag available upon request', N'5', N'$_35.JPG', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'43', N'Jet Set Sun Yellow Saffiano', N'45', N'10', N'1800000', N'With several compartments and space to spare, this chic tote from MICHAEL Michael Kors™ is not only stylish, it''s practical!
Saffiano leather tote with leather accents.
Top zip closure.
Buckled shoulder straps.
Side exterior slip pockets.
Silver tone hardware
Monogram lining.
Interior features a back-wall zip pocket, four slip pockets, and a key fob.
Imported.
MSRP: $248.00 + tax
Measurements:
Bottom Width: 11 in
Depth: 4 3⁄4 in
Height: 10 in
Strap Length: 22 in
Strap -- DROP: 9 1⁄2 in
Weight: 1 lb 5 oz', N'7', N'$_12.JPG', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'44', N'Michael Kors Mustard Yellow', N'45', N'11', N'1500000', N'Vip bags informations.', N'9', N'$_12 (1).JPG', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'45', N'Leather Shoulder Tote Bag', N'44', N'11', N'1800000', N'Brand Name	Coach
Item Description	Red Leather Shoulder Tote Bag
Colour	Red
Material	Leather
Size	W14 x H13 x D6 Inches
Pockets	Inner: Zipper Pocketx1,Pocketx2/ Exterior: Zipper Pocketx1', N'12', N'$_12 (2).JPG', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'46', N'Shoulder Hand Bag Black', N'44', N'11', N'1800000', N'Brand Name	Coach
Item Description	Black Leather Shoulder Hand Bag
Colour	Black
Material	Leather
Size	W14 x H8 x D6inches
Pockets	Inner: zipper pocket x1/ Exterior: pocket x2
Accessories	Shoulder Strap', N'12', N'$_12 (3).JPG', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'47', N'Shoulder Tote Bag', N'44', N'11', N'1600000', N'Brand Name	Coach
Item Description	Brown Leather Shoulder Tote Bag
Colour	Brown
Material	Leather
Size	W15.5 x H12 x D4.5 Inches
Pockets	Inner: Zipper Pocketx1, Pocketx5/ Exterior: Zipper Pocketx1, Pocketx1
Accessories	Original Dust Bag, Strap', N'15', N'$_12 (4).JPG', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'48', N'Galaxy Vans Shoes', N'40', N'15', N'400000', N'Custom Hand Painted Galaxy on Vans Authentic', N'17', N'251884110.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'49', N'Painted Native Eagle Feather', N'40', N'15', N'400000', N'Không có mô tả cho sản phẩm.', N'13', N'261772957.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'50', N'VANS Sk8', N'40', N'15', N'450000', N'Vans Sk8-Hi shoes. The Canvas Sk8-Hi, the legendary lace-up high top inspired by the Vans classic Old Skool, features sturdy canvas uppers, re-enforced toecaps to withstand repeated wear, signature waffle rubber outsoles, and padded collar and heel counters for support and flexibility. Imported.', N'14', N'261769300.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'51', N'VANS Vintage Aloha Sk-8', N'40', N'15', N'450000', N'Vans Canvas Sk8-Hi, the legendary lace-up high top inspired by the Vans classic Old Skool, features sturdy canvas uppers, re-enforced toecaps to withstand repeated wear, signature waffle rubber outsoles, and padded collar and heel counters for support and flexibility. Imported.', N'15', N'261767200.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'52', N'Oakley Troy Lee Bread Box', N'15', N'11', N'450000', N'BRAND	Oakley
MODEL	Troy Lee Signature Bread Box
GENDER	Men
FRAME COLOR	Black
LENS COLOR	Gray
SIZE	56-15-136
MADE IN	USA', N'15', N'$_12 (5).JPG', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'53', N'Camel knitted trim coatigan', N'12', N'11', N'1200000', N'Part jacket, part cardigan, this cosy heavyweight coatigan will fill a gap in your trans-seasonal wardrobe. Complete with two pockets and a plush faux-fur trim, it''s perfect for snuggling up in. Our model wears a UK 8 and is 175cm/5''9'''' tall.', N'15', N'673185_main.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'54', N'Light grey sleeveless coat', N'12', N'6', N'1500000', N'Look to this tailored grey sleeveless coat to smarten your everyday outfits. Complete with a double-breasted front and two slit pockets, it''ll make a sophisticated addition to your weekday rotation. Our model wears a UK 8 and is 175cm/5''9'''' tall.', N'12', N'673985_main.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'55', N'Black leather faux fur biker', N'12', N'6', N'1500000', N'This plush black leather-look jacket boasts glamour and grunge styling in equal measures. Its soft faux fur collar is detachable, meaning it can be worn to suit your look. Our model wears a UK 8 and is 178cm/5''10'''' tall.', N'12', N'668369_main.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'56', N'Glamour Kills Young Wild', N'32', N'6', N'450000', N't-shirt women''s', N'12', N'glamour-kills-young-wild-free-v-neck-t-shirt-women-s-heather-grey-front.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'57', N'Angel wings women''s White', N'32', N'6', N'450000', N'T-Shirt Women', N'12', N'Shirt1.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'58', N'Women''s The Dreamer Boot', N'35', N'7', N'650000', N'Jeans for ladies.', N'12', N'womens-the-dreamer-boot-cut-jeans-jet.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'59', N'Womens Navy Blue Jeans', N'35', N'6', N'650000', N'Jeans for Ladies', N'15', N'womens-navy-blue-skinny-jeans-p19859-20535_zoom.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'60', N'The pleasingly of Christian', N'13', N'14', N'900000', N'The pleasingly world of Christian', N'15', N'christian-dior-fall-2011-20-shoes.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (N'61', N'Galaxy on Vans Authentic', N'13', N'14', N'450000', N'Galaxy on Vans Authentic', N'13', N'261769300.jpg', N'0', null,N'2017-01-01 14:18:10.723')
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (62, N'Justin Biber Fashion', 31, 12, 1500000, N'Justin Biber Fashion for men', 50, N'product2_66b9b837-5689-477d-57f1-8fdb6d00228c_large_1.jpg', 0, NULL, CAST(N'2017-02-12 14:28:34.940' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (63, N'Nino Max', 36, 13, 500000, N'Shorts for woman beatiful girl', 10, N'img_product_3_large.jpg', 0, NULL, CAST(N'2017-03-12 14:30:27.553' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (64, N'T-Shirt for Man', 33, 5, 800000, N'T-Shirt for Man still style', 15, N'img_product_5_large.jpg', 0, NULL, CAST(N'2017-04-12 14:32:25.173' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (65, N'Nike T-Shirt', 42, 13, 2500000, N'Nike T-Shirt for unisex welcome Spring all everyone', 20, N'sp_2_1_large.jpg', 0, NULL, CAST(N'2017-05-17 14:34:25.377' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (66, N'Shoe Untra', 40, 15, 750000, N'Shoe Untra all size to 40-45', 15, N'261769300.jpg', 0, NULL, CAST(N'2017-06-20 14:35:37.263' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (67, N'Untra Boot', 48, 5, 2500000, N'Untra Boot all size 39-44', 10, N'251884110.jpg', 0, NULL, CAST(N'2017-07-21 14:36:28.707' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (68, N'Dress Sleep', 41, 6, 150000, N'Dress Sleep comfortable', 20, N'img_product_4_large_1.jpg', 0, NULL, CAST(N'2017-08-24 14:38:12.717' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (69, N'Boot Brown', 41, 6, 590000, N'New Boot in the Winter.', 27, N'img_giay_1_large.jpg', 0, NULL, CAST(N'2017-02-24 14:40:31.967' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (70, N'Nike Hat', 42, 13, 2000000, N'Nike Hat for everyone', 30, N'converse-2303-830714-1.jpg', 0, NULL, CAST(N'2017-02-24 14:42:48.267' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (71, N'Sunglasses', 15, 11, 2500000, N'Sunglasses', 15, N'$_12 (5).JPG', 0, NULL, CAST(N'2017-02-24 14:44:40.183' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (72, N'VANS Vintage Aloha Sk-8', 40, 15, 450000, N'VANS Vintage Aloha Sk-8', 50, N'261767200.jpg', 0, NULL, CAST(N'2017-03-24 14:45:58.533' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (73, N'Tran Dinh Khang Duy', 32, 10, 500000, N'Tran Dinh Khang Duy Store', 8, N'668369_main.jpg', 2, NULL, CAST(N'2018-01-14 12:18:52.660' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (74, N'MEN''S EMPORIO ARMANI', 34, 5, 3500000, N'MEN''S EMPORIO ARMANI', 25, N'99935224_v_1423896267.jpg', 0, NULL, CAST(N'2017-09-17 13:01:26.800' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (75, N'Sunglasses', 15, 15, 450000, N'Sunglasses', 50, N'$_12 (5).JPG', 0, NULL, CAST(N'2017-09-17 13:02:12.920' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (76, N'LADIES'' MICHAEL KORS', 47, 16, 3500000, N'LADIES'' MICHAEL KORS', 50, N'99944281_v_1423897973.jpg', 0, NULL, CAST(N'2017-10-17 13:04:06.097' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (77, N'Shoulder Hand Bag Black', 45, 13, 1800000, N'Shoulder Hand Bag Black', 25, N'$_12 (3).JPG', 0, NULL, CAST(N'2017-10-17 13:04:37.330' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (78, N'Pretty Dresses', 19, 7, 780000, N'Pretty Dresses', 100, N'img_product_3_large.jpg', 0, NULL, CAST(N'2017-11-17 13:05:25.370' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (79, N'Jet Set Sun Yellow Saffiano', 45, 7, 1800000, N'Jet Set Sun Yellow Saffiano', 30, N'$_12.JPG', 0, NULL, CAST(N'2017-11-17 13:05:54.377' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (80, N'New Boot', 48, 5, 670000, N'New Boot New', 30, N'img_giay_1_large.jpg', 0, NULL, CAST(N'2017-12-17 13:07:29.157' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [BrandID], [ProductPrice], [ProductDetails], [Quantity], [ThumbImage], [OrderCount], [Status], [ImportDate]) VALUES (81, N'EMPORIO ARMANI WATCH', 46, 16, 3500000, N'EMPORIO ARMANI WATCH', 25, N'99933242_v_1423880987.jpg', 0, NULL, CAST(N'2017-12-17 13:08:02.297' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Products] OFF

-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
-- DROP TABLE [dbo].[sysdiagrams]
GO
CREATE TABLE [dbo].[sysdiagrams] (
[name] sysname NOT NULL ,
[principal_id] int NOT NULL ,
[diagram_id] int NOT NULL IDENTITY(1,1) ,
[version] int NULL ,
[definition] varbinary(MAX) NULL 
)


GO

-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sysdiagrams] ON
GO
INSERT INTO [dbo].[sysdiagrams] ([name], [principal_id], [diagram_id], [version], [definition]) VALUES (N'Diagram_0', N'1', N'1', N'1', 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000000100000000000000001000000200000001000000FEFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF19000000FEFFFFFF0400000005000000060000000700000028000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000FEFFFFFFFEFFFFFF1B0000001C0000001D0000001E0000001F0000002000000021000000220000002300000024000000250000002600000027000000FEFFFFFF29000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF0200000000000000000000000000000000000000000000000000000000000000A00B787A62D2D00103000000400D0000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000052080000000000006F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000FFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000080000006820000000000000010043006F006D0070004F0062006A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000220000005F000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F0000002000000021000000FEFFFFFF23000000FEFFFFFFFEFFFFFF260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F00000030000000310000003200000033000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000434000A1F500C050000801A0000000D0FFFFF4B0000001A000000007D000087660000CB440000B58900003A75000034EFFFFFE3200000DE805B10F195D011B0A000AA00BDCB5C000008003000000000020000030000003C006B0000000900000000000000D9E6B0E91C81D011AD5100A0C90F5739F43B7F847F61C74385352986E1D552F8A0327DB2D86295428D98273C25A2DA2D00002800430000000000000053444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C00002800430000000000000051444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C1A0000005C070000009A011000003000A509000007000080010000009E02000000800000060000805363684772696400D0200000345300004272616E6473640000003000A50900000700008002000000A2020000008000000800008053636847726964003A2000003264000043617465676F727900003000A50900000700008003000000A20200000080000008000080536368477269647900000000A0410000436F6D6D656E747300003000A50900000700008004000000A002000000800000070000805363684772696473DE3F0000EA240000436F6E746163747300003400A50900000700008005000000A40200000080000009000080536368477269647300000000EA240000437573746F6D65727300000000007800A50900000700008006000000520000000180000050000080436F6E74726F6C00E30B00003F3C000052656C6174696F6E736869702027464B5F5F436F6D6D656E74735F5F437573746F6D5F5F323043314531323427206265747765656E2027437573746F6D6572732720616E642027436F6D6D656E74732700002800B50100000700008007000000310000006F00000002800000436F6E74726F6C00290E0000A13F000000003000A50900000700008008000000A202000000800000080000805363684772696473DE3F0000345300004E6577734361746500003400A50900000700008009000000A6020000008000000A0000805363684772696400DE3F00006C3900004E65777344657461696C000000003400A5090000070000800A000000AA020000008000000C000080536368477269640066210000483F00004F7264657244657461696C7300003000A5090000070000800B0000009E0200000080000006000080536368477269640066210000EA2400004F7264657273640000007C00A5090000070000800C000000520000000180000051000080436F6E74726F6C00CD300000EE39000052656C6174696F6E736869702027464B5F5F4F72646572446574615F5F4F524445525F5F323241413239393627206265747765656E20274F72646572732720616E6420274F7264657244657461696C732700000000002800B5010000070000800D000000310000006F00000002800000436F6E74726F6C0013330000473D000000007800A5090000070000800E00000052000000018000004E000080436F6E74726F6C655D1A00003730000052656C6174696F6E736869702027464B5F5F4F72646572735F5F437573746F6D65725F5F323439323732303827206265747765656E2027437573746F6D6572732720616E6420274F726465727327732700002800B5010000070000800F000000310000006F00000002800000436F6E74726F6C001C120000CC2F000000003000A50900000700008010000000A2020000008000000800008053636847726964656AFFFFFFB856000050726F647563747300007800A5090000070000801100000052000000018000004F000080436F6E74726F6C73E30B0000AE4F000052656C6174696F6E736869702027464B5F5F436F6D6D656E74735F5F50726F6475635F5F323142363035354427206265747765656E202750726F64756374732720616E642027436F6D6D656E7473272700002800B50100000700008012000000310000006F00000002800000436F6E74726F6C73290E00009953000000007C00A50900000700008013000000620000000180000053000080436F6E74726F6C73C7190000474B000052656C6174696F6E736869702027464B5F5F4F72646572446574615F5F50726F64755F5F323339453444434627206265747765656E202750726F64756374732720616E6420274F7264657244657461696C73275B00002800B50100000700008014000000310000006F00000002800000436F6E74726F6C73D91F00008E55000000007800A509000007000080150000005A000000018000004D000080436F6E74726F6C00C7190000475D000052656C6174696F6E736869702027464B5F5F50726F64756374735F5F4272616E64495F5F323538363936343127206265747765656E20274272616E64732720616E64202750726F64756374732773272700002800B50100000700008016000000310000006F00000002800000436F6E74726F6C73D7230000F361000000007800A5090000070000801700000052000000018000004F000080436F6E74726F6C73C7190000916C000052656C6174696F6E736869702027464B5F5F50726F64756374735F5F43617465676F5F5F323637414241374127206265747765656E202743617465676F72792720616E64202750726F6475637473270000002800B50100000700008018000000310000006F00000002800000436F6E74726F6C0057150000266C000000007400A50900000700008019000000520000000180000049000080436F6E74726F6C00FF490000AF4C000052656C6174696F6E736869702027464B5F4E65777344657461696C5F4E6577734361746527206265747765656E20274E657773436174652720616E6420274E65777344657461696C27007D0000002800B5010000070000801A000000310000005F00000002800000436F6E74726F6C73913D0000A6500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100FEFF030A0000FFFFFFFF00000000000000000000000000000000170000004D6963726F736F66742044445320466F726D20322E300010000000456D626564646564204F626A6563740000000000F439B271000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000004E61BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F573900000200C0B3697A62D2D0010202000010484500000000000000000000000000000000007A0100004400610074006100200053006F0075007200630065003D004B00480041004E0048005400520049004E0048003B0049006E0069007400690061006C00200043006100740061006C006F0067003D005400650061006D0031003B005000650072007300690073007400200053006500630075007200690074007900200049006E0066006F003D0054002143341208000000551C0000CA0C00007856341207000000140100004200720061006E00640073000000780070006C006F007200650072002C002000560065007200730069006F006E003D00310031002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D0038003900380034003500640063006400380030003800300063006300390031000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000018030000E4030000B80200003C060000DC05000084030000DC050000740700001C0500000000000001000000551C0000CA0C000000000000030000000300000002000000020000001C010000C80D000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000070000004200720061006E006400730000002143341208000000531D0000540E0000785634120700000014010000430061007400650067006F007200790000006100770069006E0067002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D0062003000330066003500660037006600310031006400350030006100330061000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000018030000E4030000B80200003C060000DC05000084030000DC050000740700001C0500000000000001000000531D0000540E000000000000030000000300000002000000020000001C010000580E000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000009000000430061007400650067006F007200790000002143341208000000891B0000C910000078563412070000001401000043006F006D006D0065006E00740073000000A95260D921050600C7001D0000007C21C31034E45C0CC8079C0087000000A8000000E8000000A0C8A510130000008E000000A04DB91000009C00000000007300000028029C000C0F9C00080F9C00504DB910C8E45C0CA134CE77E000000000000000770000001842A610D834CE770000C70000000000E80000000800080002000000E00000000000000090E45C0C851DCF7728E95C0C00000000000000000000C7000000C700A8E45C0C9211786B0000C7000000000008B7B9101842A610B4E45C0CB711786B08B7B910C8E45C0CC811786B0000000008B7B9101443000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000018030000E4030000B80200003C060000DC05000084030000DC050000740700001C0500000000000001000000891B0000C910000000000000050000000500000002000000020000001C0100005C0D000000000000010000003A1800006B0A000000000000030000000300000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000900000043006F006D006D0065006E007400730000002143341208000000891B0000C910000078563412070000001401000043006F006E0074006100630074000000020000001A00000001000000100000002200000007000000020000002F0000000900000010000000320000000E000000020000004000000014000000100000004200000019000000020000004A0000001C000000100000005200000022000000020000005A00000023000000100000008D0000003700000010000000940000003C00000010000000990000004100000000000000AE0000004600000000000000C60000004900000002000000CC0000004C00000002000000CF0000004D00000010000000D50000005200000002000000D8000000FFFFFFFF02000000F400000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000018030000E4030000B80200003C060000DC05000084030000DC050000740700001C0500000000000001000000891B0000C910000000000000050000000500000002000000020000001C0100005C0D000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000800000043006F006E00740061006300740000002143341208000000891B00000C1A000078563412070000001401000043007500730074006F006D006500720073000000010607000000C7001D0000007C21C31024DFB200C8079C008B000000CC000000E8000000A0C8A5100A0000008E000000A04DB91000009C00000000006A00000028029C000C0F9C00080F9C0028A3B110B8DFB200A134CE77E00000000000000077000000C8D7D600D834CE770000C70000000000E80000000B00050002000000E00000000000000080DFB200851DCF7718E4B20000000000000000000000C7000000C70098DFB2009211786B0000C70000000000F8F5B910C8D7D600A4DFB200B711786BF8F5B910B8DFB200C811786B00000000F8F5B9106478000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000002340000831E0000000000002D0100000B0000000C000000070000001C010000880B00006C09000018030000E4030000B80200003C060000DC05000084030000DC050000740700001C0500000000000001000000891B00000C1A000000000000090000000900000002000000020000001C0100005C0D000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000A00000043007500730074006F006D00650072007300000002000B007A0D0000F63E00007A0D0000A04100000000000002000000F0F0F00000000000000000000000000000000000010000000700000000000000290E0000A13F00008E13000053010000320000000100000200008E130000530100000200000000000500008008000080010000001500010000009001B0300100065461686F6D611E0046004B005F005F0043006F006D006D0065006E00740073005F005F0043007500730074006F006D005F005F00320030004300310045003100320034002143341208000000891B0000280C00007856341207000000140100004E0065007700730043006100740065000000500072006F006700720061006D002000460069006C00650073002000280078003800360029002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100310030002F0054006F006F006C0073002F00420069006E006E002F004D0061006E006100670065006D0065006E007400530074007500640069006F002F004900440045002F0053007400610072007400500061006700650041007300730065006D0062006C006900650073002F0065006E002F004D006900630072006F0073006F00660074002E00000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000018030000E4030000B80200003C060000DC05000084030000DC050000740700001C0500000000000001000000891B0000280C000000000000030000000300000002000000020000001C0100005C0D000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000090000004E006500770073004300610074006500000021433412080000009E1B0000FE1500007856341207000000140100004E00650077007300440065007400610069006C0000006F006700720061006D002000460069006C00650073002000280078003800360029002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100310030002F0054006F006F006C0073002F00420069006E006E002F004D0061006E006100670065006D0065006E007400530074007500640069006F002F0045007800740065006E00730069006F006E0073002F004100700070006C00690063006100740069006F006E002F0065006E002F004D006900630072006F0073006F00660074002E005300000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000023400000C1A0000000000002D010000090000000C000000070000001C010000880B00006C09000018030000E4030000B80200003C060000DC05000084030000DC050000740700001C05000000000000010000009E1B0000FE15000000000000070000000700000002000000020000001C010000680D000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005E00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000B0000004E00650077007300440065007400610069006C0000002143341208000000891B0000780E00007856341207000000140100004F007200640065007200440065007400610069006C0073000000720061006D002000460069006C00650073002000280078003800360029002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100310030002F0054006F006F006C0073002F00420069006E006E002F004D0061006E006100670065006D0065006E007400530074007500640069006F002F004900440045002F00500072006900760061007400650041007300730065006D0062006C006900650073002F0065006E002F004D006900630072006F0073006F00660074002E0053007100000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000018030000E4030000B80200003C060000DC05000084030000DC050000740700001C0500000000000001000000891B0000780E000000000000040000000400000002000000020000001C0100005C0D000000000000010000003A1800006B0A000000000000030000000300000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000006200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000D0000004F007200640065007200440065007400610069006C00730000002143341208000000891B0000BB1700007856341207000000140100004F007200640065007200730000003A002F00500072006F006700720061006D002000460069006C00650073002000280078003800360029002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100310030002F0054006F006F006C0073002F00420069006E006E002F004D0061006E006100670065006D0065006E007400530074007500640069006F002F004900440045002F005000750062006C006900630041007300730065006D0062006C006900650073002F0065006E002F004D006900630072006F0073006F00660074002E00530071006C00000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000002340000471C0000000000002D0100000A0000000C000000070000001C010000880B00006C09000018030000E4030000B80200003C060000DC05000084030000DC050000740700001C0500000000000001000000891B0000BB17000000000000080000000800000002000000020000001C0100005C0D000000000000010000003A1800003008000000000000020000000200000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000070000004F0072006400650072007300000002000B0064320000A53C000064320000483F00000000000002000000F0F0F00000000000000000000000000000000000010000000D0000000000000013330000473D000032130000530100003100000001000002000032130000530100000200000000000500008008000080010000001500010000009001B0300100065461686F6D611E0046004B005F005F004F00720064006500720044006500740061005F005F004F0052004400450052005F005F003200320041004100320039003900360002000B00891B0000CE31000066210000CE3100000000000002000000F0F0F00000000000000000000000000000000000010000000F000000000000001C120000CC2F000090120000530100004A00000001000002000090120000530100000200000000000500008008000080010000001500010000009001B0300100065461686F6D611E0046004B005F005F004F00720064006500720073005F005F0043007500730074006F006D00650072005F005F00320034003900320037003200300038002143341208000000891B00005C1C0000785634120700000014010000500072006F00640075006300740073000000500072006F006700720061006D002000460069006C00650073002000280078003800360029002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100310030002F0054006F006F006C0073002F00420069006E006E002F004D0061006E006100670065006D0065006E007400530074007500640069006F002F004900440045002F00500072006900760061007400650041007300730065006D0062006C006900650073002F0065006E002F004D006900630072006F0073006F00660074002E0053007100000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000002340000BE200000000000002D0100000C0000000C000000070000001C010000880B00006C09000018030000E4030000B80200003C060000DC05000084030000DC050000740700001C0500000000000001000000891B00005C1C0000000000000A0000000A00000002000000020000001C010000000C000000000000010000003A1800006B0A000000000000030000000300000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000009000000500072006F0064007500630074007300000002000B007A0D0000B85600007A0D0000695200000000000002000000F0F0F00000000000000000000000000000000000010000001200000000000000290E00009953000032130000530100003C0000000100000200003213000053010000020000000000FFFFFF0008000080010000001500010000009001B0300100065461686F6D611E0046004B005F005F0043006F006D006D0065006E00740073005F005F00500072006F006400750063005F005F003200310042003600300035003500440004000B00F31A0000565E00002A1F0000565E00002A1F0000C24C000066210000C24C00000000000002000000F0F0F00000000000000000000000000000000000010000001400000000000000D91F00008E5500009012000053010000390000000100000200009012000053010000020000000000FFFFFF0008000080010000001500010000009001B0300100065461686F6D611E0046004B005F005F004F00720064006500720044006500740061005F005F00500072006F00640075005F005F003200330039004500340044004300460003000B001E2D0000FE5F00001E2D000044610000F31A0000446100000000000002000000F0F0F00000000000000000000000000000000000010000001600000000000000D7230000F3610000D81100005301000038000000010000020000D811000053010000020000000000FFFFFF0008000080010000001500010000009001B0300100065461686F6D611E0046004B005F005F00500072006F00640075006300740073005F005F004200720061006E00640049005F005F003200350038003600390036003400310002000B003A200000286E0000F31A0000286E00000000000002000000F0F0F0000000000000000000000000000000000001000000180000000000000057150000266C00006212000053010000390000000100000200006212000053010000020000000000FFFFFF0008000080010000001500010000009001B0300100065461686F6D611E0046004B005F005F00500072006F00640075006300740073005F005F00430061007400650067006F005F005F003200360037004100420041003700410002000B00964B000034530000964B00006A4F00000000000002000000F0F0F00000000000000000000000000000000000010000001A00000000000000913D0000A6500000560D00005301000032000000010000020000560D000053010000020000000000FFFFFF0008000080010000001500010000009001B0300100065461686F6D61160046004B005F004E00650077007300440065007400610069006C005F004E0065007700730043006100740065000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300440064007300530074007200650061006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000001A0000003A1A00000000000053006300680065006D00610020005500440056002000440065006600610075006C0074000000000000000000000000000000000000000000000000000000000026000200FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000240000001600000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C0002010500000007000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000025000000B60300000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000003400000012000000000000000C00000034EFFFFFE32000000100260000007300630068005F006C006100620065006C0073005F00760069007300690062006C0065000000010000000B0000001E000000000000000000000000000000000000006400000000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003500320038000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C0032003100330036000000020000000200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600370032000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C0032003100330036000000030000000300000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400320030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C0032003100330036000000040000000400000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400320030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C0032003100330036000000050000000500000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400320030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C00320031003300360000000600000006000000000000004E0000000100350001000000640062006F00000046004B005F005F0043006F006D006D0065006E00740073005F005F0043007500730074006F006D005F005F003200300043003100450031003200340000000000000000000000C402000000000700000007000000060000000800000001B84D1008B84D100000000000000000AD070000000000080000000800000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400320030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C0032003100330036000000090000000900000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400330032000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C00320031003300360000000A0000000A00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400320030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C00320031003300360000000B0000000B00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400320030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C00320031003300360000000C0000000C000000000000004E000000014AEE5B01000000640062006F00000046004B005F005F004F00720064006500720044006500740061005F005F004F0052004400450052005F005F003200320041004100320039003900360000000000000000000000C402000000000D0000000D0000000C0000000800000001B84D1048B84D100000000000000000AD0700000000000E0000000E000000000000004E0000000179737401000000640062006F00000046004B005F005F004F00720064006500720073005F005F0043007500730074006F006D00650072005F005F003200340039003200370032003000380000000000000000000000C402000000000F0000000F0000000E0000000800000001B74D1088B74D100000000000000000AD070000000000100000001000000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003000370032000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C00320031003300360000001100000011000000000000004E000000014AEE5B01000000640062006F00000046004B005F005F0043006F006D006D0065006E00740073005F005F00500072006F006400750063005F005F003200310042003600300035003500440000000000000000000000C402000000001200000012000000110000000800000001B54D10C8B54D100000000000000000AD0700000000001300000013000000000000004E0000000100350001000000640062006F00000046004B005F005F004F00720064006500720044006500740061005F005F00500072006F00640075005F005F003200330039004500340044004300460000000000000000000000C402000000001400000014000000130000000800000001B74D1048B74D100000000000000000AD0700000000001500000015000000000000004E000000014AEE5B01000000640062006F00000046004B005F005F00500072006F00640075006300740073005F005F004200720061006E00640049005F005F003200350038003600390036003400310000000000000000000000C402000000001600000016000000150000000800000001B54D1088B54D100000000000000000AD0700000000001700000017000000000000004E0000000100350001000000640062006F00000046004B005F005F00500072006F00640075006300740073005F005F00430061007400650067006F005F005F003200360037004100420041003700410000000000000000000000C402000000001800000018000000170000000800000001B94D1008B94D100000000000000000AD0700000000001900000019000000000000003E00000001FAA75B01000000640062006F00000046004B005F004E00650077007300440065007400610069006C005F004E00650077007300430061007400650000000000000000000000C402000000001A0000001A000000190000000800000001B64D10C8B64D100000000000000000AD07000000000028000000150000000100000010000000290000007F00000017000000020000001000000082000000AB0000000600000005000000030000002D0000002C0000000E000000050000000B000000870000008600000019000000080000000900000026000000270000000C0000000B0000000A00000039000000380000001100000010000000030000002E0000002D00000013000000100000000A0000007500000088000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007200750065003B0055007300650072002000490044003D00730061003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00740053006500740073003D00460061006C00730065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063006100740069006F006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F002200000000800500140000004400690061006700720061006D005F00300000000002260012000000500072006F0064007500630074007300000008000000640062006F000000000226000E0000004F0072006400650072007300000008000000640062006F000000000226001A0000004F007200640065007200440065007400610069006C007300000008000000640062006F00000000022600160000004E00650077007300440065007400610069006C00000008000000640062006F00000000022600120000004E006500770073004300610074006500000008000000640062006F000000000226001400000043007500730074006F006D00650072007300000008000000640062006F000000000226001000000043006F006E007400610063007400000008000000640062006F000000000226001200000043006F006D006D0065006E0074007300000008000000640062006F0000000002260012000000430061007400650067006F0072007900000008000000640062006F000000000224000E0000004200720061006E0064007300000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00310036003300340043004400440037002D0030003800380038002D0034003200450033002D0039004600410032002D004200360044003300320035003600330042003900310044007D00000000000000000000000000010003000000000000000C0000000B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214)
GO
GO
SET IDENTITY_INSERT [dbo].[sysdiagrams] OFF
GO

-- ----------------------------
-- Indexes structure for table Brands
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Brands
-- ----------------------------
ALTER TABLE [dbo].[Brands] ADD PRIMARY KEY ([BrandID])
GO

-- ----------------------------
-- Indexes structure for table Category
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Category
-- ----------------------------
ALTER TABLE [dbo].[Category] ADD PRIMARY KEY ([CategoryID])
GO

-- ----------------------------
-- Indexes structure for table Comments
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Comments
-- ----------------------------
ALTER TABLE [dbo].[Comments] ADD PRIMARY KEY ([CommentID])
GO

-- ----------------------------
-- Indexes structure for table Contact
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Contact
-- ----------------------------
ALTER TABLE [dbo].[Contact] ADD PRIMARY KEY ([ContactID])
GO

-- ----------------------------
-- Indexes structure for table Customers
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Customers
-- ----------------------------
ALTER TABLE [dbo].[Customers] ADD PRIMARY KEY ([CustomerID])
GO

-- ----------------------------
-- Indexes structure for table NewsCate
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table NewsCate
-- ----------------------------
ALTER TABLE [dbo].[NewsCate] ADD PRIMARY KEY ([NewsCateID])
GO

-- ----------------------------
-- Indexes structure for table NewsDetail
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table NewsDetail
-- ----------------------------
ALTER TABLE [dbo].[NewsDetail] ADD PRIMARY KEY ([NewsID])
GO

-- ----------------------------
-- Indexes structure for table OrderDetails
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table OrderDetails
-- ----------------------------
ALTER TABLE [dbo].[OrderDetails] ADD PRIMARY KEY ([OrderDetailID])
GO

-- ----------------------------
-- Indexes structure for table Orders
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Orders
-- ----------------------------
ALTER TABLE [dbo].[Orders] ADD PRIMARY KEY ([OrderID])
GO

-- ----------------------------
-- Indexes structure for table Products
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Products
-- ----------------------------
ALTER TABLE [dbo].[Products] ADD PRIMARY KEY ([ProductID])
GO

-- ----------------------------
-- Indexes structure for table sysdiagrams
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD PRIMARY KEY ([diagram_id])
GO

-- ----------------------------
-- Uniques structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD UNIQUE ([principal_id] ASC, [name] ASC)
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Comments]
-- ----------------------------
ALTER TABLE [dbo].[Comments] ADD FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[Comments] ADD FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[NewsDetail]
-- ----------------------------
ALTER TABLE [dbo].[NewsDetail] ADD FOREIGN KEY ([NewsCateID]) REFERENCES [dbo].[NewsCate] ([NewsCateID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[OrderDetails]
-- ----------------------------
ALTER TABLE [dbo].[OrderDetails] ADD FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Orders] ([OrderID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[OrderDetails] ADD FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Orders]
-- ----------------------------
ALTER TABLE [dbo].[Orders] ADD FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Products]
-- ----------------------------
ALTER TABLE [dbo].[Products] ADD FOREIGN KEY ([BrandID]) REFERENCES [dbo].[Brands] ([BrandID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[Products] ADD FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Category] ([CategoryID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE Contact ADD CustomerId INT Foreign key references Customers(CustomerID)
go
INSERT INTO [dbo].[Comments] VALUES (12, 'Good', 15, 5, 1)
GO
INSERT INTO [dbo].[Comments] VALUES (15, 'Good', 15, 5, 1)
GO
INSERT INTO [dbo].[Comments] VALUES (16, 'Good', 15, 4, 1)
GO
INSERT INTO [dbo].[Comments] VALUES (17, 'Good', 15, 5, 1)
GO
INSERT INTO [dbo].[Comments] VALUES (18, 'Good', 15, 4, 1)
GO
INSERT INTO [dbo].[Comments] VALUES (19, 'Good', 15, 3, 1)
GO
INSERT INTO [dbo].[Comments] VALUES (20, 'Good', 15, 3, 1)
GO
INSERT INTO [dbo].[Comments] VALUES (21, 'Good', 15, 2, 1)
GO
INSERT INTO [dbo].[Comments] VALUES (22, 'Good', 15, 2, 1)
GO
INSERT INTO [dbo].[Comments] VALUES (37, 'Good', 15, 1, 1)
GO
INSERT INTO [dbo].[Comments] VALUES (38, 'Good', 15, 1, 1)
GO
INSERT INTO [dbo].[Comments] VALUES (39, 'Good', 15, 4, 1)
GO
INSERT INTO [dbo].[Comments] VALUES (40, 'Good', 15, 3, 1)
GO
INSERT INTO [dbo].[Comments] VALUES (41, 'Good', 15, 5, 1)
GO
INSERT INTO [dbo].[Comments] VALUES (42, 'Good', 15, 2, 1)
GO
