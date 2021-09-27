USE [master]
GO
/****** Object:  Database [ShopBridge]    Script Date: 27-09-2021 23:24:46 ******/
CREATE DATABASE [ShopBridge]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopBridge', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopBridge.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopBridge_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopBridge_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShopBridge] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopBridge].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopBridge] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopBridge] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopBridge] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopBridge] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopBridge] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopBridge] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopBridge] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopBridge] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopBridge] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopBridge] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopBridge] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopBridge] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopBridge] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopBridge] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopBridge] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopBridge] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopBridge] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopBridge] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopBridge] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopBridge] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopBridge] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopBridge] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopBridge] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopBridge] SET  MULTI_USER 
GO
ALTER DATABASE [ShopBridge] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopBridge] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopBridge] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopBridge] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopBridge] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopBridge] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ShopBridge] SET QUERY_STORE = OFF
GO
USE [ShopBridge]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 27-09-2021 23:24:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[Created_By] [nvarchar](100) NOT NULL,
	[Created_Date] [datetime] NOT NULL,
	[Updated_By] [nvarchar](100) NULL,
	[Updated_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 
GO
INSERT [dbo].[Inventory] ([Id], [Name], [Price], [Description], [IsActive], [Created_By], [Created_Date], [Updated_By], [Updated_Date]) VALUES (1, N'Shirt', 500, N'New Shirt', 0, N'System', CAST(N'2021-09-25T17:17:55.270' AS DateTime), N'System', CAST(N'2021-09-27T21:06:21.087' AS DateTime))
GO
INSERT [dbo].[Inventory] ([Id], [Name], [Price], [Description], [IsActive], [Created_By], [Created_Date], [Updated_By], [Updated_Date]) VALUES (2, N'Trouser', 7000, N'Yellow color  trouser', 1, N'System', CAST(N'2021-09-25T17:36:21.200' AS DateTime), N'System', CAST(N'2021-09-27T19:24:42.210' AS DateTime))
GO
INSERT [dbo].[Inventory] ([Id], [Name], [Price], [Description], [IsActive], [Created_By], [Created_Date], [Updated_By], [Updated_Date]) VALUES (3, N'Laptop', 40000, N'New laptop', 0, N'System', CAST(N'2021-09-27T13:16:15.147' AS DateTime), N'System', CAST(N'2021-09-27T21:50:33.453' AS DateTime))
GO
INSERT [dbo].[Inventory] ([Id], [Name], [Price], [Description], [IsActive], [Created_By], [Created_Date], [Updated_By], [Updated_Date]) VALUES (4, N'Laptop', 60000, N'New laptop', 0, N'System', CAST(N'2021-09-27T13:18:01.783' AS DateTime), N'System', CAST(N'2021-09-27T21:17:13.997' AS DateTime))
GO
INSERT [dbo].[Inventory] ([Id], [Name], [Price], [Description], [IsActive], [Created_By], [Created_Date], [Updated_By], [Updated_Date]) VALUES (5, N'Pen', 10, N'Ink Pen', 1, N'System', CAST(N'2021-09-27T13:19:54.923' AS DateTime), N'System', CAST(N'2021-09-27T13:45:39.317' AS DateTime))
GO
INSERT [dbo].[Inventory] ([Id], [Name], [Price], [Description], [IsActive], [Created_By], [Created_Date], [Updated_By], [Updated_Date]) VALUES (6, N'Eraser', 70, N'Can erase written by any pencil', 1, N'System', CAST(N'2021-09-27T13:48:42.753' AS DateTime), N'System', CAST(N'2021-09-27T21:17:06.667' AS DateTime))
GO
INSERT [dbo].[Inventory] ([Id], [Name], [Price], [Description], [IsActive], [Created_By], [Created_Date], [Updated_By], [Updated_Date]) VALUES (12, N'Shirt', 500, N'New Shirt', 1, N'System', CAST(N'2021-09-27T21:06:29.383' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Inventory] ([Id], [Name], [Price], [Description], [IsActive], [Created_By], [Created_Date], [Updated_By], [Updated_Date]) VALUES (13, N'Shirt', 500, N'New Shirt', 1, N'System', CAST(N'2021-09-27T21:06:31.257' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Inventory] ([Id], [Name], [Price], [Description], [IsActive], [Created_By], [Created_Date], [Updated_By], [Updated_Date]) VALUES (14, N'Laptop', 48000, N'New laptop', 1, N'System', CAST(N'2021-09-27T21:17:32.227' AS DateTime), N'System', CAST(N'2021-09-27T21:50:20.667' AS DateTime))
GO
INSERT [dbo].[Inventory] ([Id], [Name], [Price], [Description], [IsActive], [Created_By], [Created_Date], [Updated_By], [Updated_Date]) VALUES (15, N'Laptop', 70000, N'Refurbished laptop', 0, N'System', CAST(N'2021-09-27T21:50:57.840' AS DateTime), N'System', CAST(N'2021-09-27T22:54:34.513' AS DateTime))
GO
INSERT [dbo].[Inventory] ([Id], [Name], [Price], [Description], [IsActive], [Created_By], [Created_Date], [Updated_By], [Updated_Date]) VALUES (16, N'Glass bottle', 350, N'A colorful glass bottle', 1, N'System', CAST(N'2021-09-27T22:56:46.520' AS DateTime), N'System', CAST(N'2021-09-27T23:07:51.683' AS DateTime))
GO
INSERT [dbo].[Inventory] ([Id], [Name], [Price], [Description], [IsActive], [Created_By], [Created_Date], [Updated_By], [Updated_Date]) VALUES (17, N'Laptop', 35000, N'refurbished', 0, N'System', CAST(N'2021-09-27T23:19:49.187' AS DateTime), N'System', CAST(N'2021-09-27T23:20:04.260' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
ALTER TABLE [dbo].[Inventory] ADD  DEFAULT ((0)) FOR [IsActive]
GO
USE [master]
GO
ALTER DATABASE [ShopBridge] SET  READ_WRITE 
GO
