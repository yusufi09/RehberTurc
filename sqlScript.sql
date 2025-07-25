USE [master]
GO
/****** Object:  Database [RehberTurc]    Script Date: 20.06.2025 23:56:37 ******/
CREATE DATABASE [RehberTurc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RehberTurc', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\RehberTurc.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RehberTurc_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\RehberTurc_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [RehberTurc] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RehberTurc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RehberTurc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RehberTurc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RehberTurc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RehberTurc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RehberTurc] SET ARITHABORT OFF 
GO
ALTER DATABASE [RehberTurc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RehberTurc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RehberTurc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RehberTurc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RehberTurc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RehberTurc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RehberTurc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RehberTurc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RehberTurc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RehberTurc] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RehberTurc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RehberTurc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RehberTurc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RehberTurc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RehberTurc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RehberTurc] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [RehberTurc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RehberTurc] SET RECOVERY FULL 
GO
ALTER DATABASE [RehberTurc] SET  MULTI_USER 
GO
ALTER DATABASE [RehberTurc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RehberTurc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RehberTurc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RehberTurc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RehberTurc] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RehberTurc] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RehberTurc', N'ON'
GO
ALTER DATABASE [RehberTurc] SET QUERY_STORE = ON
GO
ALTER DATABASE [RehberTurc] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [RehberTurc]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[AirbnbComments]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[AirbnbFavorites]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[AirbnbImages]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[Airbnbs]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[CafeComments]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[CafeFavorites]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[CafeImages]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[Cafes]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[calendars]    Script Date: 20.06.2025 23:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[calendars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tittle] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_calendars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarComments]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[CarFavorites]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[CarImages]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[Cars]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[Cities]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[CityComments]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[CityFavorites]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[CityImage]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[Countries]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[EventComments]    Script Date: 20.06.2025 23:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventsId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_EventComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventImages]    Script Date: 20.06.2025 23:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[EventsId] [int] NOT NULL,
 CONSTRAINT [PK_EventImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 20.06.2025 23:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[CityId] [int] NOT NULL,
	[EventDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 20.06.2025 23:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[ListingId] [int] NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KulturComments]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[KulturFavorites]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[KulturImages]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[Kulturs]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[listings]    Script Date: 20.06.2025 23:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[listings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Slogan] [nvarchar](max) NOT NULL,
	[LinkUrl] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[CountryId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_listings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mails]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[OtelComments]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[OtelFavorites]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[OtelImages]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[Otels]    Script Date: 20.06.2025 23:56:37 ******/
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
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Otels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 20.06.2025 23:56:37 ******/
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
/****** Object:  Table [dbo].[RoomType]    Script Date: 20.06.2025 23:56:37 ******/
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250523110714_Oteldatetime', N'8.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250527152850_CreateEventsandCalanderTable', N'8.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250531141457_CreateCalanderTable', N'8.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250605132520_ListingTable', N'8.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250615202703_Datetime', N'8.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250617150512_ListingUpdatedDatabase', N'8.0.14')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Address], [City], [CreditCard], [Surname], [CityId], [Location], [Balance], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1', N'Yusuf', N'İslam', N'Gültepe Mesleks', N'İstanbul', N'5555444433332222', N'Açar', 1, N'Gelincik çıkmazı', CAST(111.00 AS Decimal(18, 2)), N'Yusufi', NULL, N'yusf7acr7@gmail.com', NULL, 1, N'Yusufacar1907', NULL, NULL, N'5373923523', 1, 1, CAST(N'2025-04-22T00:00:00.0000000+03:00' AS DateTimeOffset), 1, 0)
GO
SET IDENTITY_INSERT [dbo].[calendars] ON 

INSERT [dbo].[calendars] ([Id], [Tittle], [Description], [StartDate], [EndDate], [Image], [Name], [Location], [CityId]) VALUES (2, N'Tarkan', N'Açık hava konseri', CAST(N'2025-05-20T19:00:00.0000000' AS DateTime2), CAST(N'2025-05-20T23:30:00.0000000' AS DateTime2), N'ist4.jpg', N'Tarkan', N'Harbiye', 1)
SET IDENTITY_INSERT [dbo].[calendars] OFF
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
INSERT [dbo].[Cities] ([Id], [Tittle], [Description], [CountryId], [CreatedDate]) VALUES (9, N'Bursa', N'

6 Nisan 1326`da Osman Gazi`nin oğlu Orhan Bey tarafından Bursa fethedilmiştir. Orhan Gazi (1326-1362) fetihten sonra ilk Osmanlı parasını Bursa`da bastırmış ve kenti Osmanlı Devleti`nin ilk başkenti yapmıştır. Bursa fethedildiği sırada, surlarla çevrili dört kapılı hisar içinden ibaret küçük bir şehirdi.', 1, CAST(N'2025-05-18T20:15:05.1820546' AS DateTime2))
INSERT [dbo].[Cities] ([Id], [Tittle], [Description], [CountryId], [CreatedDate]) VALUES (10, N'ANTALYA', N'Helenistik dönemde Bergama Kralı II. Attalos (MÖ 159-138), askerlerine "Gidin ve bana yeryüzündeki cenneti bulun" der. Askerlerinin gösterdiği yeri (bugünkü Antalya) beğenen II. Attalos, bölgenin stratejik önemini dikkate alarak buraya bir liman şehri kurdurur ve kent, kurucusu Attalos''un adına binaen "Ataleia" olarak adlandırılır. Şehrin adı eski Arap kaynaklarında "Antaliye",[5] Türk kaynaklarında ise "Adalya" olarak geçer. Yerleşme, 20. yüzyılın ilk çeyreğinden başlayarak "Antalya" olarak adlandırılmıştır.', 1, CAST(N'2025-05-19T13:57:39.8693506' AS DateTime2))
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
INSERT [dbo].[CityImage] ([Id], [Url], [CityId]) VALUES (4, N'20250518201503544.png', 9)
INSERT [dbo].[CityImage] ([Id], [Url], [CityId]) VALUES (5, N'20250519135735693.png', 10)
SET IDENTITY_INSERT [dbo].[CityImage] OFF
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([Id], [Name], [EmergencyNumber], [Image], [Byrk]) VALUES (1, N'Türkiye', N'112', N'5.png', N'trk.jpg')
INSERT [dbo].[Countries] ([Id], [Name], [EmergencyNumber], [Image], [Byrk]) VALUES (2, N'İtalya', N'586', N'italy3.jpg', N'flag2.jpg')
INSERT [dbo].[Countries] ([Id], [Name], [EmergencyNumber], [Image], [Byrk]) VALUES (3, N'Fransa', N'11880', N'fransa.jpg', N'flag3.jpg')
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
SET IDENTITY_INSERT [dbo].[EventImages] ON 

INSERT [dbo].[EventImages] ([Id], [Url], [EventsId]) VALUES (1, N'ysu.jpg', 2)
SET IDENTITY_INSERT [dbo].[EventImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([Id], [Description], [CategoryId], [Name], [Location], [CityId], [EventDate]) VALUES (2, N'Harbiye de yaz festivali', 5, N'Haribo Yaz Festivali', N'Harbiye', 1, CAST(N'2025-06-30T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Events] OFF
GO
SET IDENTITY_INSERT [dbo].[OtelImages] ON 

INSERT [dbo].[OtelImages] ([Id], [Url], [OtelId]) VALUES (2, N'otels.jpg', 1)
INSERT [dbo].[OtelImages] ([Id], [Url], [OtelId]) VALUES (3, N'italy1.jpg', 1)
SET IDENTITY_INSERT [dbo].[OtelImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Otels] ON 

INSERT [dbo].[Otels] ([Id], [Description], [Kunye], [CategoryId], [Name], [Location], [CityId], [CreatedDate]) VALUES (1, N'Türkiyenin En Ünlü Otel dir.  ', N'Bilmiyom valla', 6, N'Yusuf Palace', N'Gültepe', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Otels] OFF
GO
/****** Object:  Index [IX_AirbnbComments_AirbnbId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_AirbnbComments_AirbnbId] ON [dbo].[AirbnbComments]
(
	[AirbnbId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AirbnbComments_UserId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_AirbnbComments_UserId] ON [dbo].[AirbnbComments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AirbnbFavorites_AirbnbId1]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_AirbnbFavorites_AirbnbId1] ON [dbo].[AirbnbFavorites]
(
	[AirbnbId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AirbnbFavorites_UserId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_AirbnbFavorites_UserId] ON [dbo].[AirbnbFavorites]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AirbnbImages_AirbnbId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_AirbnbImages_AirbnbId] ON [dbo].[AirbnbImages]
(
	[AirbnbId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Airbnbs_CategoryId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Airbnbs_CategoryId] ON [dbo].[Airbnbs]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Airbnbs_CityId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Airbnbs_CityId] ON [dbo].[Airbnbs]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 20.06.2025 23:56:38 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_CityId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_CityId] ON [dbo].[AspNetUsers]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 20.06.2025 23:56:38 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CafeComments_CafeId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_CafeComments_CafeId] ON [dbo].[CafeComments]
(
	[CafeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CafeComments_UserId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_CafeComments_UserId] ON [dbo].[CafeComments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CafeFavorites_CafeId1]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_CafeFavorites_CafeId1] ON [dbo].[CafeFavorites]
(
	[CafeId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CafeFavorites_UserId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_CafeFavorites_UserId] ON [dbo].[CafeFavorites]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CafeImages_CafeId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_CafeImages_CafeId] ON [dbo].[CafeImages]
(
	[CafeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cafes_CategoryId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Cafes_CategoryId] ON [dbo].[Cafes]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cafes_CityId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Cafes_CityId] ON [dbo].[Cafes]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_calendars_CityId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_calendars_CityId] ON [dbo].[calendars]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarComments_CarId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_CarComments_CarId] ON [dbo].[CarComments]
(
	[CarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CarComments_UserId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_CarComments_UserId] ON [dbo].[CarComments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarFavorites_CarId1]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_CarFavorites_CarId1] ON [dbo].[CarFavorites]
(
	[CarId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CarFavorites_UserId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_CarFavorites_UserId] ON [dbo].[CarFavorites]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarImages_CarId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_CarImages_CarId] ON [dbo].[CarImages]
(
	[CarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cars_CategoryId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Cars_CategoryId] ON [dbo].[Cars]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cars_CityId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Cars_CityId] ON [dbo].[Cars]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cities_CountryId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Cities_CountryId] ON [dbo].[Cities]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CityComments_CityId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_CityComments_CityId] ON [dbo].[CityComments]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CityComments_UserId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_CityComments_UserId] ON [dbo].[CityComments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CityFavorites_CityId1]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_CityFavorites_CityId1] ON [dbo].[CityFavorites]
(
	[CityId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CityFavorites_UserId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_CityFavorites_UserId] ON [dbo].[CityFavorites]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CityImage_CityId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_CityImage_CityId] ON [dbo].[CityImage]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EventComments_EventsId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_EventComments_EventsId] ON [dbo].[EventComments]
(
	[EventsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_EventComments_UserId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_EventComments_UserId] ON [dbo].[EventComments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EventImages_EventsId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_EventImages_EventsId] ON [dbo].[EventImages]
(
	[EventsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Events_CategoryId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Events_CategoryId] ON [dbo].[Events]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Events_CityId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Events_CityId] ON [dbo].[Events]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Images_ListingId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Images_ListingId] ON [dbo].[Images]
(
	[ListingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_KulturComments_KulturId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_KulturComments_KulturId] ON [dbo].[KulturComments]
(
	[KulturId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_KulturComments_UserId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_KulturComments_UserId] ON [dbo].[KulturComments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_KulturFavorites_KulturId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_KulturFavorites_KulturId] ON [dbo].[KulturFavorites]
(
	[KulturId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_KulturFavorites_UserId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_KulturFavorites_UserId] ON [dbo].[KulturFavorites]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_KulturImages_KulturId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_KulturImages_KulturId] ON [dbo].[KulturImages]
(
	[KulturId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Kulturs_CategoryId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Kulturs_CategoryId] ON [dbo].[Kulturs]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Kulturs_CityId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Kulturs_CityId] ON [dbo].[Kulturs]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_listings_CategoryId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_listings_CategoryId] ON [dbo].[listings]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_listings_CityId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_listings_CityId] ON [dbo].[listings]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_listings_CountryId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_listings_CountryId] ON [dbo].[listings]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Mails_CityId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Mails_CityId] ON [dbo].[Mails]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OtelComments_OtelId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_OtelComments_OtelId] ON [dbo].[OtelComments]
(
	[OtelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OtelComments_UserId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_OtelComments_UserId] ON [dbo].[OtelComments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OtelFavorites_OtelId1]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_OtelFavorites_OtelId1] ON [dbo].[OtelFavorites]
(
	[OtelId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OtelFavorites_UserId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_OtelFavorites_UserId] ON [dbo].[OtelFavorites]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OtelImages_OtelId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_OtelImages_OtelId] ON [dbo].[OtelImages]
(
	[OtelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Otels_CategoryId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Otels_CategoryId] ON [dbo].[Otels]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Otels_CityId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Otels_CityId] ON [dbo].[Otels]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Room_AirbnbId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Room_AirbnbId] ON [dbo].[Room]
(
	[AirbnbId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Room_OtelId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Room_OtelId] ON [dbo].[Room]
(
	[OtelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Room_RoomTypeId]    Script Date: 20.06.2025 23:56:38 ******/
CREATE NONCLUSTERED INDEX [IX_Room_RoomTypeId] ON [dbo].[Room]
(
	[RoomTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cities] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Events] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [EventDate]
GO
ALTER TABLE [dbo].[listings] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[listings] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Otels] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedDate]
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
ALTER TABLE [dbo].[calendars]  WITH CHECK ADD  CONSTRAINT [FK_calendars_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[calendars] CHECK CONSTRAINT [FK_calendars_Cities_CityId]
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
ALTER TABLE [dbo].[EventComments]  WITH CHECK ADD  CONSTRAINT [FK_EventComments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[EventComments] CHECK CONSTRAINT [FK_EventComments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[EventComments]  WITH CHECK ADD  CONSTRAINT [FK_EventComments_Events_EventsId] FOREIGN KEY([EventsId])
REFERENCES [dbo].[Events] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EventComments] CHECK CONSTRAINT [FK_EventComments_Events_EventsId]
GO
ALTER TABLE [dbo].[EventImages]  WITH CHECK ADD  CONSTRAINT [FK_EventImages_Events_EventsId] FOREIGN KEY([EventsId])
REFERENCES [dbo].[Events] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EventImages] CHECK CONSTRAINT [FK_EventImages_Events_EventsId]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Cities_CityId]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_listings_ListingId] FOREIGN KEY([ListingId])
REFERENCES [dbo].[listings] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_listings_ListingId]
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
ALTER TABLE [dbo].[listings]  WITH CHECK ADD  CONSTRAINT [FK_listings_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[listings] CHECK CONSTRAINT [FK_listings_Categories_CategoryId]
GO
ALTER TABLE [dbo].[listings]  WITH CHECK ADD  CONSTRAINT [FK_listings_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[listings] CHECK CONSTRAINT [FK_listings_Cities_CityId]
GO
ALTER TABLE [dbo].[listings]  WITH CHECK ADD  CONSTRAINT [FK_listings_Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[listings] CHECK CONSTRAINT [FK_listings_Countries_CountryId]
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
USE [master]
GO
ALTER DATABASE [RehberTurc] SET  READ_WRITE 
GO
