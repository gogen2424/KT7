USE [master]
GO
/****** Object:  Database [KT7_Stepanyan_georgyy]    Script Date: 14.11.2024 13:06:38 ******/
CREATE DATABASE [KT7_Stepanyan_georgyy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KT7_Stepanyan_georgyy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KT7_Stepanyan_georgyy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KT7_Stepanyan_georgyy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KT7_Stepanyan_georgyy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KT7_Stepanyan_georgyy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET ARITHABORT OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET  MULTI_USER 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET QUERY_STORE = OFF
GO
USE [KT7_Stepanyan_georgyy]
GO
/****** Object:  Table [dbo].[Adress]    Script Date: 14.11.2024 13:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adress](
	[Id] [int] NOT NULL,
	[IdArticle] [int] NOT NULL,
	[IdOblast] [int] NOT NULL,
	[Id_Town] [int] NOT NULL,
	[Id_Street] [int] NOT NULL,
	[Num_house] [int] NOT NULL,
 CONSTRAINT [PK_Adress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 14.11.2024 13:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Director]    Script Date: 14.11.2024 13:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterProductImport]    Script Date: 14.11.2024 13:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterProductImport](
	[Id] [int] NOT NULL,
	[IdProduction] [int] NOT NULL,
	[IdPartner] [int] NOT NULL,
	[ProductNum] [int] NOT NULL,
	[SaleData] [date] NOT NULL,
 CONSTRAINT [PK_MasterProductImport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialTypeProduct]    Script Date: 14.11.2024 13:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialTypeProduct](
	[Id] [int] NOT NULL,
	[Type] [nvarchar](150) NOT NULL,
	[ProcentOfUsability] [float] NOT NULL,
 CONSTRAINT [PK_MaterialTypeProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oblast]    Script Date: 14.11.2024 13:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oblast](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Oblast] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerImport]    Script Date: 14.11.2024 13:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerImport](
	[Id] [int] NOT NULL,
	[IdTypePartner] [int] NOT NULL,
	[IdPartnerName] [int] NOT NULL,
	[IdDirector] [int] NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[Phone_Number] [nvarchar](150) NOT NULL,
	[IdAdress] [int] NOT NULL,
	[INN] [bigint] NOT NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_PartnerImport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerName]    Script Date: 14.11.2024 13:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerName](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_PartnerName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 14.11.2024 13:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerType](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production]    Script Date: 14.11.2024 13:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Production] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsImport]    Script Date: 14.11.2024 13:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsImport](
	[Id] [int] NOT NULL,
	[IdType] [int] NOT NULL,
	[IdProductName] [int] NOT NULL,
	[Article] [nvarchar](150) NOT NULL,
	[MinPricePartner] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypeImport]    Script Date: 14.11.2024 13:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypeImport](
	[Id] [int] NOT NULL,
	[TypeProduction] [int] NOT NULL,
	[AVGTypeProduction] [float] NOT NULL,
 CONSTRAINT [PK_ProductTypeImport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 14.11.2024 13:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[Id] [int] NOT NULL,
	[Street] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Town]    Script Date: 14.11.2024 13:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Town](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Town] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 14.11.2024 13:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProduct](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Adress] ([Id], [IdArticle], [IdOblast], [Id_Town], [Id_Street], [Num_house]) VALUES (1, 5, 3, 5, 1, 15)
INSERT [dbo].[Adress] ([Id], [IdArticle], [IdOblast], [Id_Town], [Id_Street], [Num_house]) VALUES (2, 2, 1, 3, 5, 18)
INSERT [dbo].[Adress] ([Id], [IdArticle], [IdOblast], [Id_Town], [Id_Street], [Num_house]) VALUES (3, 3, 4, 1, 2, 21)
INSERT [dbo].[Adress] ([Id], [IdArticle], [IdOblast], [Id_Town], [Id_Street], [Num_house]) VALUES (4, 1, 5, 2, 4, 51)
INSERT [dbo].[Adress] ([Id], [IdArticle], [IdOblast], [Id_Town], [Id_Street], [Num_house]) VALUES (5, 4, 2, 4, 3, 122)
GO
INSERT [dbo].[Article] ([Id], [Name]) VALUES (1, N'143960')
INSERT [dbo].[Article] ([Id], [Name]) VALUES (2, N'164500')
INSERT [dbo].[Article] ([Id], [Name]) VALUES (3, N'188910')
INSERT [dbo].[Article] ([Id], [Name]) VALUES (4, N'309500')
INSERT [dbo].[Article] ([Id], [Name]) VALUES (5, N'652050')
GO
INSERT [dbo].[Director] ([Id], [Name]) VALUES (1, N'Воробьева Екатерина Валерьевна')
INSERT [dbo].[Director] ([Id], [Name]) VALUES (2, N'Иванова Александра Ивановна')
INSERT [dbo].[Director] ([Id], [Name]) VALUES (3, N'Петров Василий Петрович')
INSERT [dbo].[Director] ([Id], [Name]) VALUES (4, N'Соловьев Андрей Николаевич')
INSERT [dbo].[Director] ([Id], [Name]) VALUES (5, N'Степанов Степан Сергеевич')
GO
INSERT [dbo].[MasterProductImport] ([Id], [IdProduction], [IdPartner], [ProductNum], [SaleData]) VALUES (1, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[MasterProductImport] ([Id], [IdProduction], [IdPartner], [ProductNum], [SaleData]) VALUES (2, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[MasterProductImport] ([Id], [IdProduction], [IdPartner], [ProductNum], [SaleData]) VALUES (3, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[MasterProductImport] ([Id], [IdProduction], [IdPartner], [ProductNum], [SaleData]) VALUES (4, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[MasterProductImport] ([Id], [IdProduction], [IdPartner], [ProductNum], [SaleData]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[MasterProductImport] ([Id], [IdProduction], [IdPartner], [ProductNum], [SaleData]) VALUES (6, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[MasterProductImport] ([Id], [IdProduction], [IdPartner], [ProductNum], [SaleData]) VALUES (7, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[MasterProductImport] ([Id], [IdProduction], [IdPartner], [ProductNum], [SaleData]) VALUES (8, 4, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[MasterProductImport] ([Id], [IdProduction], [IdPartner], [ProductNum], [SaleData]) VALUES (9, 1, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[MasterProductImport] ([Id], [IdProduction], [IdPartner], [ProductNum], [SaleData]) VALUES (10, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[MasterProductImport] ([Id], [IdProduction], [IdPartner], [ProductNum], [SaleData]) VALUES (11, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[MasterProductImport] ([Id], [IdProduction], [IdPartner], [ProductNum], [SaleData]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[MasterProductImport] ([Id], [IdProduction], [IdPartner], [ProductNum], [SaleData]) VALUES (13, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[MasterProductImport] ([Id], [IdProduction], [IdPartner], [ProductNum], [SaleData]) VALUES (14, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[MasterProductImport] ([Id], [IdProduction], [IdPartner], [ProductNum], [SaleData]) VALUES (15, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[MasterProductImport] ([Id], [IdProduction], [IdPartner], [ProductNum], [SaleData]) VALUES (16, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
GO
INSERT [dbo].[MaterialTypeProduct] ([Id], [Type], [ProcentOfUsability]) VALUES (1, N'Тип материала 1', 0.001)
INSERT [dbo].[MaterialTypeProduct] ([Id], [Type], [ProcentOfUsability]) VALUES (2, N'Тип материала 2', 0.0095)
INSERT [dbo].[MaterialTypeProduct] ([Id], [Type], [ProcentOfUsability]) VALUES (3, N'Тип материала 3', 0.0028)
INSERT [dbo].[MaterialTypeProduct] ([Id], [Type], [ProcentOfUsability]) VALUES (4, N'Тип материала 4', 0.0055)
INSERT [dbo].[MaterialTypeProduct] ([Id], [Type], [ProcentOfUsability]) VALUES (5, N'Тип материала 5', 0.0034)
GO
INSERT [dbo].[Oblast] ([Id], [Name]) VALUES (1, N' Архангельская область')
INSERT [dbo].[Oblast] ([Id], [Name]) VALUES (2, N' Белгородская область')
INSERT [dbo].[Oblast] ([Id], [Name]) VALUES (3, N' Кемеровская область')
INSERT [dbo].[Oblast] ([Id], [Name]) VALUES (4, N' Ленинградская область')
INSERT [dbo].[Oblast] ([Id], [Name]) VALUES (5, N' Московская область')
GO
INSERT [dbo].[PartnerImport] ([Id], [IdTypePartner], [IdPartnerName], [IdDirector], [Email], [Phone_Number], [IdAdress], [INN], [Rating]) VALUES (1, 1, 1, 2, N'aleksandraivanova@ml.ru', N'+7493 123 45 67', 1, 2222455179, 7)
INSERT [dbo].[PartnerImport] ([Id], [IdTypePartner], [IdPartnerName], [IdDirector], [Email], [Phone_Number], [IdAdress], [INN], [Rating]) VALUES (2, 3, 3, 3, N'vppetrov@vl.ru', N'+7987 123 56 78', 2, 3333888520, 7)
INSERT [dbo].[PartnerImport] ([Id], [IdTypePartner], [IdPartnerName], [IdDirector], [Email], [Phone_Number], [IdAdress], [INN], [Rating]) VALUES (3, 4, 5, 4, N'ansolovev@st.ru', N'+7812 223 32 00', 3, 4440391035, 7)
INSERT [dbo].[PartnerImport] ([Id], [IdTypePartner], [IdPartnerName], [IdDirector], [Email], [Phone_Number], [IdAdress], [INN], [Rating]) VALUES (4, 2, 4, 1, N'ekaterina.vorobeva@ml.ru', N'+7444 222 33 11', 4, 1111520857, 5)
INSERT [dbo].[PartnerImport] ([Id], [IdTypePartner], [IdPartnerName], [IdDirector], [Email], [Phone_Number], [IdAdress], [INN], [Rating]) VALUES (5, 1, 2, 5, N'stepanov@stepan.ru', N'+7912 888 33 33', 5, 5552431140, 10)
GO
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (1, N'База Строитель')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (2, N'МонтажПро')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (3, N'Паркет 29')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (5, N'Стройсервис')
GO
INSERT [dbo].[PartnerType] ([Id], [Name]) VALUES (1, N'ЗАО')
INSERT [dbo].[PartnerType] ([Id], [Name]) VALUES (2, N'ОАО')
INSERT [dbo].[PartnerType] ([Id], [Name]) VALUES (3, N'ООО')
INSERT [dbo].[PartnerType] ([Id], [Name]) VALUES (4, N'ПАО')
GO
INSERT [dbo].[Production] ([Id], [Name]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм')
INSERT [dbo].[Production] ([Id], [Name]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм')
INSERT [dbo].[Production] ([Id], [Name]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской')
INSERT [dbo].[Production] ([Id], [Name]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм')
INSERT [dbo].[Production] ([Id], [Name]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм')
GO
INSERT [dbo].[ProductsImport] ([Id], [IdType], [IdProductName], [Article], [MinPricePartner]) VALUES (1, 3, 4, N'8758385', 4456.9)
INSERT [dbo].[ProductsImport] ([Id], [IdType], [IdProductName], [Article], [MinPricePartner]) VALUES (2, 3, 1, N'8858958', 7330.99)
INSERT [dbo].[ProductsImport] ([Id], [IdType], [IdProductName], [Article], [MinPricePartner]) VALUES (3, 1, 2, N'7750282', 1799.33)
INSERT [dbo].[ProductsImport] ([Id], [IdType], [IdProductName], [Article], [MinPricePartner]) VALUES (4, 1, 3, N'7028748', 3890.41)
INSERT [dbo].[ProductsImport] ([Id], [IdType], [IdProductName], [Article], [MinPricePartner]) VALUES (5, 4, 5, N'5012543', 5450.59)
GO
INSERT [dbo].[ProductTypeImport] ([Id], [TypeProduction], [AVGTypeProduction]) VALUES (1, 1, 2.35)
INSERT [dbo].[ProductTypeImport] ([Id], [TypeProduction], [AVGTypeProduction]) VALUES (2, 2, 5.15)
INSERT [dbo].[ProductTypeImport] ([Id], [TypeProduction], [AVGTypeProduction]) VALUES (3, 3, 4.34)
INSERT [dbo].[ProductTypeImport] ([Id], [TypeProduction], [AVGTypeProduction]) VALUES (4, 4, 1.5)
GO
INSERT [dbo].[Street] ([Id], [Street]) VALUES (1, N' ул. Лесная')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (2, N' ул. Парковая')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (3, N' ул. Рабочая')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (4, N' ул. Свободы')
INSERT [dbo].[Street] ([Id], [Street]) VALUES (5, N' ул. Строителей')
GO
INSERT [dbo].[Town] ([Id], [Name]) VALUES (1, N' город Приморск')
INSERT [dbo].[Town] ([Id], [Name]) VALUES (2, N' город Реутов')
INSERT [dbo].[Town] ([Id], [Name]) VALUES (3, N' город Северодвинск')
INSERT [dbo].[Town] ([Id], [Name]) VALUES (4, N' город Старый Оскол')
INSERT [dbo].[Town] ([Id], [Name]) VALUES (5, N' город Юрга')
GO
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (1, N'Ламинат')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (2, N'Массивная доска')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (3, N'Паркетная доска')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (4, N'Пробковое покрытие')
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Article] FOREIGN KEY([IdArticle])
REFERENCES [dbo].[Article] ([Id])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Article]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Oblast] FOREIGN KEY([IdOblast])
REFERENCES [dbo].[Oblast] ([Id])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Oblast]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Street] FOREIGN KEY([Id_Street])
REFERENCES [dbo].[Street] ([Id])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Street]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Town] FOREIGN KEY([Id_Town])
REFERENCES [dbo].[Town] ([Id])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Town]
GO
ALTER TABLE [dbo].[MasterProductImport]  WITH CHECK ADD  CONSTRAINT [FK_MasterProductImport_PartnerName] FOREIGN KEY([IdPartner])
REFERENCES [dbo].[PartnerName] ([Id])
GO
ALTER TABLE [dbo].[MasterProductImport] CHECK CONSTRAINT [FK_MasterProductImport_PartnerName]
GO
ALTER TABLE [dbo].[MasterProductImport]  WITH CHECK ADD  CONSTRAINT [FK_MasterProductImport_Production] FOREIGN KEY([IdProduction])
REFERENCES [dbo].[Production] ([Id])
GO
ALTER TABLE [dbo].[MasterProductImport] CHECK CONSTRAINT [FK_MasterProductImport_Production]
GO
ALTER TABLE [dbo].[PartnerImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerImport_Adress] FOREIGN KEY([IdAdress])
REFERENCES [dbo].[Adress] ([Id])
GO
ALTER TABLE [dbo].[PartnerImport] CHECK CONSTRAINT [FK_PartnerImport_Adress]
GO
ALTER TABLE [dbo].[PartnerImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerImport_Director] FOREIGN KEY([IdDirector])
REFERENCES [dbo].[Director] ([Id])
GO
ALTER TABLE [dbo].[PartnerImport] CHECK CONSTRAINT [FK_PartnerImport_Director]
GO
ALTER TABLE [dbo].[PartnerImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerImport_PartnerName] FOREIGN KEY([IdPartnerName])
REFERENCES [dbo].[PartnerName] ([Id])
GO
ALTER TABLE [dbo].[PartnerImport] CHECK CONSTRAINT [FK_PartnerImport_PartnerName]
GO
ALTER TABLE [dbo].[PartnerImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerImport_PartnerType] FOREIGN KEY([IdTypePartner])
REFERENCES [dbo].[PartnerType] ([Id])
GO
ALTER TABLE [dbo].[PartnerImport] CHECK CONSTRAINT [FK_PartnerImport_PartnerType]
GO
ALTER TABLE [dbo].[ProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_ProductsImport_Production] FOREIGN KEY([IdProductName])
REFERENCES [dbo].[Production] ([Id])
GO
ALTER TABLE [dbo].[ProductsImport] CHECK CONSTRAINT [FK_ProductsImport_Production]
GO
ALTER TABLE [dbo].[ProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_ProductsImport_TypeProduct] FOREIGN KEY([IdType])
REFERENCES [dbo].[TypeProduct] ([Id])
GO
ALTER TABLE [dbo].[ProductsImport] CHECK CONSTRAINT [FK_ProductsImport_TypeProduct]
GO
ALTER TABLE [dbo].[ProductTypeImport]  WITH CHECK ADD  CONSTRAINT [FK_ProductTypeImport_TypeProduct1] FOREIGN KEY([TypeProduction])
REFERENCES [dbo].[TypeProduct] ([Id])
GO
ALTER TABLE [dbo].[ProductTypeImport] CHECK CONSTRAINT [FK_ProductTypeImport_TypeProduct1]
GO
USE [master]
GO
ALTER DATABASE [KT7_Stepanyan_georgyy] SET  READ_WRITE 
GO
