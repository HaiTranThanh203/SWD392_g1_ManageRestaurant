USE [master]
GO
/****** Object:  Database [swd392_ManageRestaurant]    Script Date: 10/27/2024 2:03:31 PM ******/
CREATE DATABASE [swd392_ManageRestaurant]

GO
ALTER DATABASE [swd392_ManageRestaurant] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET ARITHABORT OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET  ENABLE_BROKER 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET RECOVERY FULL 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET  MULTI_USER 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [swd392_ManageRestaurant] SET DB_CHAINING OFF 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [swd392_ManageRestaurant] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'swd392_ManageRestaurant', N'ON'
GO
ALTER DATABASE [swd392_ManageRestaurant] SET QUERY_STORE = ON
GO
ALTER DATABASE [swd392_ManageRestaurant] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [swd392_ManageRestaurant]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/27/2024 2:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountId] [bigint] IDENTITY(1,1) NOT NULL,
	[phoneNumber] [varchar](15) NULL,
	[name] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[status] [bit] NULL,
	[roleId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 10/27/2024 2:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[billId] [bigint] IDENTITY(1,1) NOT NULL,
	[orderId] [bigint] NULL,
	[total] [float] NULL,
	[dateCreated] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[billId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/27/2024 2:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customerId] [bigint] IDENTITY(1,1) NOT NULL,
	[phoneNumber] [varchar](15) NULL,
	[nameCustomer] [nvarchar](255) NULL,
	[addressCustomer] [nvarchar](255) NULL,
	[point] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[customerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dish]    Script Date: 10/27/2024 2:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dish](
	[dishId] [bigint] IDENTITY(1,1) NOT NULL,
	[foodName] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[price] [float] NULL,
	[categoryId] [bigint] NULL,
	[image] [nvarchar](255) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[dishId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DishCategory]    Script Date: 10/27/2024 2:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DishCategory](
	[dishCategoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[dishCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DishOrder]    Script Date: 10/27/2024 2:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DishOrder](
	[dishOrderId] [bigint] IDENTITY(1,1) NOT NULL,
	[dishId] [bigint] NULL,
	[orderId] [bigint] NULL,
	[quantity] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[dishOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/27/2024 2:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderId] [bigint] IDENTITY(1,1) NOT NULL,
	[orderDate] [date] NULL,
	[tableId] [bigint] NULL,
	[accountId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurant]    Script Date: 10/27/2024 2:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurant](
	[restaurantId] [bigint] IDENTITY(1,1) NOT NULL,
	[restaurantName] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[restaurantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantTable]    Script Date: 10/27/2024 2:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantTable](
	[tableId] [bigint] IDENTITY(1,1) NOT NULL,
	[numberChair] [int] NULL,
	[description] [nvarchar](255) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[tableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/27/2024 2:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleId] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[description] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 10/27/2024 2:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[scheduleId] [bigint] IDENTITY(1,1) NOT NULL,
	[customerId] [bigint] NULL,
	[note] [nvarchar](255) NULL,
	[deposit] [float] NULL,
	[bookDate] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[scheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScheduleTable]    Script Date: 10/27/2024 2:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleTable](
	[scheduleId] [bigint] NOT NULL,
	[tableId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[scheduleId] ASC,
	[tableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RestaurantTable] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([roleId])
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([orderId])
REFERENCES [dbo].[Orders] ([orderId])
GO
ALTER TABLE [dbo].[Dish]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[DishCategory] ([dishCategoryId])
GO
ALTER TABLE [dbo].[DishOrder]  WITH CHECK ADD FOREIGN KEY([dishId])
REFERENCES [dbo].[Dish] ([dishId])
GO
ALTER TABLE [dbo].[DishOrder]  WITH CHECK ADD FOREIGN KEY([orderId])
REFERENCES [dbo].[Orders] ([orderId])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([accountId])
REFERENCES [dbo].[Account] ([accountId])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([tableId])
REFERENCES [dbo].[RestaurantTable] ([tableId])
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD FOREIGN KEY([customerId])
REFERENCES [dbo].[Customer] ([customerId])
GO
ALTER TABLE [dbo].[ScheduleTable]  WITH CHECK ADD FOREIGN KEY([scheduleId])
REFERENCES [dbo].[Schedule] ([scheduleId])
GO
ALTER TABLE [dbo].[ScheduleTable]  WITH CHECK ADD FOREIGN KEY([tableId])
REFERENCES [dbo].[RestaurantTable] ([tableId])
GO
USE [master]
GO
ALTER DATABASE [swd392_ManageRestaurant] SET  READ_WRITE 
GO
