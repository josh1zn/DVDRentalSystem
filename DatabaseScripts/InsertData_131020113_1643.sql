USE [DVDRental]
GO
/****** Object:  Table [dbo].[RentalItems]    Script Date: 10/13/2013 13:55:50 ******/
SET IDENTITY_INSERT [dbo].[RentalItems] ON
INSERT [dbo].[RentalItems] ([ID], [Name], [Type], [Price]) VALUES (1, N'Watch Dogs', N'Game', CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[RentalItems] ([ID], [Name], [Type], [Price]) VALUES (2, N'Grown Ups 2', N'DVD', CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[RentalItems] ([ID], [Name], [Type], [Price]) VALUES (4, N'Thor 2', N'BluRay', CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[RentalItems] ([ID], [Name], [Type], [Price]) VALUES (6, N'GTA V', N'Game', CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[RentalItems] ([ID], [Name], [Type], [Price]) VALUES (7, N'Pacific Rim', N'BluRay', CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[RentalItems] ([ID], [Name], [Type], [Price]) VALUES (9, N'Diablo 3', N'Game', CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[RentalItems] ([ID], [Name], [Type], [Price]) VALUES (11, N'COD Ghosts', N'Game', CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[RentalItems] ([ID], [Name], [Type], [Price]) VALUES (13, N'Fast 6', N'BluRay', CAST(45.00 AS Decimal(18, 2)))
INSERT [dbo].[RentalItems] ([ID], [Name], [Type], [Price]) VALUES (16, N'Battlefield 4', N'Game', CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[RentalItems] ([ID], [Name], [Type], [Price]) VALUES (17, N'The Internship', N'DVD', CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[RentalItems] ([ID], [Name], [Type], [Price]) VALUES (18, N'Killzone Shadowfall', N'Game', CAST(50.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[RentalItems] OFF
