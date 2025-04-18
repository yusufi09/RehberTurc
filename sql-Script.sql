USE [RehberTurc]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AirbnbComments]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AirbnbComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AirbnbId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AirbnbComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AirbnbImages]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AirbnbImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[AirbnbId] [int] NOT NULL,
 CONSTRAINT [PK_AirbnbImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Airbnbs]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airbnbs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_Airbnbs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CafeComments]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CafeComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CafeId] [int] NOT NULL,
	[CustomerId] [int] NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CafeComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CafeImages]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CafeImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[CafeId] [int] NOT NULL,
 CONSTRAINT [PK_CafeImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cafes]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cafes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_Cafes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarComments]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NOT NULL,
	[CustomerId] [int] NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CarComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarImages]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[CarId] [int] NOT NULL,
 CONSTRAINT [PK_CarImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Model] [nvarchar](max) NOT NULL,
	[Brand] [nvarchar](max) NOT NULL,
	[PricePerDay] [decimal](18, 2) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Image] [nchar](10) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tittle] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityComments]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityId] [int] NOT NULL,
	[CustomerId] [int] NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CityComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityImage]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_CityImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[EmergencyNumber] [nvarchar](max) NOT NULL,
	[Image] [nchar](10) NULL,
	[Byrk] [nchar](10) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[CreditCard] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[CityId] [int] NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[Balance] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KulturComments]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KulturComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KulturId] [int] NOT NULL,
	[CustomerId] [int] NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_KulturComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KulturImages]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KulturImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[KulturId] [int] NOT NULL,
 CONSTRAINT [PK_KulturImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kulturs]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kulturs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_Kulturs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtelComments]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtelComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OtelId] [int] NOT NULL,
	[CustomerId] [int] NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OtelComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtelImages]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtelImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[OtelId] [int] NOT NULL,
 CONSTRAINT [PK_OtelImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otels]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Kunye] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_Otels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [nvarchar](max) NOT NULL,
	[Capacity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[RoomTypeId] [int] NOT NULL,
	[AirbnbId] [int] NULL,
	[OtelId] [int] NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomType]    Script Date: 15.04.2025 02:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_RoomType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250414204151_CreateDatabase', N'8.0.14')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (5, N'Spor', N'sports.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (6, N'Hotel', N'hotel.jpg ')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (7, N'Restourant', N'rest.jpg  ')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (8, N'Alışveriş', N'shop.jpg  ')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (9, N'Art & Kultur', N'art.jpg   ')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (10, N'NightLife', N'night.jpg ')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([Id], [Tittle], [Description], [CountryId]) VALUES (2, N'İstanbul', N'İstanbul Dünyanın İstanbul, tarih boyunca üç büyük imparatorluğa—Roma, Bizans ve Osmanlı—başkentlik yapmış eşsiz bir şehirdir. MÖ 660 yılında Byzantion adıyla kurulan şehir, 330 yılında Roma İmparatoru Konstantin tarafından Konstantinopolis olarak yeniden inşa edildi ve Doğu Roma’nın başkenti oldu. 1453’te Fatih Sultan Mehmet’in fethiyle Osmanlı topraklarına katılan İstanbul, yüzyıllar boyunca kültür, ticaret ve sanatın merkezi haline geldi. Bugün, tarihi dokusuyla geçmişin izlerini taşıyan modern bir metropol olarak dünyanın en önemli şehirlerinden biridir.', 1)
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[CityComments] ON 

INSERT [dbo].[CityComments] ([Id], [CityId], [CustomerId], [Text]) VALUES (1, 2, 2, N'Gültepe diye bir semt var istanbulun Merkezii')
SET IDENTITY_INSERT [dbo].[CityComments] OFF
GO
SET IDENTITY_INSERT [dbo].[CityImage] ON 

INSERT [dbo].[CityImage] ([Id], [Url], [CityId]) VALUES (1, N'https://www.google.com.tr/url?sa=i&url=https%3A%2F%2Fwww.enuygun.com%2Fbilgi%2Fistanbul-da-manzara-izlemek-icin-en-iyi-7-yer%2F&psig=AOvVaw1JH7xvjl6nARDMLn-yDBaU&ust=1744750654878000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMj5vuW02IwDFQAAAAAdAAAAABAE', 2)
INSERT [dbo].[CityImage] ([Id], [Url], [CityId]) VALUES (2, N'3.png', 2)
SET IDENTITY_INSERT [dbo].[CityImage] OFF
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([Id], [Name], [EmergencyNumber], [Image], [Byrk]) VALUES (1, N'Türkiye', N'112', N'5.png     ', N'trk.jpg   ')
INSERT [dbo].[Countries] ([Id], [Name], [EmergencyNumber], [Image], [Byrk]) VALUES (2, N'İtalya', N'986', N'italy3.jpg', N'flag2.jpg ')
INSERT [dbo].[Countries] ([Id], [Name], [EmergencyNumber], [Image], [Byrk]) VALUES (3, N'Fransa', N'11880', N'fransa.jpg', N'flag3.jpg ')
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [Name], [Address], [Email], [Phone], [City], [CreditCard], [Password], [Surname], [CityId], [Location], [Balance]) VALUES (2, N'Yusufi Açari', N'Semt-i Diyarı Gültepe', N'yusf7acr7@gmail.com', N'05373923523', N'İstanbul', N'6561610141586575556', N'2525', N'sör', 2, N'HerYer', CAST(5.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
ALTER TABLE [dbo].[AirbnbComments]  WITH CHECK ADD  CONSTRAINT [FK_AirbnbComments_Airbnbs_AirbnbId] FOREIGN KEY([AirbnbId])
REFERENCES [dbo].[Airbnbs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AirbnbComments] CHECK CONSTRAINT [FK_AirbnbComments_Airbnbs_AirbnbId]
GO
ALTER TABLE [dbo].[AirbnbComments]  WITH CHECK ADD  CONSTRAINT [FK_AirbnbComments_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[AirbnbComments] CHECK CONSTRAINT [FK_AirbnbComments_Customers_CustomerId]
GO
ALTER TABLE [dbo].[AirbnbImages]  WITH CHECK ADD  CONSTRAINT [FK_AirbnbImages_Airbnbs_AirbnbId] FOREIGN KEY([AirbnbId])
REFERENCES [dbo].[Airbnbs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AirbnbImages] CHECK CONSTRAINT [FK_AirbnbImages_Airbnbs_AirbnbId]
GO
ALTER TABLE [dbo].[Airbnbs]  WITH CHECK ADD  CONSTRAINT [FK_Airbnbs_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Airbnbs] CHECK CONSTRAINT [FK_Airbnbs_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Airbnbs]  WITH CHECK ADD  CONSTRAINT [FK_Airbnbs_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Airbnbs] CHECK CONSTRAINT [FK_Airbnbs_Cities_CityId]
GO
ALTER TABLE [dbo].[CafeComments]  WITH CHECK ADD  CONSTRAINT [FK_CafeComments_Cafes_CafeId] FOREIGN KEY([CafeId])
REFERENCES [dbo].[Cafes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CafeComments] CHECK CONSTRAINT [FK_CafeComments_Cafes_CafeId]
GO
ALTER TABLE [dbo].[CafeComments]  WITH CHECK ADD  CONSTRAINT [FK_CafeComments_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[CafeComments] CHECK CONSTRAINT [FK_CafeComments_Customers_CustomerId]
GO
ALTER TABLE [dbo].[CafeImages]  WITH CHECK ADD  CONSTRAINT [FK_CafeImages_Cafes_CafeId] FOREIGN KEY([CafeId])
REFERENCES [dbo].[Cafes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CafeImages] CHECK CONSTRAINT [FK_CafeImages_Cafes_CafeId]
GO
ALTER TABLE [dbo].[Cafes]  WITH CHECK ADD  CONSTRAINT [FK_Cafes_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cafes] CHECK CONSTRAINT [FK_Cafes_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Cafes]  WITH CHECK ADD  CONSTRAINT [FK_Cafes_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cafes] CHECK CONSTRAINT [FK_Cafes_Cities_CityId]
GO
ALTER TABLE [dbo].[CarComments]  WITH CHECK ADD  CONSTRAINT [FK_CarComments_Cars_CarId] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarComments] CHECK CONSTRAINT [FK_CarComments_Cars_CarId]
GO
ALTER TABLE [dbo].[CarComments]  WITH CHECK ADD  CONSTRAINT [FK_CarComments_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[CarComments] CHECK CONSTRAINT [FK_CarComments_Customers_CustomerId]
GO
ALTER TABLE [dbo].[CarImages]  WITH CHECK ADD  CONSTRAINT [FK_CarImages_Cars_CarId] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarImages] CHECK CONSTRAINT [FK_CarImages_Cars_CarId]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Cities_CityId]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_Countries_CountryId]
GO
ALTER TABLE [dbo].[CityComments]  WITH CHECK ADD  CONSTRAINT [FK_CityComments_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CityComments] CHECK CONSTRAINT [FK_CityComments_Cities_CityId]
GO
ALTER TABLE [dbo].[CityComments]  WITH CHECK ADD  CONSTRAINT [FK_CityComments_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[CityComments] CHECK CONSTRAINT [FK_CityComments_Customers_CustomerId]
GO
ALTER TABLE [dbo].[CityImage]  WITH CHECK ADD  CONSTRAINT [FK_CityImage_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CityImage] CHECK CONSTRAINT [FK_CityImage_Cities_CityId]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Cities_CityId]
GO
ALTER TABLE [dbo].[KulturComments]  WITH CHECK ADD  CONSTRAINT [FK_KulturComments_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[KulturComments] CHECK CONSTRAINT [FK_KulturComments_Customers_CustomerId]
GO
ALTER TABLE [dbo].[KulturComments]  WITH CHECK ADD  CONSTRAINT [FK_KulturComments_Kulturs_KulturId] FOREIGN KEY([KulturId])
REFERENCES [dbo].[Kulturs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KulturComments] CHECK CONSTRAINT [FK_KulturComments_Kulturs_KulturId]
GO
ALTER TABLE [dbo].[KulturImages]  WITH CHECK ADD  CONSTRAINT [FK_KulturImages_Kulturs_KulturId] FOREIGN KEY([KulturId])
REFERENCES [dbo].[Kulturs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KulturImages] CHECK CONSTRAINT [FK_KulturImages_Kulturs_KulturId]
GO
ALTER TABLE [dbo].[Kulturs]  WITH CHECK ADD  CONSTRAINT [FK_Kulturs_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kulturs] CHECK CONSTRAINT [FK_Kulturs_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Kulturs]  WITH CHECK ADD  CONSTRAINT [FK_Kulturs_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kulturs] CHECK CONSTRAINT [FK_Kulturs_Cities_CityId]
GO
ALTER TABLE [dbo].[OtelComments]  WITH CHECK ADD  CONSTRAINT [FK_OtelComments_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[OtelComments] CHECK CONSTRAINT [FK_OtelComments_Customers_CustomerId]
GO
ALTER TABLE [dbo].[OtelComments]  WITH CHECK ADD  CONSTRAINT [FK_OtelComments_Otels_OtelId] FOREIGN KEY([OtelId])
REFERENCES [dbo].[Otels] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OtelComments] CHECK CONSTRAINT [FK_OtelComments_Otels_OtelId]
GO
ALTER TABLE [dbo].[OtelImages]  WITH CHECK ADD  CONSTRAINT [FK_OtelImages_Otels_OtelId] FOREIGN KEY([OtelId])
REFERENCES [dbo].[Otels] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OtelImages] CHECK CONSTRAINT [FK_OtelImages_Otels_OtelId]
GO
ALTER TABLE [dbo].[Otels]  WITH CHECK ADD  CONSTRAINT [FK_Otels_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Otels] CHECK CONSTRAINT [FK_Otels_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Otels]  WITH CHECK ADD  CONSTRAINT [FK_Otels_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Otels] CHECK CONSTRAINT [FK_Otels_Cities_CityId]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Airbnbs_AirbnbId] FOREIGN KEY([AirbnbId])
REFERENCES [dbo].[Airbnbs] ([Id])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Airbnbs_AirbnbId]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Otels_OtelId] FOREIGN KEY([OtelId])
REFERENCES [dbo].[Otels] ([Id])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Otels_OtelId]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomType_RoomTypeId] FOREIGN KEY([RoomTypeId])
REFERENCES [dbo].[RoomType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_RoomType_RoomTypeId]
GO
