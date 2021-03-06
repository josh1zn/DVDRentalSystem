USE [DVDRental]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Name], [Surname], [IDNumber], [Address], [ContactNumber], [Email], [Balance], [Fine], [Role], [Username], [Password]) VALUES (7, N'Ruven', N'RuvenSurname', N'7777777777777', N'aksjdhsaoidoaidj, adoihjaodi', N'937937938729', N'Ruven@gmail.com', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Clerk', N'Ruven', N'65CAAD026C5E9481B740B723A173DCBD')
INSERT [dbo].[Users] ([ID], [Name], [Surname], [IDNumber], [Address], [ContactNumber], [Email], [Balance], [Fine], [Role], [Username], [Password]) VALUES (8, N'Nigel', N'NigelSurname', N'6666666666666', N'aksjdhsaoidoaidj, adoihjaodi', N'937937938729', N'Nigel@gmail.com', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Administrator', N'Nigel', N'38211B1229F6AAC3A242B713DAD157FC')
INSERT [dbo].[Users] ([ID], [Name], [Surname], [IDNumber], [Address], [ContactNumber], [Email], [Balance], [Fine], [Role], [Username], [Password]) VALUES (10, N'Joshua', N'Dhanapalan', N'9011095172084', N'96 B Dinapur Road, Durban', N'0845250008', N'josh1zn@gmail.com', CAST(150.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), N'Customer', N'Joshua', N'52B949E54121A1CF00239B4DD13003F2')
INSERT [dbo].[Users] ([ID], [Name], [Surname], [IDNumber], [Address], [ContactNumber], [Email], [Balance], [Fine], [Role], [Username], [Password]) VALUES (11, N'Himal', N'Rampersadh', N'5555555555555', N'56 Newlands East, Durban', N'1239870980', N'Himal@gmail.com', CAST(300.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), N'Customer', N'Himal', N'FD38090916F9E467A40F75B24BF48423')
INSERT [dbo].[Users] ([ID], [Name], [Surname], [IDNumber], [Address], [ContactNumber], [Email], [Balance], [Fine], [Role], [Username], [Password]) VALUES (12, N'Leevern', N'Padayachi', N'1111111111111', N'23 Badula Drive, Durban', N'0909218378', N'Leevern@gmail.com', CAST(175.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), N'Customer', N'Leevern', N'FABF2938A75C12BCC17D60C132BF15CA')
INSERT [dbo].[Users] ([ID], [Name], [Surname], [IDNumber], [Address], [ContactNumber], [Email], [Balance], [Fine], [Role], [Username], [Password]) VALUES (13, N'Irfana', N'Sheikahmed', N'2222222222222', N'16 Warangal Road, Merebank, Durban', N'78483020101', N'Irfana@gmail.com', CAST(300.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), N'Customer', N'Irfana', N'49571404EA72EE828571EC3E6DA1BFD4')
INSERT [dbo].[Users] ([ID], [Name], [Surname], [IDNumber], [Address], [ContactNumber], [Email], [Balance], [Fine], [Role], [Username], [Password]) VALUES (14, N'Jadene', N'Dhanapalan', N'3333333333333', N'267 Warangal Road, Merebank, Durban', N'09872309128', N'Jadene@gmail.com', CAST(175.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), N'Customer', N'Jadene', N'E19F3F09659C30488BEE497121EC0763')
INSERT [dbo].[Users] ([ID], [Name], [Surname], [IDNumber], [Address], [ContactNumber], [Email], [Balance], [Fine], [Role], [Username], [Password]) VALUES (15, N'Caelib', N'Dhanapalan', N'4444444444444', N'1 Warangal Road, Merebank, Durban', N'1258123832', N'Caelib@gmail.com', CAST(30.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Customer', N'Caelib', N'484E197D451385385C2270DF36B4E06B')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([ID], [Date], [CustomerID]) VALUES (9, CAST(0x0000A258001DCA44 AS DateTime), 10)
INSERT [dbo].[Notifications] ([ID], [Date], [CustomerID]) VALUES (10, CAST(0x0000A258001DCCE6 AS DateTime), 11)
INSERT [dbo].[Notifications] ([ID], [Date], [CustomerID]) VALUES (11, CAST(0x0000A258001DCF66 AS DateTime), 12)
INSERT [dbo].[Notifications] ([ID], [Date], [CustomerID]) VALUES (12, CAST(0x0000A258001DD1DC AS DateTime), 13)
INSERT [dbo].[Notifications] ([ID], [Date], [CustomerID]) VALUES (13, CAST(0x0000A258001DD403 AS DateTime), 14)
SET IDENTITY_INSERT [dbo].[Notifications] OFF
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
SET IDENTITY_INSERT [dbo].[Sales] ON 

INSERT [dbo].[Sales] ([ID], [Date], [RentalItemID], [CustomerID], [EmployeeID]) VALUES (6, CAST(0x0000A258001BADA3 AS DateTime), 1, 10, 7)
INSERT [dbo].[Sales] ([ID], [Date], [RentalItemID], [CustomerID], [EmployeeID]) VALUES (7, CAST(0x0000A258001BB52E AS DateTime), 6, 11, 7)
INSERT [dbo].[Sales] ([ID], [Date], [RentalItemID], [CustomerID], [EmployeeID]) VALUES (8, CAST(0x0000A258001BBC69 AS DateTime), 16, 14, 7)
INSERT [dbo].[Sales] ([ID], [Date], [RentalItemID], [CustomerID], [EmployeeID]) VALUES (9, CAST(0x0000A258001BC43A AS DateTime), 17, 15, 7)
INSERT [dbo].[Sales] ([ID], [Date], [RentalItemID], [CustomerID], [EmployeeID]) VALUES (10, CAST(0x0000A258001C2B1B AS DateTime), 7, 13, 7)
INSERT [dbo].[Sales] ([ID], [Date], [RentalItemID], [CustomerID], [EmployeeID]) VALUES (11, CAST(0x0000A258001CFB5D AS DateTime), 7, 11, 7)
SET IDENTITY_INSERT [dbo].[Sales] OFF
