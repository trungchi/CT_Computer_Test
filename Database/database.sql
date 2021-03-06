USE [CTComputer]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2/20/2019 10:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Access] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bonus]    Script Date: 2/20/2019 10:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bonus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [varchar](20) NOT NULL,
	[Type] [bit] NOT NULL,
	[Amount] [float] NULL,
	[Reason] [nvarchar](50) NULL,
	[DateWrite] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/20/2019 10:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameCategory] [nvarchar](50) NOT NULL,
	[NameCategoryEN] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contracts]    Script Date: 2/20/2019 10:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contracts](
	[ID] [varchar](20) NOT NULL,
	[NameContract] [nvarchar](50) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NULL,
	[Subsidize] [int] NULL,
	[Insurrance] [float] NULL,
	[Salary] [float] NULL,
	[Status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2/20/2019 10:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[ID] [varchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Address] [nvarchar](50) NOT NULL,
	[NumberPhone] [nvarchar](25) NOT NULL,
	[Birthday] [datetime] NOT NULL,
	[Gender] [int] NOT NULL,
	[Activated] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 2/20/2019 10:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departments](
	[ID] [varchar](12) NOT NULL,
	[NameDepartment] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2/20/2019 10:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [varchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[NameEmployee] [nvarchar](50) NOT NULL,
	[Gender] [int] NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Address] [nvarchar](50) NOT NULL,
	[NumberPhone] [nvarchar](25) NOT NULL,
	[Birthday] [datetime] NOT NULL,
	[Access] [int] NOT NULL,
	[Activated] [bit] NOT NULL,
	[DepartmentID] [varchar](12) NOT NULL,
	[EmployeeTypeID] [varchar](12) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeTypes]    Script Date: 2/20/2019 10:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeTypes](
	[ID] [varchar](12) NOT NULL,
	[NameEmployeeType] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2/20/2019 10:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[Discount] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2/20/2019 10:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[RequireDate] [datetime] NOT NULL,
	[Amount] [float] NOT NULL,
	[Receiver] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Status] [int] NOT NULL,
	[NumberPhone] [varchar](15) NULL,
	[CustomerID] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producers]    Script Date: 2/20/2019 10:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameProducer] [nvarchar](50) NOT NULL,
	[Logo] [nvarchar](max) NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[NumberPhone] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/20/2019 10:12:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameProduct] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[ProductDate] [datetime] NOT NULL,
	[UnitBrief] [nvarchar](50) NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Discount] [float] NULL,
	[Description] [nvarchar](1000) NULL,
	[Views] [int] NULL,
	[Available] [bit] NULL,
	[Special] [bit] NULL,
	[Latest] [bit] NULL,
	[Status] [bit] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ProducerID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Admin] ([Username], [Password], [FullName], [Access]) VALUES (N'trungchi@gmail.com', N'123456', N'Nguyen Trung Chi', 1)
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [NameCategory], [NameCategoryEN]) VALUES (1, N'Điện Thoại', N'Phone')
INSERT [dbo].[Categories] ([ID], [NameCategory], [NameCategoryEN]) VALUES (2, N'Máy Tính', N'Computer')
INSERT [dbo].[Categories] ([ID], [NameCategory], [NameCategoryEN]) VALUES (3, N'Máy Ảnh', N'Camera')
INSERT [dbo].[Categories] ([ID], [NameCategory], [NameCategoryEN]) VALUES (4, N'Vô Tuyến', N'Television')
SET IDENTITY_INSERT [dbo].[Categories] OFF
INSERT [dbo].[Contracts] ([ID], [NameContract], [StartTime], [EndTime], [Subsidize], [Insurrance], [Salary], [Status]) VALUES (N'khacthinh', N'HD Khong Xac Dinh Thoi Han', CAST(N'2019-01-23 00:00:00.000' AS DateTime), NULL, 500000, 0.08, 10000000, 1)
INSERT [dbo].[Customers] ([ID], [Email], [Password], [FullName], [Photo], [Address], [NumberPhone], [Birthday], [Gender], [Activated]) VALUES (N'abc', N'trungchi92@gmail.com', N'123456', N'ABC', N'avatar.png', N'Dak Lak', N'0344593927', CAST(N'1995-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Customers] ([ID], [Email], [Password], [FullName], [Photo], [Address], [NumberPhone], [Birthday], [Gender], [Activated]) VALUES (N'trungchi', N'trungchi92@gmail.com', N'123456', N'Nguyễn Trung Chí', N'chí.jpg', N'TP Ho Chi Minh', N'0344593927', CAST(N'1992-12-10 00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Departments] ([ID], [NameDepartment]) VALUES (N'PBIT', N'Phòng IT')
INSERT [dbo].[Departments] ([ID], [NameDepartment]) VALUES (N'PBKT', N'Phòng Kế Toán')
INSERT [dbo].[Departments] ([ID], [NameDepartment]) VALUES (N'PBMKT', N'Phòng Marketting')
INSERT [dbo].[Departments] ([ID], [NameDepartment]) VALUES (N'PBNS', N'Phòng Nhân Sự')
INSERT [dbo].[Employees] ([ID], [Email], [Password], [NameEmployee], [Gender], [Photo], [Address], [NumberPhone], [Birthday], [Access], [Activated], [DepartmentID], [EmployeeTypeID]) VALUES (N'khacthinh', N'trungchi92@gmail.com', N'123456', N'Nguyễn Khắc Thịnh', 1, N'avatar.png', N'HCM', N'0344593927', CAST(N'1995-01-01 00:00:00.000' AS DateTime), 1, 0, N'PBIT', N'LNV1')
INSERT [dbo].[EmployeeTypes] ([ID], [NameEmployeeType]) VALUES (N'LNV1', N'FullTime')
INSERT [dbo].[EmployeeTypes] ([ID], [NameEmployeeType]) VALUES (N'LNV2', N'PartTime')
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID], [Quantity], [Amount], [Discount]) VALUES (17, 11, 57, 1, 15000000, 0.08)
INSERT [dbo].[OrderDetails] ([ID], [OrderID], [ProductID], [Quantity], [Amount], [Discount]) VALUES (18, 11, 60, 1, 10000000, 0.03)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [OrderDate], [RequireDate], [Amount], [Receiver], [Address], [Description], [Status], [NumberPhone], [CustomerID]) VALUES (11, CAST(N'2019-01-24 00:00:00.000' AS DateTime), CAST(N'2019-01-19 00:00:00.000' AS DateTime), 23500000, N'ABC', N'HCM', N'', 4, N'0344593927', N'abc')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Producers] ON 

INSERT [dbo].[Producers] ([ID], [NameProducer], [Logo], [Address], [Email], [NumberPhone]) VALUES (1, N'Apple', N'Apple.png', N'Hoa Kỳ', N'apple@gmail.com', N'123456789')
INSERT [dbo].[Producers] ([ID], [NameProducer], [Logo], [Address], [Email], [NumberPhone]) VALUES (2, N'Samsung', N'Samsung.jpg', N'Hàn Quốc', N'samsung@gmail.com', N'123456789')
INSERT [dbo].[Producers] ([ID], [NameProducer], [Logo], [Address], [Email], [NumberPhone]) VALUES (3, N'OPPO', N'Oppo.jpg', N'Hàn Quốc', N'oppo@gmail.com', N'123456789')
INSERT [dbo].[Producers] ([ID], [NameProducer], [Logo], [Address], [Email], [NumberPhone]) VALUES (4, N'Nokia', N'Nokia.jpg', N'Hàn Quốc', N'nokia@gmail.com', N'123456789')
INSERT [dbo].[Producers] ([ID], [NameProducer], [Logo], [Address], [Email], [NumberPhone]) VALUES (5, N'Dell', N'Dell.png', N'Hoa Kỳ', N'dell@gmail.com', N'123456789')
INSERT [dbo].[Producers] ([ID], [NameProducer], [Logo], [Address], [Email], [NumberPhone]) VALUES (6, N'Acer', N'Acer.png', N'Nhật Bản', N'acer@gmail.com', N'123456789')
INSERT [dbo].[Producers] ([ID], [NameProducer], [Logo], [Address], [Email], [NumberPhone]) VALUES (7, N'Asus', N'Asus.png', N'Đài Loan', N'asus@gmail.com', N'123456789')
INSERT [dbo].[Producers] ([ID], [NameProducer], [Logo], [Address], [Email], [NumberPhone]) VALUES (8, N'Msi', N'Msi.jpg', N'Nhật Bản', N'msi@gmail.com', N'123456789')
INSERT [dbo].[Producers] ([ID], [NameProducer], [Logo], [Address], [Email], [NumberPhone]) VALUES (9, N'Canon', N'Canon.png', N'Nhật Bản', N'canon@gmail.com', N'123456789')
INSERT [dbo].[Producers] ([ID], [NameProducer], [Logo], [Address], [Email], [NumberPhone]) VALUES (10, N'Sony ', N'Sony.jpg', N'Hoa Kỳ', N'sony@gmail.com', N'123456789')
INSERT [dbo].[Producers] ([ID], [NameProducer], [Logo], [Address], [Email], [NumberPhone]) VALUES (11, N'Nikon  ', N'Nikon.png', N'Nhật Bản', N'nikon@gmail.com', N'123456789')
SET IDENTITY_INSERT [dbo].[Producers] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (53, N'Laptop', N'14528.jpg', 10, CAST(N'2010-10-10 00:00:00.000' AS DateTime), N'Cái', 15000000, 0, N'Máy tính cấu hình mạnh', 2, 1, 1, 1, 1, 2, 1)
INSERT [dbo].[Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (54, N'Máy tính', N'hp-pavilion-570-1_8.png', 5, CAST(N'2005-10-01 00:00:00.000' AS DateTime), N'Cái', 20000000, 0.03, N'CPU Acer', 4, 1, 1, 1, 1, 2, 7)
INSERT [dbo].[Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (55, N'Laptop Dell Inspiron 3576 i5', N'MT008.jpg', 1, CAST(N'2010-10-10 00:00:00.000' AS DateTime), N'Cái', 15000000, 0.05, N'Mô tả
Tên sản phẩm: Máy tính xách tay/ Laptop LG 14ZD970-G.AX52A5 (I5-7200U) (Trắng)

- CPU: Intel Core i5-7200U ( 2.5 GHz - 3.1 GHz / 3MB / 2 nhân, 4 luồng ) 
- Màn hình: 14" IPS ( 1920 x 1080 ) , không cảm ứng 
- RAM: 1 x 8GB DDR4 2133MHz 
- Đồ họa: Intel HD Graphics 620 
- Lưu trữ: 256GB SSD M.2 SATA 
- Hệ điều hành: Free DOS 
- Pin: 60 Wh Pin liền , khối lượng: 0.9 kg', 2, 1, 0, 0, 1, 2, 5)
INSERT [dbo].[Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (56, N'Laptop LG Gram 14ZD970-G.AX52A', N'MT015.jpg', 12, CAST(N'2010-10-10 00:00:00.000' AS DateTime), N'Cái', 12000000, 0.03, N'', 1, 1, 0, 1, 1, 2, 2)
INSERT [dbo].[Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (57, N'Laptop Acer Nitro 5 AN515-52-5', N'MT012.jpg', 1, CAST(N'2010-10-10 00:00:00.000' AS DateTime), N'Cái', 15000000, 0.08, N'', 4, 1, 0, 0, 1, 2, 6)
INSERT [dbo].[Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (58, N'Laptop Lenovo Yoga 370-20JJS4Y', N'laptop-dell-inspiron-13-7373-c3ti501ow-4.jpg', 2, CAST(N'2014-10-12 00:00:00.000' AS DateTime), N'Cái', 22000000, 0.05, N'', NULL, 1, 1, 1, 1, 2, 1)
INSERT [dbo].[Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (59, N'Laptop Dell Inspiron 3576 i5 8', N'MT001.jpg', 7, CAST(N'2014-10-12 00:00:00.000' AS DateTime), N'Cái', 25000000, 0.03, N'', NULL, 1, 0, 0, 1, 2, 5)
INSERT [dbo].[Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (60, N'Điện thoại Samsung Galaxy Note', N'DT001.jpg', 1, CAST(N'2010-10-10 00:00:00.000' AS DateTime), N'Chiếc', 10000000, 0.03, N'', NULL, 1, 0, 0, 1, 1, 2)
INSERT [dbo].[Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (61, N'Điện thoại Samsung Galaxy A7', N'DT007.jpg', 20, CAST(N'2014-10-12 00:00:00.000' AS DateTime), N'Chiếc', 8000000, NULL, N'', NULL, 1, 0, 0, 1, 1, 2)
INSERT [dbo].[Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (62, N'Laptop i3', N'14528.jpg', 11, CAST(N'2010-10-10 00:00:00.000' AS DateTime), N'Cái', 17000000, 0.03, N'', NULL, 1, 0, 0, 1, 2, 5)
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[Bonus]  WITH CHECK ADD  CONSTRAINT [FK_Bonus_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[Bonus] CHECK CONSTRAINT [FK_Bonus_Employees]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK_Employees] FOREIGN KEY([ID])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK_Employees]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([EmployeeTypeID])
REFERENCES [dbo].[EmployeeTypes] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Producers] FOREIGN KEY([ProducerID])
REFERENCES [dbo].[Producers] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Producers]
GO
