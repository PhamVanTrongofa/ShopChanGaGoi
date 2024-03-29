USE [master]
GO
/****** Object:  Database [ShoppingOnlineDB]    Script Date: 21/04/2022 11:07:50 SA ******/
CREATE DATABASE [ShoppingOnlineDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShoppingOnlineDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShoppingOnlineDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShoppingOnlineDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShoppingOnlineDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShoppingOnlineDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoppingOnlineDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoppingOnlineDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoppingOnlineDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoppingOnlineDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShoppingOnlineDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoppingOnlineDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ShoppingOnlineDB] SET  MULTI_USER 
GO
ALTER DATABASE [ShoppingOnlineDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoppingOnlineDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShoppingOnlineDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShoppingOnlineDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShoppingOnlineDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShoppingOnlineDB', N'ON'
GO
ALTER DATABASE [ShoppingOnlineDB] SET QUERY_STORE = OFF
GO
USE [ShoppingOnlineDB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 21/04/2022 11:07:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[displayName] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[role] [nvarchar](30) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 21/04/2022 11:07:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 21/04/2022 11:07:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 21/04/2022 11:07:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [text] NULL,
	[created_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 21/04/2022 11:07:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[description] [nvarchar](255) NULL,
	[image_url] [nvarchar](255) NULL,
	[created_date] [date] NULL,
	[category_id] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 21/04/2022 11:07:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role]) VALUES (1, N'user', N'1234', N'User', N'Ha Noi', N'abcd@gmai..com', N'0123456789', N'user')
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role]) VALUES (2, N'admin', N'123456', N'Admin', N'Ha Noi ', N'abcdxyz@gmail.com', N'0234567892', N'admin')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Chan')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Ga')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Goi')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'Dem')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (1, 1, N'Comedy|Romance', N'https://cf.shopee.vn/file/f4caf9e49a7d27a0d737bef7e74208ab', 67.1, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (2, 1, N'Drama', N'https://demxanh.com/media/news/2468_3270_4_bo_lua_04__1_.jpg', 68.5, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (3, 1, N'Documentary', N'https://ngochanh.vn/wp-content/uploads/2020/10/Ch%C4%83n-ga-g%C3%B4%CC%81i-ngo%CC%A3c-ha%CC%A3nh-1170x780.jpg', 66.9, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (4, 2, N'Action|Crime|Drama', N'http://songhong.info/images/product/goc/Chan-ga-goi-dem-cuoi-1439437750.jpg', 54.9, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (5, 2, N'Thriller', N'https://cf.shopee.vn/file/3e05eb5674fcf14af45e7ba336ce6da8', 55.4, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (6, 2, N'Drama', N'https://haithienplaza.com/gleepyns/2020/04/Ch%C4%83n-ga-g%E1%BB%91i-%C4%91%E1%BB%87m-m%C3%A0u-xanh-n%C6%B0%E1%BB%9Bc-bi%E1%BB%83n.jpg', 29.1, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (7, 3, N'Comedy|Romance', N'https://cf.shopee.vn/file/f4caf9e49a7d27a0d737bef7e74208ab', 67.1, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (8, 4, N'Comedy|Romance', N'https://cf.shopee.vn/file/f4caf9e49a7d27a0d737bef7e74208ab', 67.1, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (1, 1, 202.5, N'good', NULL, 1)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (2, 1, 139.4, N'good', NULL, 2)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (3, 1, 67.1, N'goof', NULL, 3)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (4, 1, 67.1, N'fdgfdg', NULL, 4)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (1, N'DocCCCC', 13, 66.9, N'Drainage of Left Abdomen Muscle with Drainage Device, Open Approach', N'https://ngochanh.vn/wp-content/uploads/2020/10/Ch%C4%83n-ga-g%C3%B4%CC%81i-ngo%CC%A3c-ha%CC%A3nh-1170x780.jpg', CAST(N'2021-07-14' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (2, N'Comedy|Romance', 10, 67.1, N'Replacement of Right Parietal Bone with Nonautologous Tissue Substitute, Open Approach', N'https://cf.shopee.vn/file/f4caf9e49a7d27a0d737bef7e74208ab', CAST(N'2021-03-08' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (3, N'Drama', 19, 68.5, N'Excision of Head, Open Approach, Diagnostic', N'https://demxanh.com/media/news/2468_3270_4_bo_lua_04__1_.jpg', CAST(N'2021-02-06' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (4, N'Crime|Drama|Thriller', 10, 35.9, N'Drainage of Abdominal Sympathetic Nerve with Drainage Device, Percutaneous Approach', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBQlVv-JjrIJ1CDl84pbhDCY1LQ4AKOhR8Ow9rgHpjoSJyGUkhf1twh8uQ0xTqV7Mzh_0&usqp=CAU', CAST(N'2021-11-27' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (5, N'Comedy|Fantasy|Musical', 14, 85.4, N'Destruction of Left Thyroid Gland Lobe, Percutaneous Endoscopic Approach', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzq3stkape-ORqPDeR6s_AovslX_1urCKyo82HlCnXDQAIhvRTroZKgnM4bUoDEPSJK8&usqp=CAU', CAST(N'2021-05-12' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (6, N'Documentary', 16, 51.5, N'Supplement Perineum Tendon with Nonautologous Tissue Substitute, Open Approach', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2NUEmBAyuCgJo2XgGGEKKVQaXCaBQJCIvlg&usqp=CAU', CAST(N'2021-10-01' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (7, N'Thriller', 17, 55.4, N'Release Right Lower Arm Subcutaneous Tissue and Fascia, Open Approach', N'https://cf.shopee.vn/file/3e05eb5674fcf14af45e7ba336ce6da8', CAST(N'2022-03-08' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (8, N'Drama', 15, 75.9, N'Dilation of Right External Iliac Artery, Bifurcation, with Two Drug-eluting Intraluminal Devices, Open Approach', N'https://changagoikhachsan.vn/wp-content/uploads/2018/03/chan-ga-goi-dem-3-1.jpg', CAST(N'2021-05-21' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (9, N'Drama', 10, 29.1, N'Removal of Nonautologous Tissue Substitute from Lumbar Vertebra, Percutaneous Endoscopic Approach', N'https://haithienplaza.com/gleepyns/2020/04/Ch%C4%83n-ga-g%E1%BB%91i-%C4%91%E1%BB%87m-m%C3%A0u-xanh-n%C6%B0%E1%BB%9Bc-bi%E1%BB%83n.jpg', CAST(N'2021-11-09' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (10, N'Action|Fantasy|Horror|Thriller', 19, 30.8, N'Excision of Superior Vena Cava, Percutaneous Approach', N'https://xuonggagoi.vn/wp-content/uploads/2018/10/chan-ga-goi-dem-cong-chua.jpg', CAST(N'2021-02-12' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (11, N'Action|Crime|Drama', 14, 54.9, N'Measurement of Products of Conception, Cardiac Electrical Activity, External Approach', N'http://songhong.info/images/product/goc/Chan-ga-goi-dem-cuoi-1439437750.jpg', CAST(N'2021-03-05' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (12, N'Drama|Romance', 13, 89.7, N'Revision of Drainage Device in Left Sternoclavicular Joint, External Approach', N'https://cdn.chanhtuoi.com/uploads/2016/08/kinh-nghiem-mua-chan-ga-goi-dem-re-dep.gif', CAST(N'2021-07-20' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (13, N'Adventure|Western', 13, 45.2, N'Lower Bones, Inspection', N'http://dummyimage.com/242x189.png/cc0000/ffffff', CAST(N'2021-10-29' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (14, N'Comedy', 19, 53.2, N'Drainage of Common Bile Duct, Percutaneous Approach', N'https://muasamgiadinh.com.vn/wp-content/uploads/2017/10/chan-ga-goi-dem-song-hong.jpg', CAST(N'2021-08-31' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (15, N'Comedy|Drama', 20, 99.2, N'Revision of Nonautologous Tissue Substitute in Right Clavicle, Percutaneous Approach', N'https://everonhanoi.vn/wp-content/uploads/2017/06/chan-ga-goi-dem-cuoi.jpg', CAST(N'2021-11-06' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (16, N'Western', 20, 46, N'Extirpation of Matter from Right Patella, Percutaneous Approach', N'https://changagoikhachsan.vn/wp-content/uploads/2018/03/chan-ga-goi-dem-3-1.jpg', CAST(N'2022-02-13' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (17, N'(no genres listed)', 7, 3.7, N'Drainage of Right Tarsal Joint with Drainage Device, Percutaneous Approach', N'https://demxanh.com/media/product/3307_chan_ga_goi_singapore_king_luxury_12__4_.jpg', CAST(N'2022-04-08' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (18, N'Documentary', 12, 80.6, N'Supplement Right Lacrimal Bone with Nonautologous Tissue Substitute, Open Approach', N'https://demxanh.com/media/product/3307_chan_ga_goi_singapore_king_luxury_12__5_.jpg', CAST(N'2022-02-20' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (19, N'Horror|Thriller', 10, 57.9, N'Magnetic Resonance Imaging (MRI) of Pelvic Region', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3onqmZIZjmJvmFItQvRfCHm1jngBhlKEnk2uB3vdJIFTXi4jQeI_mfvCaswPUl8yCuPk&usqp=CAU', CAST(N'2021-04-24' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (20, N'Drama', 18, 55.1, N'Bypass Left Common Iliac Artery to Celiac Artery with Nonautologous Tissue Substitute, Open Approach', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHysJQ82FPLwHDwlTzu4rKHj6s6KGNyg2CMPu3v5F0JQSCBu0Eve8fJbtlTIiWydgO0Jo&usqp=CAU', CAST(N'2021-12-02' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (21, N'Drama|Musical|Romance', 17, 85.8, N'Bypass Coronary Artery, Two Arteries from Abdominal Artery, Percutaneous Endoscopic Approach', N'https://ngochanh.vn/wp-content/uploads/2020/10/ch%C4%83n-ga-g%C3%B4%CC%81i-ne%CC%A3m-cao-c%C3%A2%CC%81p-1170x780.jpg', CAST(N'2022-03-23' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (22, N'Drama|War', 9, 17.1, N'High Dose Rate (HDR) Brachytherapy of Pancreas using Cesium 137 (Cs-137)', N'https://ngochanh.vn/wp-content/uploads/2020/10/ch%C4%83n-ga-g%C3%B4%CC%81i-n%C3%AA%CC%A3m-cotton-cao-c%C3%A2%CC%81p-1170x780.jpg', CAST(N'2022-02-06' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (23, N'Drama|Thriller', 16, 13.2, N'Monitoring of Right Knee Joint using Intraoperative Knee Replacement Sensor, Open Approach, New Technology Group 1', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM7a_9xtln_h7gHOCGXBx1k8p8mjFA-HleibyjqxhYm9UPqdnrlbT5kA5khznhR_p2K-o&usqp=CAU', CAST(N'2021-07-28' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (24, N'Horror|Mystery|Sci-Fi', 8, 78.3, N'Replacement of Esophageal Vein with Synthetic Substitute, Percutaneous Endoscopic Approach', N'https://gagoinem.com/wp-content/uploads/00011-3.jpg', CAST(N'2021-06-20' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (25, N'Drama', 12, 18.8, N'High Dose Rate (HDR) Brachytherapy of Bronchus using Californium 252 (Cf-252)', N'https://cf.shopee.vn/file/40c2838c4767c557757fe6da0de66f79', CAST(N'2021-07-29' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (26, N'Comedy|Drama', 19, 87, N'Occlusion of Right External Iliac Vein with Intraluminal Device, Percutaneous Endoscopic Approach', N'https://dodungnoithat.vn/wp-content/uploads/bo-chan-ga-goi-nem-018.jpg', CAST(N'2021-01-20' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (27, N'Action|Adventure|Drama|Romance|War', 20, 14.4, N'Excision of Vagus Nerve, Percutaneous Approach', N'https://demhong.vn/wp-content/uploads/2019/04/chan-ga-goi-don-sac-ghi.jpg', CAST(N'2021-04-30' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (28, N'Mystery|Romance|Thriller', 9, 15, N'Insertion of Infusion Pump into Left Upper Arm Subcutaneous Tissue and Fascia, Open Approach', N'https://sieuthidem.vn/wp-content/uploads/2020/06/10143473a8ae4ef017bf.jpg', CAST(N'2021-07-02' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (29, N'Adventure|Musical|Romance', 11, 74.3, N'Excision of Left Finger Phalanx, Percutaneous Approach', N'https://media3.scdn.vn/img3/2019/5_13/9abflh_simg_de2fe0_500x500_maxb.jpg', CAST(N'2021-02-22' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (30, N'Comedy|Crime|Musical|Mystery', 13, 76.8, N'Removal of Internal Fixation Device from Lumbosacral Joint, External Approach', N'https://salt.tikicdn.com/ts/product/c3/8c/3a/1f62fc22e9635dd7a64067d579b3d6d9.jpg', CAST(N'2021-07-14' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (31, N'Comedy|Fantasy|Horror', 13, 95.6, N'Introduction of Other Thrombolytic into Heart, Percutaneous Approach', N'https://cf.shopee.vn/file/2339addbd4e3cdb8f2b36479f4988ab0', CAST(N'2021-03-16' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (32, N'Action|Drama', 13, 82.4, N'Reposition Left Carpal Joint, Percutaneous Endoscopic Approach', N'https://haithienplaza.com/gleepyns/2020/03/Ch%C4%83n-ga-g%E1%BB%91i-m%E1%BA%A7u-tr%C6%A1n-ph%E1%BB%91i-m%E1%BA%A7u-%C4%91%E1%BA%B9p.jpg', CAST(N'2021-10-21' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (33, N'Comedy|Romance', 12, 31.8, N'Removal of Synthetic Substitute from Right Breast, Via Natural or Artificial Opening', N'https://fami88.vn/wp-content/uploads/2019/06/chan-ga-phoi-mau-vang-ghi.jpg', CAST(N'2021-03-08' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (34, N'Documentary', 11, 33.1, N'Fusion of Thoracic Vertebral Joint with Nonautologous Tissue Substitute, Anterior Approach, Anterior Column, Percutaneous Approach', N'https://demeverhome.com/wp-content/uploads/2016/08/bo-chan-ga-goi-everhome-EV-001.jpg', CAST(N'2021-08-15' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (35, N'Action|Adventure|Fantasy', 18, 97.4, N'Release Left Ankle Tendon, External Approach', N'https://demxanh.com/media/news/2704_4258_cgg_dv1074.jpg', CAST(N'2021-05-02' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (36, N'Drama', 12, 6, N'Bypass Right Pulmonary Artery from Subclavian with Autologous Arterial Tissue, Percutaneous Endoscopic Approach', N'https://haithienplaza.com/gleepyns/2020/08/Ch%C4%83n-ga-g%E1%BB%91i-%C4%91%E1%BB%87m-m%E1%BA%A7u-v%C3%A0ng-mix-ghi.jpg', CAST(N'2021-11-25' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (37, N'Documentary', 11, 81.9, N'Drainage of Left Adrenal Gland, Open Approach, Diagnostic', N'https://cf.shopee.vn/file/bd51d7d220f2d496d3d44b342a3199e0', CAST(N'2021-10-29' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (38, N'Drama', 18, 86.8, N'Computerized Tomography (CT Scan) of Abdomen using Other Contrast', N'https://cf.shopee.vn/file/ef805554e1cfd920e7dd352d7e39cade', CAST(N'2022-02-13' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (39, N'Drama|Romance', 9, 74.4, N'Irrigation of Pleural Cavity using Irrigating Substance, Percutaneous Approach, Diagnostic', N'https://cf.shopee.vn/file/66e82313e42147344a96d27f7ffd4278', CAST(N'2021-02-13' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (40, N'Adventure|Animation|Comedy', 11, 26.9, N'Insertion of Internal Fixation Device into Right Metatarsal-Tarsal Joint, Percutaneous Endoscopic Approach', N'https://cf.shopee.vn/file/fabfaf09810d8f111f7312835bced4f1', CAST(N'2021-01-13' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (41, N'Action|Horror', 7, 54.2, N'Revision of Internal Fixation Device in Right Metacarpocarpal Joint, Open Approach', N'https://cf.shopee.vn/file/3a574d99d55d143fe6879187ec347d82', CAST(N'2021-11-29' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (42, N'Action', 9, 69.2, N'Drainage of Left Ankle Bursa and Ligament, Percutaneous Endoscopic Approach, Diagnostic', N'https://sakurafashion.vn/upload/images_294/84668831_2784727841595606_8305328884778270720_n.jpg', CAST(N'2021-06-04' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (43, N'Crime|Drama', 16, 36, N'Removal of Synthetic Substitute from Left Breast, Percutaneous Approach', N'https://cf.shopee.vn/file/3a574d99d55d143fe6879187ec347d82', CAST(N'2022-01-02' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (44, N'Comedy|Musical', 15, 92.9, N'Removal of Autologous Tissue Substitute from Left Fibula, Open Approach', N'http://bizweb.dktcdn.net/thumb/grande/100/346/855/products/1-20132aa9-af57-40a4-afb1-4a8becad61ec.jpg?v=1588909250653', CAST(N'2022-03-05' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (45, N'Comedy', 12, 71.1, N'Destruction of Lumbar Plexus, Percutaneous Endoscopic Approach', N'https://vn-test-11.slatic.net/p/ce84a6a6ad33ee3d5e6fc0c96faaf345.jpg', CAST(N'2021-06-05' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (46, N'Crime|Drama|Mystery', 17, 58.1, N'Revision of Synthetic Substitute in Right Pelvic Bone, Percutaneous Endoscopic Approach', N'https://cf.shopee.vn/file/01381a6b65bd0e949299fffce66b9b0f', CAST(N'2021-03-26' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (47, N'Drama', 14, 11.1, N'Drainage of Left Sternoclavicular Joint, Open Approach, Diagnostic', N'https://cf.shopee.vn/file/5da2ad426d9d792c2e73734ee6b2e86c', CAST(N'2021-01-30' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (48, N'Action|Crime|Drama|Thriller', 19, 26.2, N'Replacement of Left Sphenoid Bone with Nonautologous Tissue Substitute, Percutaneous Approach', N'https://salt.tikicdn.com/cache/400x400/ts/product/7a/5e/bc/740b283d5947158484cad3a3ebe3eda1.jpg', CAST(N'2022-01-29' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (49, N'Crime|Drama|Thriller', 8, 64.9, N'Insertion of Infusion Device into Right Subclavian Vein, Percutaneous Approach', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhUHzDNin0C6Orj5CzyOV5pAQhwRxO6JnQE4EyBowuPMX3ZJdNbtXOy_Mu7QvVen5LDJk&usqp=CAU', CAST(N'2021-05-07' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (50, N'Drama|Horror', 13, 8.2, N'Bypass Left External Iliac Artery to Right Internal Iliac Artery with Autologous Venous Tissue, Open Approach', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGqA_eKkzreFbLb2rTEZCnRvdB3wyLZZRla0L1HQNem2YmoPQgemDdDRjG1_IYOrTv-PQ&usqp=CAU', CAST(N'2021-11-13' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (51, N'Trong', 2, 12, N'sadasd', N'sadas', CAST(N'2003-02-01' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [image_url], [created_date], [category_id]) VALUES (52, N'TrongGGG', 2, 12, N'sadasd', N'https://changagoidemdep.vn/media/product/2643_chan_ga_goi_dem_tron__3_.jpg', CAST(N'2045-02-01' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1, N'Tuan', N'013654789', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (2, N'TrongGGG', N'1223456789', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (3, N'TrongGGG', N'1223456789', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (4, N'Trongdsfdsg', N'1223456789', N'Ha Noi')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__order__30F848ED] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__order__30F848ED]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__account___2F10007B] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__account___2F10007B]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__shipping__300424B4] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__shipping__300424B4]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__categor__267ABA7A] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__categor__267ABA7A]
GO
USE [master]
GO
ALTER DATABASE [ShoppingOnlineDB] SET  READ_WRITE 
GO
