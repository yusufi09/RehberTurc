USE [RehberTurc]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 17.05.2025 21:01:38 ******/
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
/****** Object:  Table [dbo].[AirbnbComments]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AirbnbComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AirbnbId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AirbnbComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AirbnbFavorites]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AirbnbFavorites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AirbnbId] [nvarchar](max) NOT NULL,
	[AirbnbId1] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[AddedDate] [datetime2](7) NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UserRating] [decimal](18, 2) NULL,
 CONSTRAINT [PK_AirbnbFavorites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AirbnbImages]    Script Date: 17.05.2025 21:01:38 ******/
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
/****** Object:  Table [dbo].[Airbnbs]    Script Date: 17.05.2025 21:01:38 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[CreditCard] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[CityId] [int] NULL,
	[Location] [nvarchar](max) NULL,
	[Balance] [decimal](18, 2) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CafeComments]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CafeComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CafeId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CafeComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CafeFavorites]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CafeFavorites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CafeId] [nvarchar](max) NOT NULL,
	[CafeId1] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[AddedDate] [datetime2](7) NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UserRating] [decimal](18, 2) NULL,
 CONSTRAINT [PK_CafeFavorites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CafeImages]    Script Date: 17.05.2025 21:01:38 ******/
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
/****** Object:  Table [dbo].[Cafes]    Script Date: 17.05.2025 21:01:38 ******/
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
/****** Object:  Table [dbo].[CarComments]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CarComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarFavorites]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarFavorites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [nvarchar](max) NOT NULL,
	[CarId1] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[AddedDate] [datetime2](7) NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UserRating] [decimal](18, 2) NULL,
 CONSTRAINT [PK_CarFavorites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarImages]    Script Date: 17.05.2025 21:01:38 ******/
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
/****** Object:  Table [dbo].[Cars]    Script Date: 17.05.2025 21:01:38 ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tittle] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CountryId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityComments]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CityComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityFavorites]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityFavorites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityId] [nvarchar](max) NOT NULL,
	[CityId1] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[AddedDate] [datetime2](7) NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UserRating] [decimal](18, 2) NULL,
 CONSTRAINT [PK_CityFavorites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityImage]    Script Date: 17.05.2025 21:01:38 ******/
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
/****** Object:  Table [dbo].[Countries]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[EmergencyNumber] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Byrk] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KulturComments]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KulturComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KulturId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_KulturComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KulturFavorites]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KulturFavorites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KulturId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[AddedDate] [datetime2](7) NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UserRating] [decimal](18, 2) NULL,
 CONSTRAINT [PK_KulturFavorites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KulturImages]    Script Date: 17.05.2025 21:01:38 ******/
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
/****** Object:  Table [dbo].[Kulturs]    Script Date: 17.05.2025 21:01:38 ******/
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
/****** Object:  Table [dbo].[Mails]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[From] [nvarchar](max) NOT NULL,
	[To] [nvarchar](max) NOT NULL,
	[Subject] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[IsHtml] [bit] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_Mails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtelComments]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtelComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OtelId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OtelComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtelFavorites]    Script Date: 17.05.2025 21:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtelFavorites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OtelId] [nvarchar](max) NOT NULL,
	[OtelId1] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[AddedDate] [datetime2](7) NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UserRating] [decimal](18, 2) NULL,
 CONSTRAINT [PK_OtelFavorites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtelImages]    Script Date: 17.05.2025 21:01:38 ******/
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
/****** Object:  Table [dbo].[Otels]    Script Date: 17.05.2025 21:01:38 ******/
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
/****** Object:  Table [dbo].[Room]    Script Date: 17.05.2025 21:01:38 ******/
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
/****** Object:  Table [dbo].[RoomType]    Script Date: 17.05.2025 21:01:38 ******/
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250415210747_CreateDatabase', N'8.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250421205652_CreateDatabase', N'8.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250509063112_FixCustomerTable', N'8.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250511233606_AddingMailCarting', N'8.0.14')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Address], [City], [CreditCard], [Surname], [CityId], [Location], [Balance], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1', N'Yusuf', N'İslam', N'Gültepe Mesleks', N'İstanbul', N'5555444433332222', N'Açar', 1, N'Gelincik çıkmazı', CAST(111.00 AS Decimal(18, 2)), N'Yusufi', NULL, N'yusf7acr7@gmail.com', NULL, 1, N'Yusufacar1907', NULL, NULL, N'5373923523', 1, 1, CAST(N'2025-04-22T00:00:00.0000000+03:00' AS DateTimeOffset), 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (5, N'Spor', N'futbol-o')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (6, N'Hotel', N'hotel')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (7, N'Restourant', N'cutlery')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (8, N'Alışveriş', N'shopping-cart ')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (9, N'Art & Kultur', N'ticket')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (10, N'NightLife', N'glass')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([Id], [Tittle], [Description], [CountryId], [CreatedDate]) VALUES (1, N'İstanbul', N'30 yılında yapılan büyük merasimlerle İstanbul''''un Roma İmparatorluğu''''nun başkenti olduğu resmen açıklanmıştır. Yakın Çağ''''ın başladığı dönemde İkinci Roma ve Yeni Roma adları ile anılan kent, daha sonra "Byzantion" ve geç devirlerde Konstantinopolis olarak adlandırılmıştır.', 1, CAST(N'1453-05-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Cities] ([Id], [Tittle], [Description], [CountryId], [CreatedDate]) VALUES (3, N'Bursa', N'Osmanlının tarihinde büyük rol oynamış tarihi bir şehir osmanlıyla sınırlı almayıp bizanslılara dayanan bir şehirdi', 1, CAST(N'2025-05-17T19:33:29.8527270' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[CityComments] ON 

INSERT [dbo].[CityComments] ([Id], [CityId], [UserId], [Text]) VALUES (2, 1, N'1', N'Güzel Şehir')
SET IDENTITY_INSERT [dbo].[CityComments] OFF
GO
SET IDENTITY_INSERT [dbo].[CityImage] ON 

INSERT [dbo].[CityImage] ([Id], [Url], [CityId]) VALUES (1, N'3.png', 1)
INSERT [dbo].[CityImage] ([Id], [Url], [CityId]) VALUES (2, N'5.png', 1)
INSERT [dbo].[CityImage] ([Id], [Url], [CityId]) VALUES (3, N'ist9', 1)
SET IDENTITY_INSERT [dbo].[CityImage] OFF
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([Id], [Name], [EmergencyNumber], [Image], [Byrk]) VALUES (1, N'Türkiye', N'112', N'5.png', N'trk.jpg')
INSERT [dbo].[Countries] ([Id], [Name], [EmergencyNumber], [Image], [Byrk]) VALUES (2, N'İtalya', N'586', N'italy3.jpg', N'flag2.jpg')
INSERT [dbo].[Countries] ([Id], [Name], [EmergencyNumber], [Image], [Byrk]) VALUES (3, N'Fransa', N'11880', N'fransa.jpg', N'flag3.jpg')
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
SET IDENTITY_INSERT [dbo].[OtelImages] ON 

INSERT [dbo].[OtelImages] ([Id], [Url], [OtelId]) VALUES (2, N'otels.jpg', 1)
SET IDENTITY_INSERT [dbo].[OtelImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Otels] ON 

INSERT [dbo].[Otels] ([Id], [Description], [Kunye], [CategoryId], [Name], [Location], [CityId]) VALUES (1, N'Türkiyenin En Ünlü Otel dir.  ', N'Bilmiyom valla', 6, N'Yusuf Palace', N'Gültepe', 1)
SET IDENTITY_INSERT [dbo].[Otels] OFF
GO
ALTER TABLE [dbo].[Cities] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AirbnbComments]  WITH CHECK ADD  CONSTRAINT [FK_AirbnbComments_Airbnbs_AirbnbId] FOREIGN KEY([AirbnbId])
REFERENCES [dbo].[Airbnbs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AirbnbComments] CHECK CONSTRAINT [FK_AirbnbComments_Airbnbs_AirbnbId]
GO
ALTER TABLE [dbo].[AirbnbComments]  WITH CHECK ADD  CONSTRAINT [FK_AirbnbComments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AirbnbComments] CHECK CONSTRAINT [FK_AirbnbComments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AirbnbFavorites]  WITH CHECK ADD  CONSTRAINT [FK_AirbnbFavorites_Airbnbs_AirbnbId1] FOREIGN KEY([AirbnbId1])
REFERENCES [dbo].[Airbnbs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AirbnbFavorites] CHECK CONSTRAINT [FK_AirbnbFavorites_Airbnbs_AirbnbId1]
GO
ALTER TABLE [dbo].[AirbnbFavorites]  WITH CHECK ADD  CONSTRAINT [FK_AirbnbFavorites_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AirbnbFavorites] CHECK CONSTRAINT [FK_AirbnbFavorites_AspNetUsers_UserId]
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
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Cities_CityId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CafeComments]  WITH CHECK ADD  CONSTRAINT [FK_CafeComments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CafeComments] CHECK CONSTRAINT [FK_CafeComments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CafeComments]  WITH CHECK ADD  CONSTRAINT [FK_CafeComments_Cafes_CafeId] FOREIGN KEY([CafeId])
REFERENCES [dbo].[Cafes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CafeComments] CHECK CONSTRAINT [FK_CafeComments_Cafes_CafeId]
GO
ALTER TABLE [dbo].[CafeFavorites]  WITH CHECK ADD  CONSTRAINT [FK_CafeFavorites_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CafeFavorites] CHECK CONSTRAINT [FK_CafeFavorites_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CafeFavorites]  WITH CHECK ADD  CONSTRAINT [FK_CafeFavorites_Cafes_CafeId1] FOREIGN KEY([CafeId1])
REFERENCES [dbo].[Cafes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CafeFavorites] CHECK CONSTRAINT [FK_CafeFavorites_Cafes_CafeId1]
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
ALTER TABLE [dbo].[CarComments]  WITH CHECK ADD  CONSTRAINT [FK_CarComments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CarComments] CHECK CONSTRAINT [FK_CarComments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CarComments]  WITH CHECK ADD  CONSTRAINT [FK_CarComments_Cars_CarId] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarComments] CHECK CONSTRAINT [FK_CarComments_Cars_CarId]
GO
ALTER TABLE [dbo].[CarFavorites]  WITH CHECK ADD  CONSTRAINT [FK_CarFavorites_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CarFavorites] CHECK CONSTRAINT [FK_CarFavorites_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CarFavorites]  WITH CHECK ADD  CONSTRAINT [FK_CarFavorites_Cars_CarId1] FOREIGN KEY([CarId1])
REFERENCES [dbo].[Cars] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarFavorites] CHECK CONSTRAINT [FK_CarFavorites_Cars_CarId1]
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
ALTER TABLE [dbo].[CityComments]  WITH CHECK ADD  CONSTRAINT [FK_CityComments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CityComments] CHECK CONSTRAINT [FK_CityComments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CityComments]  WITH CHECK ADD  CONSTRAINT [FK_CityComments_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CityComments] CHECK CONSTRAINT [FK_CityComments_Cities_CityId]
GO
ALTER TABLE [dbo].[CityFavorites]  WITH CHECK ADD  CONSTRAINT [FK_CityFavorites_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CityFavorites] CHECK CONSTRAINT [FK_CityFavorites_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CityFavorites]  WITH CHECK ADD  CONSTRAINT [FK_CityFavorites_Cities_CityId1] FOREIGN KEY([CityId1])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CityFavorites] CHECK CONSTRAINT [FK_CityFavorites_Cities_CityId1]
GO
ALTER TABLE [dbo].[CityImage]  WITH CHECK ADD  CONSTRAINT [FK_CityImage_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CityImage] CHECK CONSTRAINT [FK_CityImage_Cities_CityId]
GO
ALTER TABLE [dbo].[KulturComments]  WITH CHECK ADD  CONSTRAINT [FK_KulturComments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[KulturComments] CHECK CONSTRAINT [FK_KulturComments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[KulturComments]  WITH CHECK ADD  CONSTRAINT [FK_KulturComments_Kulturs_KulturId] FOREIGN KEY([KulturId])
REFERENCES [dbo].[Kulturs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KulturComments] CHECK CONSTRAINT [FK_KulturComments_Kulturs_KulturId]
GO
ALTER TABLE [dbo].[KulturFavorites]  WITH CHECK ADD  CONSTRAINT [FK_KulturFavorites_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[KulturFavorites] CHECK CONSTRAINT [FK_KulturFavorites_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[KulturFavorites]  WITH CHECK ADD  CONSTRAINT [FK_KulturFavorites_Kulturs_KulturId] FOREIGN KEY([KulturId])
REFERENCES [dbo].[Kulturs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KulturFavorites] CHECK CONSTRAINT [FK_KulturFavorites_Kulturs_KulturId]
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
ALTER TABLE [dbo].[Mails]  WITH CHECK ADD  CONSTRAINT [FK_Mails_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Mails] CHECK CONSTRAINT [FK_Mails_Cities_CityId]
GO
ALTER TABLE [dbo].[OtelComments]  WITH CHECK ADD  CONSTRAINT [FK_OtelComments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[OtelComments] CHECK CONSTRAINT [FK_OtelComments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OtelComments]  WITH CHECK ADD  CONSTRAINT [FK_OtelComments_Otels_OtelId] FOREIGN KEY([OtelId])
REFERENCES [dbo].[Otels] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OtelComments] CHECK CONSTRAINT [FK_OtelComments_Otels_OtelId]
GO
ALTER TABLE [dbo].[OtelFavorites]  WITH CHECK ADD  CONSTRAINT [FK_OtelFavorites_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[OtelFavorites] CHECK CONSTRAINT [FK_OtelFavorites_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OtelFavorites]  WITH CHECK ADD  CONSTRAINT [FK_OtelFavorites_Otels_OtelId1] FOREIGN KEY([OtelId1])
REFERENCES [dbo].[Otels] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OtelFavorites] CHECK CONSTRAINT [FK_OtelFavorites_Otels_OtelId1]
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
