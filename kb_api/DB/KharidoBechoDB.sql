USE [KharidoBecho]
GO
/****** Object:  Table [dbo].[Advertise]    Script Date: 20-12-2019 17:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertise](
	[AdvId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](300) NOT NULL,
	[Description] [varchar](500) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[LocationId] [int] NOT NULL,
	[DatePosted] [datetime] NULL,
 CONSTRAINT [PK_Advertise] PRIMARY KEY CLUSTERED 
(
	[AdvId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 20-12-2019 17:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[ParentCatId] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryCar]    Script Date: 20-12-2019 17:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryCar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdvId] [int] NOT NULL,
	[Brand] [varchar](50) NOT NULL,
	[Year] [int] NOT NULL,
	[Fuel] [int] NOT NULL,
	[KMDriven] [int] NOT NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_CategoryCar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryProperty]    Script Date: 20-12-2019 17:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryProperty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdvId] [int] NOT NULL,
	[Type] [varchar](50) NULL,
	[Bedrooms] [int] NULL,
	[Bathrooms] [int] NULL,
	[Furnishing] [varchar](50) NULL,
	[Construction] [varchar](50) NULL,
	[ListedBy] [varchar](50) NULL,
	[BuiltupArea] [int] NULL,
	[CarpetArea] [int] NULL,
	[Maintenance] [int] NULL,
	[TotalFloors] [int] NULL,
	[FloorNo] [int] NULL,
	[CarParking] [int] NULL,
	[VastuCompliant] [bit] NULL,
	[MealInclude] [bit] NULL,
	[PropertyType] [int] NOT NULL,
 CONSTRAINT [PK_CategoryProperty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fuel]    Script Date: 20-12-2019 17:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fuel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fuel] [varchar](20) NOT NULL,
	[Description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Fuel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 20-12-2019 17:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [varchar](500) NOT NULL,
	[AdvId] [int] NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagesTemp]    Script Date: 20-12-2019 17:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagesTemp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [varchar](500) NOT NULL,
	[AdvId] [int] NOT NULL,
 CONSTRAINT [PK_Imagestemp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 20-12-2019 17:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [varchar](20) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 20-12-2019 17:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[Id] [int] NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NOT NULL,
	[EmailID] [varchar](50) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[Role] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Advertise] ON 

INSERT [dbo].[Advertise] ([AdvId], [Title], [Description], [CategoryId], [Price], [LocationId], [DatePosted]) VALUES (2, N'Honda City Second', N'Second hand Honda City, make - 2017, KM driven - 65000', 2, 940000.0000, 14, CAST(N'2019-12-17T14:17:58.877' AS DateTime))
INSERT [dbo].[Advertise] ([AdvId], [Title], [Description], [CategoryId], [Price], [LocationId], [DatePosted]) VALUES (3, N'Maruti', N'Second Hand', 2, 600000.0000, 37, CAST(N'2019-12-17T14:17:58.877' AS DateTime))
INSERT [dbo].[Advertise] ([AdvId], [Title], [Description], [CategoryId], [Price], [LocationId], [DatePosted]) VALUES (4, N'Indica Marina', N'Second Hand', 2, 450000.0000, 23, CAST(N'2019-12-17T14:17:58.877' AS DateTime))
INSERT [dbo].[Advertise] ([AdvId], [Title], [Description], [CategoryId], [Price], [LocationId], [DatePosted]) VALUES (6, N'Full modified Jeep ready your booking to All States transfer', N'Verma Full modified Jeep ready your booking to All States transfer facilities with noc clear any state Home delivery of Diesel engine power steering power brake power clutch and all state transport facility''s

No chatting Call Me Now More Information', 2, 389000.0000, 37, CAST(N'2019-12-17T14:38:54.870' AS DateTime))
INSERT [dbo].[Advertise] ([AdvId], [Title], [Description], [CategoryId], [Price], [LocationId], [DatePosted]) VALUES (7, N'Ford Figo Titanium Plus (Grey Color)', N'NULLFor Sale excellent condition Ford Figo Titanium Plus in grey color with 6 Airbags..', 2, 400000.0000, 34, CAST(N'2019-12-17T14:44:36.297' AS DateTime))
INSERT [dbo].[Advertise] ([AdvId], [Title], [Description], [CategoryId], [Price], [LocationId], [DatePosted]) VALUES (8, N'Honda civic petrol white colour, well maintained, all paper clear', N'Honda civic car', 2, 400000.0000, 14, CAST(N'2019-12-17T14:47:32.093' AS DateTime))
INSERT [dbo].[Advertise] ([AdvId], [Title], [Description], [CategoryId], [Price], [LocationId], [DatePosted]) VALUES (9, N'2013 Mahindra Scorpio diesel 66515 Kms', N'2013 Mahindra Scorpio diesel 66515 Kms', 2, 950000.0000, 27, CAST(N'2019-12-17T14:48:49.620' AS DateTime))
INSERT [dbo].[Advertise] ([AdvId], [Title], [Description], [CategoryId], [Price], [LocationId], [DatePosted]) VALUES (10, N'Single hand,army officer car in mint condition,Brand new tyres
', N'Single hand use, Nov 2010,Mint condition, Haryana number,Army officer car,with Brand New tyres...', 2, 270000.0000, 43, CAST(N'2019-12-17T14:49:26.623' AS DateTime))
INSERT [dbo].[Advertise] ([AdvId], [Title], [Description], [CategoryId], [Price], [LocationId], [DatePosted]) VALUES (11, N'1 BHK Semi furnished modern look', N'want to sale 1BHK flat with semi furnished and decorative tiles, ready to move any time', 1, 3000000.0000, 39, CAST(N'2019-12-17T14:59:38.370' AS DateTime))
INSERT [dbo].[Advertise] ([AdvId], [Title], [Description], [CategoryId], [Price], [LocationId], [DatePosted]) VALUES (12, N'4 Bds - 3 Ba - 2000 ft2', N'It''s a old house with 4 bedroom 3 bathroom now renting 15 cent land', 1, 22500000.0000, 24, CAST(N'2019-12-17T17:05:09.847' AS DateTime))
INSERT [dbo].[Advertise] ([AdvId], [Title], [Description], [CategoryId], [Price], [LocationId], [DatePosted]) VALUES (13, N'Maruti12', N'Second Hand', 2, 450000.0000, 37, CAST(N'2019-12-19T19:00:55.047' AS DateTime))
INSERT [dbo].[Advertise] ([AdvId], [Title], [Description], [CategoryId], [Price], [LocationId], [DatePosted]) VALUES (14, N'3 BHK Flat', N'Second Hand', 1, 450000.0000, 37, CAST(N'2019-12-19T19:10:13.480' AS DateTime))
SET IDENTITY_INSERT [dbo].[Advertise] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (1, N'Properties', N'Properties', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (2, N'Cars', N'Cars', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (3, N'Furniture', N'Furniture', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (4, N'Electronics & Applicances', N'Electronics & Applicances', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (5, N'Mobiles', N'Mobiles', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (6, N'Bikes', N'Bikes', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (7, N'For Sale: Houses & Apartments', N'For Sale: Houses & Apartments', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (8, N'For Sale: Houses & Apartments', N'For Sale: Houses & Apartments', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (9, N'Lands & Plots', N'Lands & Plots', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (10, N'PG & Guest Houses', N'PG & Guest Houses', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (11, N'Cars', N'Cars', 2)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (12, N'Commercial Vehicles', N'Commercial Vehicles', 2)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (13, N'Spare Parts', N'Spare Parts', 2)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (14, N'Other Vehicles', N'Other Vehicles', 2)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (15, N'Sofa & Dining', N'Sofa & Dining', 3)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (16, N'Beds & Wardrobes', N'Beds & Wardrobes', 3)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (17, N'Home Decor & Garden', N'Home Decor & Garden', 3)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (18, N'Kids Furniture', N'Kids Furniture', 3)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (19, N'Other Household Items', N'NULLOther Household Items', 3)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (20, N'TVs, Video - Audio', N'TVs, Video - Audio', 4)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (21, N'Kitchen & Other Appliances', N'Kitchen & Other Appliances', 4)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (22, N'Computers & Laptops', N'Computers & Laptops', 4)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (23, N'Cameras & Lenses', N'Cameras & Lenses', 4)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (24, N'Games & Entertainment', N'Games & Entertainment', 4)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (25, N'Fridges', N'Fridges', 4)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (26, N'Computer Accessories', N'Computer Accessories', 4)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (27, N'Hard Disks, Printers & Monitors', N'Hard Disks, Printers & Monitors', 4)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (28, N'ACs', N'ACs', 4)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (29, N'Washing Machines', N'Washing Machines', 4)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (30, N'Mobile Phones', N'Mobile Phones', 5)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (31, N'Accessories
', N'Accessories
', 5)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (32, N'Tablets', N'Tablets', 5)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (33, N'Motorcycles', N'Motorcycles', 6)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (34, N'Scooters', N'Scooters', 6)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (35, N'Spare Parts', N'Spare Parts', 6)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description], [ParentCatId]) VALUES (36, N'Bicycles', N'Bicycles', 6)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[CategoryCar] ON 

INSERT [dbo].[CategoryCar] ([Id], [AdvId], [Brand], [Year], [Fuel], [KMDriven], [Description]) VALUES (1, 2, N'Honda City', 2014, 2, 80000, N'')
INSERT [dbo].[CategoryCar] ([Id], [AdvId], [Brand], [Year], [Fuel], [KMDriven], [Description]) VALUES (3, 3, N'Maruti Ertiga', 2015, 3, 65000, N'')
INSERT [dbo].[CategoryCar] ([Id], [AdvId], [Brand], [Year], [Fuel], [KMDriven], [Description]) VALUES (4, 4, N'Indica Marina', 2017, 2, 25500, N'')
INSERT [dbo].[CategoryCar] ([Id], [AdvId], [Brand], [Year], [Fuel], [KMDriven], [Description]) VALUES (6, 6, N'Jeep', 2004, 2, 1258, N'')
INSERT [dbo].[CategoryCar] ([Id], [AdvId], [Brand], [Year], [Fuel], [KMDriven], [Description]) VALUES (7, 7, N'Ford Figo', 2009, 1, 33000, NULL)
INSERT [dbo].[CategoryCar] ([Id], [AdvId], [Brand], [Year], [Fuel], [KMDriven], [Description]) VALUES (8, 8, N'Honda Civic', 2012, 1, 45600, NULL)
INSERT [dbo].[CategoryCar] ([Id], [AdvId], [Brand], [Year], [Fuel], [KMDriven], [Description]) VALUES (9, 9, N'Mahindra Scorpio', 2015, 2, 5000, NULL)
INSERT [dbo].[CategoryCar] ([Id], [AdvId], [Brand], [Year], [Fuel], [KMDriven], [Description]) VALUES (10, 10, N'Maruti Wagon R', 2010, 1, 56000, NULL)
INSERT [dbo].[CategoryCar] ([Id], [AdvId], [Brand], [Year], [Fuel], [KMDriven], [Description]) VALUES (11, 13, N'Maruti', 2015, 2, 12000, NULL)
SET IDENTITY_INSERT [dbo].[CategoryCar] OFF
SET IDENTITY_INSERT [dbo].[CategoryProperty] ON 

INSERT [dbo].[CategoryProperty] ([Id], [AdvId], [Type], [Bedrooms], [Bathrooms], [Furnishing], [Construction], [ListedBy], [BuiltupArea], [CarpetArea], [Maintenance], [TotalFloors], [FloorNo], [CarParking], [VastuCompliant], [MealInclude], [PropertyType]) VALUES (1, 11, N'Builder Floors', 1, 1, N'Semi-Furnished', N'Ready to Move', N'Owner', 575, 425, 570, 3, 2, 0, 0, NULL, 0)
INSERT [dbo].[CategoryProperty] ([Id], [AdvId], [Type], [Bedrooms], [Bathrooms], [Furnishing], [Construction], [ListedBy], [BuiltupArea], [CarpetArea], [Maintenance], [TotalFloors], [FloorNo], [CarParking], [VastuCompliant], [MealInclude], [PropertyType]) VALUES (3, 12, N'Houses & Villas', 3, 4, N'UnFurnished', N'Ready to Move', N'Owner', 2000, 5000, 0, 2, 2, 3, 0, NULL, 0)
INSERT [dbo].[CategoryProperty] ([Id], [AdvId], [Type], [Bedrooms], [Bathrooms], [Furnishing], [Construction], [ListedBy], [BuiltupArea], [CarpetArea], [Maintenance], [TotalFloors], [FloorNo], [CarParking], [VastuCompliant], [MealInclude], [PropertyType]) VALUES (4, 14, N'Builder Floors', 3, 2, N'Semi-Furnished', N'Ready to Move', N'Owner', 900, 750, 550, 3, 5, 1, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[CategoryProperty] OFF
SET IDENTITY_INSERT [dbo].[Fuel] ON 

INSERT [dbo].[Fuel] ([Id], [Fuel], [Description]) VALUES (1, N'PetroL', N'Petrol')
INSERT [dbo].[Fuel] ([Id], [Fuel], [Description]) VALUES (2, N'Diesel', N'Diesel')
INSERT [dbo].[Fuel] ([Id], [Fuel], [Description]) VALUES (3, N'CNG', N'CNG FUel')
INSERT [dbo].[Fuel] ([Id], [Fuel], [Description]) VALUES (4, N'LPG', N'LPG')
SET IDENTITY_INSERT [dbo].[Fuel] OFF
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([Id], [ImageUrl], [AdvId]) VALUES (1, N'../Images/HondaCity.jpg', 2)
INSERT [dbo].[Images] ([Id], [ImageUrl], [AdvId]) VALUES (2, N'../Images/Ertiga.jpg', 3)
INSERT [dbo].[Images] ([Id], [ImageUrl], [AdvId]) VALUES (3, N'../Images/IndicaMarrina.jpg', 4)
INSERT [dbo].[Images] ([Id], [ImageUrl], [AdvId]) VALUES (4, N'../Images/Jeep.jpg', 6)
INSERT [dbo].[Images] ([Id], [ImageUrl], [AdvId]) VALUES (5, N'../Images/FordFigo.jpg', 7)
INSERT [dbo].[Images] ([Id], [ImageUrl], [AdvId]) VALUES (6, N'../Images/HondaCivic.jpg', 8)
INSERT [dbo].[Images] ([Id], [ImageUrl], [AdvId]) VALUES (7, N'../Images/MahindraScorpio.jpg', 9)
INSERT [dbo].[Images] ([Id], [ImageUrl], [AdvId]) VALUES (8, N'../Images/ArmyOfficerCar.jpg', 10)
INSERT [dbo].[Images] ([Id], [ImageUrl], [AdvId]) VALUES (9, N'../Images/1BHKFlat.jpg', 11)
INSERT [dbo].[Images] ([Id], [ImageUrl], [AdvId]) VALUES (10, N'../Images/apartments.jpg', 12)
INSERT [dbo].[Images] ([Id], [ImageUrl], [AdvId]) VALUES (11, N'../Images/HondaCity.jpg', 2)
SET IDENTITY_INSERT [dbo].[Images] OFF
SET IDENTITY_INSERT [dbo].[Location] ON 

INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (1, N'Ahmedabad', 0)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (2, N'Ahmednagar', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (3, N'Ajmer', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (4, N'Allahabad', 0)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (5, N'Ambala', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (6, N'Amravati', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (7, N'Amritsar', 0)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (8, N'Anantnag', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (9, N'Badgam', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (10, N'Bareilly', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (11, N'Bathinda', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (12, N'Bikaner', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (13, N'Chandigarh', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (14, N'Chennai', 0)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (15, N'Coimbatore', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (16, N'Daman', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (17, N'Dehradun', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (18, N'Delhi', 0)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (19, N'Faridabad', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (20, N'Fatehpur', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (21, N'Firozpur', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (22, N'Gandhinagar', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (23, N'Ghaziabad', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (24, N'Gurdaspur', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (25, N'Gurgaon', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (26, N'Gwalior', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (27, N'Hyderabad', 0)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (28, N'Indore', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (29, N'Jalgaon', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (30, N'Jamnagar', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (31, N'Kanpur', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (32, N'Kolhapur', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (33, N'Kolkata', 0)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (34, N'Lucknow', 0)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (35, N'Ludhiana', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (36, N'Meerut', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (37, N'Mumbai', 0)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (38, N'Muzaffarpur', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (39, N'Mysore', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (40, N'Nagpur', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (41, N'Nashik', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (42, N'Patna', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (43, N'Pune', 0)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (44, N'Raichur', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (45, N'Rajkot', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (46, N'Ratnagiri', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (47, N'Satara', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (48, N'Shimla', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (49, N'Thiruvananthapuram', 1)
INSERT [dbo].[Location] ([LocationId], [LocationName], [Type]) VALUES (50, N'Vadodara', 1)
SET IDENTITY_INSERT [dbo].[Location] OFF
INSERT [dbo].[UserDetails] ([Id], [FirstName], [LastName], [EmailID], [Password], [Role], [CreationDate]) VALUES (1, N'Administrator', N'Admin', N'admin@lti.com', N'admin', 1, CAST(N'2019-12-12T00:00:00.000' AS DateTime))
ALTER TABLE [dbo].[Advertise] ADD  CONSTRAINT [CK_Advertise_DefaultDatePosted]  DEFAULT (getdate()) FOR [DatePosted]
GO
ALTER TABLE [dbo].[Advertise]  WITH CHECK ADD  CONSTRAINT [FK_Advertise_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Advertise] CHECK CONSTRAINT [FK_Advertise_Category]
GO
ALTER TABLE [dbo].[Advertise]  WITH CHECK ADD  CONSTRAINT [FK_Advertise_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([LocationId])
GO
ALTER TABLE [dbo].[Advertise] CHECK CONSTRAINT [FK_Advertise_Location]
GO
ALTER TABLE [dbo].[CategoryProperty]  WITH CHECK ADD  CONSTRAINT [FK_CategoryProperty_Advertise] FOREIGN KEY([AdvId])
REFERENCES [dbo].[Advertise] ([AdvId])
GO
ALTER TABLE [dbo].[CategoryProperty] CHECK CONSTRAINT [FK_CategoryProperty_Advertise]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_Advertise] FOREIGN KEY([AdvId])
REFERENCES [dbo].[Advertise] ([AdvId])
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_Advertise]
GO
/****** Object:  StoredProcedure [dbo].[sp_PostAdCar]    Script Date: 20-12-2019 17:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_PostAdCar] 
	@Title varchar(300)
	,@Description varchar(500)
	,@CategoryId int
	,@Price money
	,@LocationId int
	,@Brand varchar(50)
	,@Year int
	,@Fuel int
	,@KMDriven int
	
AS
BEGIN
	DECLARE @AdID int

	SET NOCOUNT ON;

	INSERT INTO [dbo].[Advertise]
           ([Title]
           ,[Description]
           ,[CategoryId]
           ,[Price]
           ,[LocationId]
           ,[DatePosted])
     VALUES
			(
				@Title
				,@Description
				,@CategoryId 
				,@Price 
				,@LocationId 
				,GETDATE()
			)
	SELECT @AdID = SCOPE_IDENTITY()

	INSERT INTO [dbo].[CategoryCar]
	([AdvId]
	,[Brand]
	,[Year]
	,[Fuel]
	,[KMDriven]
	,[Description])
	VALUES
		(
			@AdID
			,@Brand
			,@Year
			,@Fuel
			,@KMDriven
			,''
		)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_SearchAdvertise]    Script Date: 20-12-2019 17:53:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_SearchAdvertise] 
	@SearchText varchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT ad.Description, ad.Title, ad.price
	FROM Advertise ad INNER JOIN Category cat ON ad.CategoryId = cat.CategoryId
					INNER JOIN CategoryCar cc ON  ad.AdvId = CC.AdvId 
					LEFT JOIN Fuel f ON cc.Fuel = f.Id
					LEFT JOIN CategoryProperty  CP ON  ad.AdvId = CP.AdvId
					INNER JOIN Location loc ON ad.LocationId = loc.LocationId
				
	WHERE ad.Title LIKE '%' + @SearchText + '%' 
			OR ad.Description LIKE '%' + @SearchText + '%' 
			OR ad.Price LIKE '%' + @SearchText + '%'
			OR loc.LocationName LIKE '%' + @SearchText + '%'
			OR loc.Type LIKE '%' + @SearchText + '%'
			OR CC.Brand LIKE '%' + @SearchText + '%'
			OR CC.Description LIKE '%' + @SearchText + '%'
			OR f.Fuel LIKE '%' + @SearchText + '%'
			OR CC.KMDriven LIKE '%' + @SearchText + '%'
			OR CC.Year LIKE '%' + @SearchText + '%'
			OR CP.Bathrooms LIKE '%' + @SearchText + '%'
			OR CP.Bedrooms LIKE '%' + @SearchText + '%'
			OR CP.BuiltupArea LIKE '%' + @SearchText + '%'
			OR CP.CarParking LIKE '%' + @SearchText + '%'
			OR CP.CarpetArea LIKE '%' + @SearchText + '%'
			OR CP.Construction LIKE '%' + @SearchText + '%'
			OR CP.Construction LIKE '%' + @SearchText + '%'
			OR CP.FloorNo LIKE '%' + @SearchText + '%'
			OR CP.Furnishing LIKE '%' + @SearchText + '%'
			OR CP.ListedBy LIKE '%' + @SearchText + '%'
			OR CP.Maintenance LIKE '%' + @SearchText + '%'
			OR CP.MealInclude LIKE '%' + @SearchText + '%'
			OR CP.TotalFloors LIKE '%' + @SearchText + '%'
END
GO
USE [master]
GO
ALTER DATABASE [KharidoBecho] SET  READ_WRITE 
GO
