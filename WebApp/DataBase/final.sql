USE [master]
GO
/****** Object:  Database [NFC_Shopping_With_Wallet]    Script Date: 03/19/2019 18:05:09 ******/
CREATE DATABASE [NFC_Shopping_With_Wallet] ON  PRIMARY 
( NAME = N'NFC_Shopping_With_Wallet', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\NFC_Shopping_With_Wallet.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NFC_Shopping_With_Wallet_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\NFC_Shopping_With_Wallet_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NFC_Shopping_With_Wallet].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET ANSI_NULLS OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET ANSI_PADDING OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET ARITHABORT OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET  DISABLE_BROKER
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET  READ_WRITE
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET RECOVERY FULL
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET  MULTI_USER
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [NFC_Shopping_With_Wallet] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'NFC_Shopping_With_Wallet', N'ON'
GO
USE [NFC_Shopping_With_Wallet]
GO
/****** Object:  Table [dbo].[Product_Master]    Script Date: 03/19/2019 18:05:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product_Master](
	[Product_Id] [int] IDENTITY(1,1) NOT NULL,
	[Cat_Id] [int] NULL,
	[ProductName] [varchar](50) NULL,
	[Cost] [int] NULL,
	[ImagePath] [varchar](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Master] ON
INSERT [dbo].[Product_Master] ([Product_Id], [Cat_Id], [ProductName], [Cost], [ImagePath]) VALUES (1, 1, N'Milk', 20, N'images/5.jpg')
INSERT [dbo].[Product_Master] ([Product_Id], [Cat_Id], [ProductName], [Cost], [ImagePath]) VALUES (2, 2, N'Delta', 3000, N'images/6.jpg')
INSERT [dbo].[Product_Master] ([Product_Id], [Cat_Id], [ProductName], [Cost], [ImagePath]) VALUES (3, 3, N'Deltaa', 200, N'images/Jellyfish.jpg')
INSERT [dbo].[Product_Master] ([Product_Id], [Cat_Id], [ProductName], [Cost], [ImagePath]) VALUES (4, 2, N'Delta', 200, N'images/Chrysanthemum.jpg')
SET IDENTITY_INSERT [dbo].[Product_Master] OFF
/****** Object:  Table [dbo].[Employee_Master]    Script Date: 03/19/2019 18:05:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee_Master](
	[Emp_Id] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[PhoneNo] [varchar](50) NULL,
	[EmailId] [varchar](50) NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Employee_Master] ON
INSERT [dbo].[Employee_Master] ([Emp_Id], [EmpName], [Address], [PhoneNo], [EmailId], [Password]) VALUES (1, N'Manoj', N'Goregaon(E)', N'9989898789', N'manoj@gmail.com', N'manoj12345')
INSERT [dbo].[Employee_Master] ([Emp_Id], [EmpName], [Address], [PhoneNo], [EmailId], [Password]) VALUES (2, N'Shailesh', N'Ghatkopar', N'9898909897', N'shailesh@gmail.com', N'shailesh123')
INSERT [dbo].[Employee_Master] ([Emp_Id], [EmpName], [Address], [PhoneNo], [EmailId], [Password]) VALUES (3, N'Ankitfdhr', N'fdms', N'8605973598', N'ankitkesarwani122@gmial.com', N'123456')
INSERT [dbo].[Employee_Master] ([Emp_Id], [EmpName], [Address], [PhoneNo], [EmailId], [Password]) VALUES (6, N'Ankitfdhrhju', N'fdsg', N'9892369018', N'chintan2.parekh99@gmail.com', N'123456')
INSERT [dbo].[Employee_Master] ([Emp_Id], [EmpName], [Address], [PhoneNo], [EmailId], [Password]) VALUES (8, N'SurajK', N'dsjk', N'9892369017', N'chintan.parekh99@gmail.com', N'suraj123')
INSERT [dbo].[Employee_Master] ([Emp_Id], [EmpName], [Address], [PhoneNo], [EmailId], [Password]) VALUES (10, N's', N'Kandivali-west', N'7977943106', N'shrusti.talati@gmail.com', N'1234567')
SET IDENTITY_INSERT [dbo].[Employee_Master] OFF
/****** Object:  Table [dbo].[Customer_Master]    Script Date: 03/19/2019 18:05:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer_Master](
	[C_Id] [int] IDENTITY(1,1) NOT NULL,
	[CustName] [varchar](50) NULL,
	[Address] [varchar](5000) NULL,
	[PhoneNo] [varchar](50) NULL,
	[EmailId] [varchar](50) NULL,
	[Balance] [int] NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customer_Master] ON
INSERT [dbo].[Customer_Master] ([C_Id], [CustName], [Address], [PhoneNo], [EmailId], [Balance], [Password]) VALUES (1, N'Manoj', N'Goregaon(E)', N'8989878987', N'manoj@gmail.com', 700, N'manoj123')
INSERT [dbo].[Customer_Master] ([C_Id], [CustName], [Address], [PhoneNo], [EmailId], [Balance], [Password]) VALUES (2, N'Shailesh', N'ghatkopar', N'9898787678', N'shailesh@gmail.com', 2000, N'shailesh123')
INSERT [dbo].[Customer_Master] ([C_Id], [CustName], [Address], [PhoneNo], [EmailId], [Balance], [Password]) VALUES (3, N'Sachin', N'ghatkopar', N'1828282828', N'sachin@gmail.com', 2000, N'sachin123')
INSERT [dbo].[Customer_Master] ([C_Id], [CustName], [Address], [PhoneNo], [EmailId], [Balance], [Password]) VALUES (7, N'Chintan', N'Kandivali-west', N'9892369017', N'chintan.parekh99@gmail.com', 8000, N'9A71E3b')
SET IDENTITY_INSERT [dbo].[Customer_Master] OFF
/****** Object:  Table [dbo].[Category_Master]    Script Date: 03/19/2019 18:05:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category_Master](
	[Cat_Id] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category_Master] ON
INSERT [dbo].[Category_Master] ([Cat_Id], [CatName]) VALUES (1, N'Food')
INSERT [dbo].[Category_Master] ([Cat_Id], [CatName]) VALUES (2, N'Clothes')
INSERT [dbo].[Category_Master] ([Cat_Id], [CatName]) VALUES (3, N'Toys')
SET IDENTITY_INSERT [dbo].[Category_Master] OFF
/****** Object:  Table [dbo].[Admin_Login]    Script Date: 03/19/2019 18:05:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin_Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Admin_Login] ON
INSERT [dbo].[Admin_Login] ([Id], [Username], [Password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Admin_Login] OFF
/****** Object:  Table [dbo].[Transaction_Master]    Script Date: 03/19/2019 18:05:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction_Master](
	[T_Id] [int] IDENTITY(1,1) NOT NULL,
	[C_Id] [int] NULL,
	[Emp_Id] [int] NULL,
	[DateTime] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Transaction_Master] ON
INSERT [dbo].[Transaction_Master] ([T_Id], [C_Id], [Emp_Id], [DateTime]) VALUES (1, 1, 1, CAST(0x0000A56C00E11770 AS DateTime))
INSERT [dbo].[Transaction_Master] ([T_Id], [C_Id], [Emp_Id], [DateTime]) VALUES (2, 1, 1, CAST(0x0000A56C00E1558C AS DateTime))
INSERT [dbo].[Transaction_Master] ([T_Id], [C_Id], [Emp_Id], [DateTime]) VALUES (3, 1, 1, CAST(0x0000A58400C05C88 AS DateTime))
INSERT [dbo].[Transaction_Master] ([T_Id], [C_Id], [Emp_Id], [DateTime]) VALUES (4, 1, 1, CAST(0x0000A586010426D4 AS DateTime))
INSERT [dbo].[Transaction_Master] ([T_Id], [C_Id], [Emp_Id], [DateTime]) VALUES (5, 1, 1, CAST(0x0000A5A000F76980 AS DateTime))
INSERT [dbo].[Transaction_Master] ([T_Id], [C_Id], [Emp_Id], [DateTime]) VALUES (6, 1, 1, CAST(0x0000A8C201687BFC AS DateTime))
INSERT [dbo].[Transaction_Master] ([T_Id], [C_Id], [Emp_Id], [DateTime]) VALUES (7, 1, 1, CAST(0x0000A9F8014ABD24 AS DateTime))
INSERT [dbo].[Transaction_Master] ([T_Id], [C_Id], [Emp_Id], [DateTime]) VALUES (8, 1, 1, CAST(0x0000A9F8014B269C AS DateTime))
SET IDENTITY_INSERT [dbo].[Transaction_Master] OFF
/****** Object:  Table [dbo].[Transaction_Details_Master]    Script Date: 03/19/2019 18:05:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction_Details_Master](
	[TD_Id] [int] IDENTITY(1,1) NOT NULL,
	[C_Id] [int] NULL,
	[Emp_Id] [int] NULL,
	[Product_Id] [int] NULL,
	[Quantity] [int] NULL,
	[Total_Cost] [int] NULL,
	[DateTime] [datetime] NULL,
	[T_Id] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Transaction_Details_Master] ON
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (1, 1, 1, 1, 1, 300, CAST(0x0000A56C00E11770 AS DateTime), 1)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (2, 1, 1, 2, 1, 1000, CAST(0x0000A56C00E11770 AS DateTime), 1)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (3, 1, 1, 3, 1, 200, CAST(0x0000A56C00E11770 AS DateTime), 1)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (4, 1, 1, 1, 1, 300, CAST(0x0000A56C00E1558C AS DateTime), 2)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (5, 1, 1, 2, 1, 1000, CAST(0x0000A56C00E1558C AS DateTime), 2)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (6, 1, 1, 3, 1, 200, CAST(0x0000A56C00E1558C AS DateTime), 2)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (7, 1, 1, 1, 1, 300, CAST(0x0000A58400C05C88 AS DateTime), 3)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (8, 1, 1, 2, 1, 1000, CAST(0x0000A58400C05C88 AS DateTime), 3)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (9, 1, 1, 3, 1, 200, CAST(0x0000A58400C05C88 AS DateTime), 3)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (10, 1, 1, 1, 2, 600, CAST(0x0000A586010426D4 AS DateTime), 4)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (11, 1, 1, 2, 1, 1000, CAST(0x0000A586010426D4 AS DateTime), 4)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (12, 1, 1, 1, 1, 300, CAST(0x0000A5A000F76854 AS DateTime), 5)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (13, 1, 1, 2, 1, 1000, CAST(0x0000A5A000F76980 AS DateTime), 5)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (14, 1, 1, 2, 2, 2000, CAST(0x0000A8C201687BFC AS DateTime), 6)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (15, 1, 1, 3, 5, 1000, CAST(0x0000A8C201687BFC AS DateTime), 6)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (16, 1, 1, 2, 2, 2000, CAST(0x0000A9F8014ABD24 AS DateTime), 7)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (17, 1, 1, 3, 5, 1000, CAST(0x0000A9F8014ABD24 AS DateTime), 7)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (18, 1, 1, 2, 2, 2000, CAST(0x0000A9F8014B269C AS DateTime), 8)
INSERT [dbo].[Transaction_Details_Master] ([TD_Id], [C_Id], [Emp_Id], [Product_Id], [Quantity], [Total_Cost], [DateTime], [T_Id]) VALUES (19, 1, 1, 3, 5, 1000, CAST(0x0000A9F8014B269C AS DateTime), 8)
SET IDENTITY_INSERT [dbo].[Transaction_Details_Master] OFF
/****** Object:  Table [dbo].[Temp_Cart]    Script Date: 03/19/2019 18:05:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_Cart](
	[T_Id] [int] IDENTITY(1,1) NOT NULL,
	[C_Id] [int] NULL,
	[Product_Id] [int] NULL,
	[Quantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Select_For_TDM]    Script Date: 03/19/2019 18:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_For_TDM]
	@cid int
AS
BEGIN
	select TC.C_Id,TC.Product_Id,SUM(TC.Quantity)as Quantity ,
	(P.Cost)*SUM(TC.Quantity)  as Total_Cost
	from Customer_Master C Join Temp_Cart TC on C.C_Id =TC.C_Id 
	Join Product_Master p on P.Product_Id = TC.Product_Id 
	where TC.C_Id=@cid group by TC.C_Id,TC.Product_Id,p.ProductName,P.Cost;
END
GO
/****** Object:  StoredProcedure [dbo].[Cust_Cart]    Script Date: 03/19/2019 18:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Cust_Cart] 
	@cid int
AS
BEGIN
	select TC.C_Id,TC.Product_Id,P.ProductName,P.ImagePath,SUM(TC.Quantity)as Quantity,P.Cost,
	(P.Cost)*SUM(TC.Quantity)  as Total_Cost  
	from Customer_Master C Join Temp_Cart TC on C.C_Id =TC.C_Id 
	Join Product_Master P on P.Product_Id = TC.Product_Id 
	where TC.C_Id=@cid group by TC.C_Id,TC.Product_Id,p.ProductName,P.Cost,p.ImagePath;
	
	select SUM(Total_Cost)as Total_Cost from(select (P.Cost)*SUM(TC.Quantity)as Total_Cost
	from Temp_Cart TC JOIN Product_Master P on TC.Product_Id=p.Product_Id
	where C_Id=@cid group by P.Cost) as T
END
GO
