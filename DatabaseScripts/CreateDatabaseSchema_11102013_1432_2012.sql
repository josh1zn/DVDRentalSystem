USE [DVDRental]
GO
ALTER TABLE [dbo].[Sales] DROP CONSTRAINT [FK_Sales_RentalItems]
GO
ALTER TABLE [dbo].[Sales] DROP CONSTRAINT [FK_Sales_Employees]
GO
ALTER TABLE [dbo].[Sales] DROP CONSTRAINT [FK_Sales_Customers]
GO
ALTER TABLE [dbo].[Notifications] DROP CONSTRAINT [FK_Notifications_Users]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_Fine]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_Balance]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2013-10-11 02:32:57 PM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 2013-10-11 02:32:57 PM ******/
DROP TABLE [dbo].[Sales]
GO
/****** Object:  Table [dbo].[RentalItems]    Script Date: 2013-10-11 02:32:57 PM ******/
DROP TABLE [dbo].[RentalItems]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 2013-10-11 02:32:57 PM ******/
DROP TABLE [dbo].[Notifications]
GO
USE [master]
GO
/****** Object:  Database [DVDRental]    Script Date: 2013-10-11 02:32:57 PM ******/
DROP DATABASE [DVDRental]
GO
/****** Object:  Database [DVDRental]    Script Date: 2013-10-11 02:32:57 PM ******/
CREATE DATABASE [DVDRental]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DVDRental', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DVDRental.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DVDRental_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DVDRental_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DVDRental] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DVDRental].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DVDRental] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DVDRental] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DVDRental] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DVDRental] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DVDRental] SET ARITHABORT OFF 
GO
ALTER DATABASE [DVDRental] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DVDRental] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DVDRental] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DVDRental] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DVDRental] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DVDRental] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DVDRental] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DVDRental] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DVDRental] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DVDRental] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DVDRental] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DVDRental] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DVDRental] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DVDRental] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DVDRental] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DVDRental] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DVDRental] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DVDRental] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DVDRental] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DVDRental] SET  MULTI_USER 
GO
ALTER DATABASE [DVDRental] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DVDRental] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DVDRental] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DVDRental] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DVDRental]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 2013-10-11 02:32:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[CustomerID] [int] NOT NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RentalItems]    Script Date: 2013-10-11 02:32:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RentalItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_RentalItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 2013-10-11 02:32:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[RentalItemID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2013-10-11 02:32:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[IDNumber] [varchar](13) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[ContactNumber] [varchar](50) NOT NULL,
	[Email] [varchar](50) NULL,
	[Balance] [decimal](18, 2) NOT NULL,
	[Fine] [decimal](18, 2) NOT NULL,
	[Role] [varchar](50) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Balance]  DEFAULT ((0)) FOR [Balance]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Fine]  DEFAULT ((0)) FOR [Fine]
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD  CONSTRAINT [FK_Notifications_Users] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Notifications] CHECK CONSTRAINT [FK_Notifications_Users]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Customers] FOREIGN KEY([ID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Customers]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Employees]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_RentalItems] FOREIGN KEY([RentalItemID])
REFERENCES [dbo].[RentalItems] ([ID])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_RentalItems]
GO
USE [master]
GO
ALTER DATABASE [DVDRental] SET  READ_WRITE 
GO
