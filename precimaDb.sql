USE [master]
GO
/****** Object:  Database [Precima]    Script Date: 2017-11-13 5:27:36 AM ******/
CREATE DATABASE [Precima]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Precima', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\Precima.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Precima_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\Precima_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Precima] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Precima].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Precima] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Precima] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Precima] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Precima] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Precima] SET ARITHABORT OFF 
GO
ALTER DATABASE [Precima] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Precima] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Precima] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Precima] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Precima] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Precima] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Precima] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Precima] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Precima] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Precima] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Precima] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Precima] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Precima] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Precima] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Precima] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Precima] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Precima] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Precima] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Precima] SET  MULTI_USER 
GO
ALTER DATABASE [Precima] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Precima] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Precima] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Precima] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Precima] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Precima] SET QUERY_STORE = OFF
GO
USE [Precima]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Precima]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2017-11-13 5:27:36 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 2017-11-13 5:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[ImageUrl] [nvarchar](150) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppinList]    Script Date: 2017-11-13 5:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppinList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsCompleted] [bit] NOT NULL,
	[ItemId] [int] NOT NULL,
	[Notes] [nvarchar](1000) NOT NULL,
	[Unit] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_ShoppinList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2017-11-13 5:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171110134712_IntialMigration', N'2.0.0-rtm-26452')
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([Id], [Description], [ImageUrl], [Quantity], [Title]) VALUES (9, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit', N'https://cdn.pixabay.com/photo/2017/01/20/15/06/orange-1995056_1280.jpg', 3, N'Fresh Orange')
INSERT [dbo].[Items] ([Id], [Description], [ImageUrl], [Quantity], [Title]) VALUES (10, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit', N'https://cdn.pixabay.com/photo/2016/04/24/19/41/strawberries-1350482_1280.jpg', 3, N'Fresh Strawberry')
INSERT [dbo].[Items] ([Id], [Description], [ImageUrl], [Quantity], [Title]) VALUES (11, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit', N'https://cdn.pixabay.com/photo/2015/12/03/13/51/nectarine-1074997_1280.jpg', 3, N'Fresh Peach')
INSERT [dbo].[Items] ([Id], [Description], [ImageUrl], [Quantity], [Title]) VALUES (12, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit', N'https://cdn.pixabay.com/photo/2015/12/30/11/57/fruit-basket-1114060_1280.jpg', 3, N'Fresh Fruits')
INSERT [dbo].[Items] ([Id], [Description], [ImageUrl], [Quantity], [Title]) VALUES (13, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit', N'https://cdn.pixabay.com/photo/2016/07/22/09/59/bio-1534494_1280.jpg', 3, N'Fresh Pears')
INSERT [dbo].[Items] ([Id], [Description], [ImageUrl], [Quantity], [Title]) VALUES (14, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit', N'https://cdn.pixabay.com/photo/2016/10/07/13/21/tangerines-1721566_1280.jpg', 3, N'Fresh Tangerines')
SET IDENTITY_INSERT [dbo].[Items] OFF
SET IDENTITY_INSERT [dbo].[ShoppinList] ON 

INSERT [dbo].[ShoppinList] ([Id], [IsCompleted], [ItemId], [Notes], [Unit], [UserId]) VALUES (19, 0, 11, N'peaches note. ', 1, 1)
INSERT [dbo].[ShoppinList] ([Id], [IsCompleted], [ItemId], [Notes], [Unit], [UserId]) VALUES (20, 0, 12, N'fruits notes.', 1, 1)
SET IDENTITY_INSERT [dbo].[ShoppinList] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name]) VALUES (1, N'Mido')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Index [IX_ShoppinList_ItemId]    Script Date: 2017-11-13 5:27:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppinList_ItemId] ON [dbo].[ShoppinList]
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppinList_UserId]    Script Date: 2017-11-13 5:27:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppinList_UserId] ON [dbo].[ShoppinList]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ShoppinList]  WITH CHECK ADD  CONSTRAINT [FK_ShoppinList_Items_ItemId] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppinList] CHECK CONSTRAINT [FK_ShoppinList_Items_ItemId]
GO
ALTER TABLE [dbo].[ShoppinList]  WITH CHECK ADD  CONSTRAINT [FK_ShoppinList_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppinList] CHECK CONSTRAINT [FK_ShoppinList_Users_UserId]
GO
USE [master]
GO
ALTER DATABASE [Precima] SET  READ_WRITE 
GO
