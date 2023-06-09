USE [master]
GO
/****** Object:  Database [Course_DB]    Script Date: 5/31/2023 12:01:17 AM ******/
CREATE DATABASE [Course_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Course_DB', FILENAME = N'E:\database Swp391\Course_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Course_DB_log', FILENAME = N'E:\database Swp391\Course_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Course_DB] SET COMPATIBILITY_LEVEL = 150
GO

begin
EXEC [Course_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Course_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Course_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Course_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Course_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Course_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Course_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Course_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Course_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Course_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Course_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Course_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Course_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Course_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Course_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Course_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Course_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Course_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Course_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Course_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Course_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Course_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Course_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Course_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [Course_DB] SET  MULTI_USER 
GO
ALTER DATABASE [Course_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Course_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Course_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Course_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Course_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Course_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Course_DB', N'ON'
GO
ALTER DATABASE [Course_DB] SET QUERY_STORE = OFF
GO
USE [Course_DB]
GO
/****** Object:  Table [dbo].[choices]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[choices](
	[choice_id] [int] IDENTITY(1,1) NOT NULL,
	[choice_content] [nvarchar](255) NULL,
	[is_true] [bit] NULL,
	[ques_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[choice_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[contact_id] [int] IDENTITY(1,1) NOT NULL,
	[user1_id] [int] NULL,
	[user2_id] [int] NULL,
	[blocked] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [int] NOT NULL,
	[course_name] [nvarchar](50) NULL,
	[course_img] [nvarchar](max) NULL,
	[course_price] [money] NULL,
	[course_desc] [nvarchar](max) NULL,
	[last_update] [date] NULL,
	[sub_id] [int] NULL,
	[level_id] [int] NULL,
	[course_status] [bit] NULL,
	[durationDAY] [int] NULL,
	[course_Title] [nvarchar](150) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[district]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[district](
	[district_id] [int] NOT NULL,
	[province_id] [int] NOT NULL,
	[name] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_district] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[gender_id] [int] IDENTITY(1,1) NOT NULL,
	[gender_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[gender_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[lesson_id] [int] IDENTITY(1,1) NOT NULL,
	[lesson_name] [nvarchar](50) NULL,
	[lesson_video] [nvarchar](max) NULL,
	[section_id] [int] NULL,
	[lesson_desc] [nvarchar](max) NULL,
	[lesson_status] [bit] NULL,
 CONSTRAINT [PK_Lesson] PRIMARY KEY CLUSTERED 
(
	[lesson_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[Lesson_Result]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson_Result](
	[lesson_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[lesson_status] [bit] NULL,
 CONSTRAINT [PK_Lesson_Result] PRIMARY KEY CLUSTERED 
(
	[lesson_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Level]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[level_id] [int] IDENTITY(1,1) NOT NULL,
	[level_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Level] PRIMARY KEY CLUSTERED 
(
	[level_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manage_Course]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manage_Course](
	[course_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[course_Start] [datetime] NULL,
	[course_end] [datetime] NULL,
 CONSTRAINT [PK_Manage_Course] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[message]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[message](
	[message_id] [int] IDENTITY(1,1) NOT NULL,
	[contact_id] [int] NULL,
	[title] [nvarchar](255) NULL,
	[content] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[message_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[per_id] [int] IDENTITY(1,1) NOT NULL,
	[per_name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[per_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[post_id] [int] IDENTITY(1,1) NOT NULL,
	[post_img] [nvarchar](max) NULL,
	[post_title] [nvarchar](max) NULL,
	[post_desc] [nvarchar](max) NULL,
	[post_date] [date] NULL,
	[post_status] [bit] NULL,
	[blog_id] [int] NULL,
	[postContent] [nvarchar](max) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[Post_Category]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Category](
	[blog_id] [int] IDENTITY(1,1) NOT NULL,
	[blog_name] [nvarchar](255) NULL,
	[blog_title] [nvarchar](max) NULL,
	[updated_date] [date] NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[Price_Package]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price_Package](
	[package_id] [int] IDENTITY(1,1) NOT NULL,
	[package_name] [nvarchar](50) NULL,
	[duration] [int] NULL,
	[pack_status] [bit] NULL,
	[multiple] [float] NULL,
	[description] [nvarchar](300) NULL,
 CONSTRAINT [PK_Price_Package] PRIMARY KEY CLUSTERED 
(
	[package_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[province]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[province](
	[province_id] [int] NOT NULL,
	[name] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_province] PRIMARY KEY CLUSTERED 
(
	[province_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ques_Result]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ques_Result](
	[ques_result_id] [int] IDENTITY(1,1) NOT NULL,
	[ques_id] [int] NULL,
	[user_id] [int] NULL,
	[ques_status] [bit] NULL,
	[ques_flag] [bit] NULL,
	[ques_answer] [int] NULL,
	[quiz_result_id] [int] NULL,
 CONSTRAINT [PK_Ques_Result] PRIMARY KEY CLUSTERED 
(
	[ques_result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[ques_id] [int] IDENTITY(1,1) NOT NULL,
	[ques_content] [nvarchar](max) NULL,
	[ques_note] [nvarchar](max) NULL,
	[quiz_id] [int] NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[ques_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[quiz_id] [int] IDENTITY(1,1) NOT NULL,
	[quiz_name] [nvarchar](255) NULL,
	[quiz_desc] [nvarchar](max) NULL,
	[section_id] [int] NULL,
	[quiz_status] [bit] NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[quiz_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[Quiz_Result]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz_Result](
	[quiz_result_id] [int] IDENTITY(1,1) NOT NULL,
	[quiz_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[quiz_status] [bit] NULL,
	[quiz_grade] [float] NULL,
	[quiz_start] [datetime] NULL,
	[quiz_end] [datetime] NULL,
	[attempt] [int] NULL,
 CONSTRAINT [PK_Quiz_Result] PRIMARY KEY CLUSTERED 
(
	[quiz_result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[reg_id] [int] IDENTITY(1,1) NOT NULL,
	[reg_time] [date] NULL,
	[course_id] [int] NULL,
	[user_id] [int] NULL,
	[package_id] [int] NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[reg_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Permission]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Permission](
	[role_per_id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[per_id] [int] NULL,
 CONSTRAINT [PK_Role_Permission] PRIMARY KEY CLUSTERED 
(
	[role_per_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[section_id] [int] IDENTITY(1,1) NOT NULL,
	[course_id] [int] NOT NULL,
	[section_name] [nvarchar](255) NULL,
	[section_status] [bit] NULL,
 CONSTRAINT [PK_Section_1] PRIMARY KEY CLUSTERED 
(
	[section_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[SettingId] [int] IDENTITY(1,1) NOT NULL,
	[SettingTypeId] [int] NOT NULL,
	[SettingValue] [nvarchar](50) NOT NULL,
	[SettingOrder] [nvarchar](100) NOT NULL,
	[SettingStatusId] [int] NOT NULL,
	[SettingDescription] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[SettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[SettingStatus]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SettingStatus](
	[SettingStatusId] [int] IDENTITY(1,1) NOT NULL,
	[SettingStatusName] [nchar](10) NULL,
 CONSTRAINT [PK_SettingStatus] PRIMARY KEY CLUSTERED 
(
	[SettingStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SettingType]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SettingType](
	[SettingTypeId] [int] IDENTITY(1,1) NOT NULL,
	[SettingTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SettingType] PRIMARY KEY CLUSTERED 
(
	[SettingTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[slider_id] [int] IDENTITY(1,1) NOT NULL,
	[slider_title] [nvarchar](max) NULL,
	[slider_img] [nvarchar](max) NULL,
	[slider_link] [nvarchar](max) NULL,
	[slider_status] [bit] NULL,
	[slider_note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[slider_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[sub_id] [int] IDENTITY(1,1) NOT NULL,
	[sub_name] [nvarchar](50) NULL,
	[sub_img] [nvarchar](max) NULL,
	[sub_desc] [nvarchar](max) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/31/2023 12:01:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_email] [nvarchar](100) NOT NULL,
	[password] [nvarchar](255) NULL,
	[full_name] [nvarchar](255) NOT NULL,
	[user_img] [nvarchar](max) NULL,
	[gender_id] [int] NULL,
	[user_dob] [date] NULL,
	[user_phone] [nvarchar](50) NULL,
	[user_address] [nvarchar](255) NULL,
	[user_wallet] [nvarchar](100) NULL,
	[role_id] [int] NULL,
	[user_time] [date] NULL,
	[user_status] [bit] NULL,
	[Score] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
ALTER TABLE [dbo].[choices]  WITH CHECK ADD FOREIGN KEY([ques_id])
REFERENCES [dbo].[Question] ([ques_id])
GO
ALTER TABLE [dbo].[contact]  WITH CHECK ADD FOREIGN KEY([user1_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[contact]  WITH CHECK ADD FOREIGN KEY([user2_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Level] FOREIGN KEY([level_id])
REFERENCES [dbo].[Level] ([level_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Level]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Subject] FOREIGN KEY([sub_id])
REFERENCES [dbo].[Subject] ([sub_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Subject]
GO
ALTER TABLE [dbo].[district]  WITH CHECK ADD FOREIGN KEY([province_id])
REFERENCES [dbo].[province] ([province_id])
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD FOREIGN KEY([section_id])
REFERENCES [dbo].[Section] ([section_id])
GO
ALTER TABLE [dbo].[Lesson_Result]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Result_Lesson] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[Lesson] ([lesson_id])
GO
ALTER TABLE [dbo].[Lesson_Result] CHECK CONSTRAINT [FK_Lesson_Result_Lesson]
GO
ALTER TABLE [dbo].[Lesson_Result]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Result_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Lesson_Result] CHECK CONSTRAINT [FK_Lesson_Result_User]
GO
ALTER TABLE [dbo].[Manage_Course]  WITH CHECK ADD  CONSTRAINT [FK_Manage_Course_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Manage_Course] CHECK CONSTRAINT [FK_Manage_Course_Course]
GO
ALTER TABLE [dbo].[Manage_Course]  WITH CHECK ADD  CONSTRAINT [FK_Manage_Course_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Manage_Course] CHECK CONSTRAINT [FK_Manage_Course_User]
GO
ALTER TABLE [dbo].[message]  WITH CHECK ADD FOREIGN KEY([contact_id])
REFERENCES [dbo].[contact] ([contact_id])
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Blog] FOREIGN KEY([blog_id])
REFERENCES [dbo].[Post_Category] ([blog_id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Blog]
GO
ALTER TABLE [dbo].[Ques_Result]  WITH CHECK ADD FOREIGN KEY([quiz_result_id])
REFERENCES [dbo].[Quiz_Result] ([quiz_result_id])
GO
ALTER TABLE [dbo].[Ques_Result]  WITH CHECK ADD  CONSTRAINT [FK_Ques_Result_Question] FOREIGN KEY([ques_id])
REFERENCES [dbo].[Question] ([ques_id])
GO
ALTER TABLE [dbo].[Ques_Result] CHECK CONSTRAINT [FK_Ques_Result_Question]
GO
ALTER TABLE [dbo].[Ques_Result]  WITH CHECK ADD  CONSTRAINT [FK_Ques_Result_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Ques_Result] CHECK CONSTRAINT [FK_Ques_Result_User]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Quiz] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([quiz_id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Quiz]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD FOREIGN KEY([section_id])
REFERENCES [dbo].[Section] ([section_id])
GO
ALTER TABLE [dbo].[Quiz_Result]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Result_Quiz] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([quiz_id])
GO
ALTER TABLE [dbo].[Quiz_Result] CHECK CONSTRAINT [FK_Quiz_Result_Quiz]
GO
ALTER TABLE [dbo].[Quiz_Result]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Result_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Quiz_Result] CHECK CONSTRAINT [FK_Quiz_Result_User]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Course]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Price_Package] FOREIGN KEY([package_id])
REFERENCES [dbo].[Price_Package] ([package_id])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Price_Package]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_User]
GO
ALTER TABLE [dbo].[Role_Permission]  WITH CHECK ADD  CONSTRAINT [FK_Role_Permission_Permission] FOREIGN KEY([per_id])
REFERENCES [dbo].[Permission] ([per_id])
GO
ALTER TABLE [dbo].[Role_Permission] CHECK CONSTRAINT [FK_Role_Permission_Permission]
GO
ALTER TABLE [dbo].[Role_Permission]  WITH CHECK ADD  CONSTRAINT [FK_Role_Permission_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Role_Permission] CHECK CONSTRAINT [FK_Role_Permission_Role]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_Course]
GO
ALTER TABLE [dbo].[Setting]  WITH CHECK ADD  CONSTRAINT [FK_Setting_SettingStatus] FOREIGN KEY([SettingStatusId])
REFERENCES [dbo].[SettingStatus] ([SettingStatusId])
GO
ALTER TABLE [dbo].[Setting] CHECK CONSTRAINT [FK_Setting_SettingStatus]
GO
ALTER TABLE [dbo].[Setting]  WITH CHECK ADD  CONSTRAINT [FK_Setting_SettingType] FOREIGN KEY([SettingTypeId])
REFERENCES [dbo].[SettingType] ([SettingTypeId])
GO
ALTER TABLE [dbo].[Setting] CHECK CONSTRAINT [FK_Setting_SettingType]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Gender] FOREIGN KEY([gender_id])
REFERENCES [dbo].[Gender] ([gender_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Gender]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]

GO
USE [master]
GO
ALTER DATABASE [Course_DB] SET  READ_WRITE 
GO
