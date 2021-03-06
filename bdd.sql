USE [ECartDB]
GO
/****** Object:  Schema [Master]    Script Date: 08/07/2022 18:45:11 ******/
CREATE SCHEMA [Master]
GO
/****** Object:  Table [Master].[Categories]    Script Date: 08/07/2022 18:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Master].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryCode] [varchar](50) NOT NULL,
	[CategoryName] [nvarchar](550) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Master].[Items]    Script Date: 08/07/2022 18:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Master].[Items](
	[ItemId] [uniqueidentifier] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ItemName] [varchar](250) NOT NULL,
	[ItemCode] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[ItemPrice] [decimal](18, 2) NOT NULL,
	[ImageName] [varchar](500) NULL,
	[ImagePath] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [Master].[Categories] ON 

INSERT [Master].[Categories] ([CategoryId], [CategoryCode], [CategoryName]) VALUES (1, N'Mob', N'Mobile')
INSERT [Master].[Categories] ([CategoryId], [CategoryCode], [CategoryName]) VALUES (2, N'Desk', N'Desktop')
INSERT [Master].[Categories] ([CategoryId], [CategoryCode], [CategoryName]) VALUES (3, N'TShirt', N'TShirt')
INSERT [Master].[Categories] ([CategoryId], [CategoryCode], [CategoryName]) VALUES (4, N'Jeans', N'Jeans')
INSERT [Master].[Categories] ([CategoryId], [CategoryCode], [CategoryName]) VALUES (5, N'Electronics', N'Electronics')
INSERT [Master].[Categories] ([CategoryId], [CategoryCode], [CategoryName]) VALUES (6, N'Brain', N'Brain')
SET IDENTITY_INSERT [Master].[Categories] OFF
GO
INSERT [Master].[Items] ([ItemId], [CategoryId], [ItemName], [ItemCode], [Description], [ItemPrice], [ImageName], [ImagePath]) VALUES (N'ab574b39-0770-4d1e-9f8f-12dfda3a5111', 1, N'Samsung', N'Samsung', N'Samsung', CAST(25000.00 AS Decimal(18, 2)), N'samsung-mobiles-500x500.png', N'~/Images/429d5d08-6c6a-488b-af53-82a9dfcc106a.png')
INSERT [Master].[Items] ([ItemId], [CategoryId], [ItemName], [ItemCode], [Description], [ItemPrice], [ImageName], [ImagePath]) VALUES (N'61284832-63d3-40f2-b64a-243994044b1a', 4, N'Desktop Part I', N'Desktop Part I', N'if you are just storing the returned text into a variable as in the above example', CAST(34534.00 AS Decimal(18, 2)), N'71hTP5nz5eL._SX355_.jpg', N'~/Images/f443027d-750a-4f53-97c9-3296d8ff65b5.jpg')
INSERT [Master].[Items] ([ItemId], [CategoryId], [ItemName], [ItemCode], [Description], [ItemPrice], [ImageName], [ImagePath]) VALUES (N'66a55e33-0f63-4ec3-a3cd-32b87b900438', 1, N'Desktop Part II', N'Desktop Part II', N'if you are just storing the returned text into a variable as in the above example', CAST(34534.00 AS Decimal(18, 2)), N'71hTP5nz5eL._SX355_.jpg', N'~/Images/8cd5ac31-28ac-4262-b548-501c60aea974.jpg')
INSERT [Master].[Items] ([ItemId], [CategoryId], [ItemName], [ItemCode], [Description], [ItemPrice], [ImageName], [ImagePath]) VALUES (N'fae9eed6-4f75-4830-88d8-3dad128af506', 1, N'Samsung Part I', N'Samsung Part I', N'if you are just storing the returned text into a variable as in the above example', CAST(50000.00 AS Decimal(18, 2)), N'iphone-6s-space-grey-front.png', N'~/Images/db12995c-f19d-4695-a599-4a005fff87a2.png')
INSERT [Master].[Items] ([ItemId], [CategoryId], [ItemName], [ItemCode], [Description], [ItemPrice], [ImageName], [ImagePath]) VALUES (N'e6c5fae7-75d4-4efb-8ba2-57e8680e32a1', 1, N'TShirt I', N'TShirt I', N'if you are just storing the returned text into a variable as in the above example', CAST(234.00 AS Decimal(18, 2)), N'ORANGE__95465.1411339606.1280.1280.jpg', N'~/Images/3f80e6b3-bb9c-4403-8829-4225e5264969.jpg')
INSERT [Master].[Items] ([ItemId], [CategoryId], [ItemName], [ItemCode], [Description], [ItemPrice], [ImageName], [ImagePath]) VALUES (N'816c2ea2-4b4c-4829-92a9-60dec35ee414', 1, N'TShirt II', N'TShirt II', N'if you are just storing the returned text into a variable as in the above example', CAST(32.00 AS Decimal(18, 2)), N'download.jfif', N'~/Images/9f61655c-c9a7-4d4d-af33-0d7609fb74b0.jfif')
INSERT [Master].[Items] ([ItemId], [CategoryId], [ItemName], [ItemCode], [Description], [ItemPrice], [ImageName], [ImagePath]) VALUES (N'638cfd0d-f3d9-4994-9ced-64e47293cdc3', 1, N'TShirt III', N'TShirt III', N'if you are just storing the returned text into a variable as in the above example', CAST(34534.00 AS Decimal(18, 2)), N'ORANGE__95465.1411339606.1280.1280.jpg', N'~/Images/3790439f-286a-4740-bb6e-c84ac94de7e9.jpg')
INSERT [Master].[Items] ([ItemId], [CategoryId], [ItemName], [ItemCode], [Description], [ItemPrice], [ImageName], [ImagePath]) VALUES (N'71ddb589-6523-48ee-b932-70f7fb6ab7c1', 1, N'Mouse I', N'Mouse I', N'if you are just storing the returned text into a variable as in the above example', CAST(23.00 AS Decimal(18, 2)), N'RE2crYN.png', N'~/Images/96b908ef-6f2d-44d2-a742-b265fa47c29c.png')
INSERT [Master].[Items] ([ItemId], [CategoryId], [ItemName], [ItemCode], [Description], [ItemPrice], [ImageName], [ImagePath]) VALUES (N'c9bf1659-b5ae-4e38-b28f-799ba44f0cf1', 1, N'Samsung45', N'Samsung45', N'Samsung454', CAST(35.00 AS Decimal(18, 2)), N'download (1).jfif', N'~/Images/c548f302-e90e-47f8-b5ca-09ffe78a36dd.jfif')
INSERT [Master].[Items] ([ItemId], [CategoryId], [ItemName], [ItemCode], [Description], [ItemPrice], [ImageName], [ImagePath]) VALUES (N'7c51deb2-5d21-4cf3-8c4c-a6d9f2e8a5c6', 4, N'Desktop Part I', N'Desktop Part I', N'if you are just storing the returned text into a variable as in the above example', CAST(34534.00 AS Decimal(18, 2)), N'71hTP5nz5eL._SX355_.jpg', N'~/Images/ca0e0cdf-575d-4b38-a453-5f5aabe26d66.jpg')
INSERT [Master].[Items] ([ItemId], [CategoryId], [ItemName], [ItemCode], [Description], [ItemPrice], [ImageName], [ImagePath]) VALUES (N'59ee2120-7741-4fba-bb27-be8216c43cec', 5, N'Jeans', N'Blue Jeans', N'if you are just storing the returned text into a variable as in the above example', CAST(234324.00 AS Decimal(18, 2)), N'1.jfif', N'~/Images/13f45d7b-e6c3-48da-99f3-be961f885fe9.jfif')
GO
ALTER TABLE [Master].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Categories] FOREIGN KEY([CategoryId])
REFERENCES [Master].[Categories] ([CategoryId])
GO
ALTER TABLE [Master].[Items] CHECK CONSTRAINT [FK_Items_Categories]
GO
