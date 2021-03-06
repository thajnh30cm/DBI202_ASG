USE [master]
GO
/****** Object:  Database [ASSIGNMENT_DBI202]    Script Date: 7/13/2022 8:11:48 AM ******/
CREATE DATABASE [ASSIGNMENT_DBI202]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASSIGNMENT_DBI202', FILENAME = N'D:\SQL2019\MSSQL15.THAJNH\MSSQL\DATA\ASSIGNMENT_DBI202.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASSIGNMENT_DBI202_log', FILENAME = N'D:\SQL2019\MSSQL15.THAJNH\MSSQL\DATA\ASSIGNMENT_DBI202_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASSIGNMENT_DBI202].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET RECOVERY FULL 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET  MULTI_USER 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ASSIGNMENT_DBI202', N'ON'
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET QUERY_STORE = OFF
GO
USE [ASSIGNMENT_DBI202]
GO
/****** Object:  Table [dbo].[Acess]    Script Date: 7/13/2022 8:11:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acess](
	[AssessmentID] [nvarchar](50) NOT NULL,
	[CourseID] [nvarchar](50) NOT NULL,
	[ClassID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Acess] PRIMARY KEY CLUSTERED 
(
	[AssessmentID] ASC,
	[CourseID] ASC,
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assessment System]    Script Date: 7/13/2022 8:11:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment System](
	[AssessmentID] [nvarchar](50) NOT NULL,
	[CourseID] [nvarchar](50) NOT NULL,
	[CategoryID] [nvarchar](50) NULL,
	[Weight] [float] NULL,
	[Num of Question] [int] NULL,
	[Duration] [nvarchar](20) NULL,
 CONSTRAINT [PK_Assessment System] PRIMARY KEY CLUSTERED 
(
	[AssessmentID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assign]    Script Date: 7/13/2022 8:11:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assign](
	[AssignmentID] [nvarchar](50) NOT NULL,
	[LectureID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Assign] PRIMARY KEY CLUSTERED 
(
	[AssignmentID] ASC,
	[LectureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 7/13/2022 8:11:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment](
	[AssignmentID] [nvarchar](50) NOT NULL,
	[Assignment Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Assignment] PRIMARY KEY CLUSTERED 
(
	[AssignmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/13/2022 8:11:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [nvarchar](50) NOT NULL,
	[Category Name] [nvarchar](50) NULL,
	[Type] [nvarchar](20) NULL,
	[Pass Condition] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 7/13/2022 8:11:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassID] [nvarchar](50) NOT NULL,
	[LectureID] [nvarchar](50) NULL,
	[AssessmentID] [nvarchar](50) NULL,
	[Semester] [nvarchar](20) NULL,
	[Start Date] [date] NULL,
	[End Date] [date] NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 7/13/2022 8:11:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[StudentID] [nvarchar](50) NOT NULL,
	[ClassID] [nvarchar](50) NOT NULL,
	[Average] [float] NULL,
	[PASS] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 7/13/2022 8:11:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [nvarchar](50) NOT NULL,
	[AssignmentID] [nvarchar](50) NULL,
	[Course Name] [nvarchar](100) NULL,
	[Online] [bit] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 7/13/2022 8:11:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enroll](
	[ClassID] [nvarchar](50) NOT NULL,
	[GroupID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Enroll] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC,
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 7/13/2022 8:11:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[AssessmmentID] [nvarchar](50) NOT NULL,
	[CourseID] [nvarchar](50) NOT NULL,
	[StudentID] [nvarchar](50) NOT NULL,
	[Score] [float] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[AssessmmentID] ASC,
	[CourseID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 7/13/2022 8:11:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GroupID] [nvarchar](50) NOT NULL,
	[Major] [nvarchar](30) NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Join]    Script Date: 7/13/2022 8:11:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Join](
	[StudentID] [nvarchar](50) NOT NULL,
	[GroupID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Join] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecture]    Script Date: 7/13/2022 8:11:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecture](
	[LectureID] [nvarchar](50) NOT NULL,
	[First Name] [nvarchar](10) NULL,
	[Last Name] [nvarchar](10) NULL,
	[Gender] [bit] NULL,
	[DoB] [date] NULL,
	[Phone] [nvarchar](20) NULL,
	[Emall] [nvarchar](200) NULL,
 CONSTRAINT [PK_Lecture] PRIMARY KEY CLUSTERED 
(
	[LectureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/13/2022 8:11:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [nvarchar](50) NOT NULL,
	[First Name] [nvarchar](10) NULL,
	[Last Name] [nvarchar](10) NULL,
	[Address] [nvarchar](200) NULL,
	[Gender] [bit] NULL,
	[DoB] [date] NULL,
	[Emaill] [nvarchar](100) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Acess] ([AssessmentID], [CourseID], [ClassID]) VALUES (N'1', N'CSD202', N'2')
INSERT [dbo].[Acess] ([AssessmentID], [CourseID], [ClassID]) VALUES (N'10', N'DBI202', N'1')
INSERT [dbo].[Acess] ([AssessmentID], [CourseID], [ClassID]) VALUES (N'11', N'DBI202', N'1')
INSERT [dbo].[Acess] ([AssessmentID], [CourseID], [ClassID]) VALUES (N'12', N'DBI202', N'1')
INSERT [dbo].[Acess] ([AssessmentID], [CourseID], [ClassID]) VALUES (N'13', N'LAB211', N'8')
INSERT [dbo].[Acess] ([AssessmentID], [CourseID], [ClassID]) VALUES (N'2', N'CSD202', N'2')
INSERT [dbo].[Acess] ([AssessmentID], [CourseID], [ClassID]) VALUES (N'3', N'CSD202', N'2')
INSERT [dbo].[Acess] ([AssessmentID], [CourseID], [ClassID]) VALUES (N'4', N'CSD202', N'2')
INSERT [dbo].[Acess] ([AssessmentID], [CourseID], [ClassID]) VALUES (N'5', N'CSD202', N'2')
INSERT [dbo].[Acess] ([AssessmentID], [CourseID], [ClassID]) VALUES (N'6', N'CSD202', N'2')
INSERT [dbo].[Acess] ([AssessmentID], [CourseID], [ClassID]) VALUES (N'7', N'DBI202', N'1')
INSERT [dbo].[Acess] ([AssessmentID], [CourseID], [ClassID]) VALUES (N'8', N'DBI202', N'1')
INSERT [dbo].[Acess] ([AssessmentID], [CourseID], [ClassID]) VALUES (N'9', N'DBI202', N'1')
GO
INSERT [dbo].[Assessment System] ([AssessmentID], [CourseID], [CategoryID], [Weight], [Num of Question], [Duration]) VALUES (N'1', N'CSD202', N'Lab1', 0.05, NULL, N'45 mins')
INSERT [dbo].[Assessment System] ([AssessmentID], [CourseID], [CategoryID], [Weight], [Num of Question], [Duration]) VALUES (N'10', N'DBI202', N'As2', 0.1, NULL, N'45 mins')
INSERT [dbo].[Assessment System] ([AssessmentID], [CourseID], [CategoryID], [Weight], [Num of Question], [Duration]) VALUES (N'11', N'DBI202', N'PE', 0.4, 10, N'90 mins')
INSERT [dbo].[Assessment System] ([AssessmentID], [CourseID], [CategoryID], [Weight], [Num of Question], [Duration]) VALUES (N'12', N'DBI202', N'FE', 0.3, 50, N'90 mins')
INSERT [dbo].[Assessment System] ([AssessmentID], [CourseID], [CategoryID], [Weight], [Num of Question], [Duration]) VALUES (N'13', N'LAB211', N'LOC', 1, NULL, NULL)
INSERT [dbo].[Assessment System] ([AssessmentID], [CourseID], [CategoryID], [Weight], [Num of Question], [Duration]) VALUES (N'2', N'CSD202', N'Lab2', 0.05, NULL, N'60 mins')
INSERT [dbo].[Assessment System] ([AssessmentID], [CourseID], [CategoryID], [Weight], [Num of Question], [Duration]) VALUES (N'3', N'CSD202', N'Pt1', 0.1, 25, N'45 mins')
INSERT [dbo].[Assessment System] ([AssessmentID], [CourseID], [CategoryID], [Weight], [Num of Question], [Duration]) VALUES (N'4', N'CSD202', N'Pt2', 0.1, 25, N'45 mins')
INSERT [dbo].[Assessment System] ([AssessmentID], [CourseID], [CategoryID], [Weight], [Num of Question], [Duration]) VALUES (N'5', N'CSD202', N'PE', 0.4, 3, N'90 mins')
INSERT [dbo].[Assessment System] ([AssessmentID], [CourseID], [CategoryID], [Weight], [Num of Question], [Duration]) VALUES (N'6', N'CSD202', N'FE', 0.3, 50, N'90 mins')
INSERT [dbo].[Assessment System] ([AssessmentID], [CourseID], [CategoryID], [Weight], [Num of Question], [Duration]) VALUES (N'7', N'DBI202', N'Lab1', 0.05, NULL, N'45 mins')
INSERT [dbo].[Assessment System] ([AssessmentID], [CourseID], [CategoryID], [Weight], [Num of Question], [Duration]) VALUES (N'8', N'DBI202', N'Lab2', 0.05, NULL, N'45 mins')
INSERT [dbo].[Assessment System] ([AssessmentID], [CourseID], [CategoryID], [Weight], [Num of Question], [Duration]) VALUES (N'9', N'DBI202', N'As1', 0.1, NULL, N'45 mins')
GO
INSERT [dbo].[Assign] ([AssignmentID], [LectureID]) VALUES (N'1', N'SonNT5')
INSERT [dbo].[Assign] ([AssignmentID], [LectureID]) VALUES (N'2', N'NangNTH')
INSERT [dbo].[Assign] ([AssignmentID], [LectureID]) VALUES (N'2', N'SonNT5')
INSERT [dbo].[Assign] ([AssignmentID], [LectureID]) VALUES (N'3', N'VanDT')
INSERT [dbo].[Assign] ([AssignmentID], [LectureID]) VALUES (N'4', N'AnNT7')
INSERT [dbo].[Assign] ([AssignmentID], [LectureID]) VALUES (N'5', N'DucHM29')
GO
INSERT [dbo].[Assignment] ([AssignmentID], [Assignment Name]) VALUES (N'1', N'DBI202')
INSERT [dbo].[Assignment] ([AssignmentID], [Assignment Name]) VALUES (N'2', N'LAB211')
INSERT [dbo].[Assignment] ([AssignmentID], [Assignment Name]) VALUES (N'3', N'JPD113')
INSERT [dbo].[Assignment] ([AssignmentID], [Assignment Name]) VALUES (N'4', N'CSD202')
INSERT [dbo].[Assignment] ([AssignmentID], [Assignment Name]) VALUES (N'5', N'IAO202')
GO
INSERT [dbo].[Category] ([CategoryID], [Category Name], [Type], [Pass Condition]) VALUES (N'As1', N'Assignment 1', N'On-going', N'>750')
INSERT [dbo].[Category] ([CategoryID], [Category Name], [Type], [Pass Condition]) VALUES (N'As2', N'Assignment 2', N'On-going', N'>0')
INSERT [dbo].[Category] ([CategoryID], [Category Name], [Type], [Pass Condition]) VALUES (N'FE', N'Final exam', N'Final exam', N'>4')
INSERT [dbo].[Category] ([CategoryID], [Category Name], [Type], [Pass Condition]) VALUES (N'Lab1', N'Lab 1', N'On-going', N'>0')
INSERT [dbo].[Category] ([CategoryID], [Category Name], [Type], [Pass Condition]) VALUES (N'Lab2', N'Lab 2', N'On-going', N'>0')
INSERT [dbo].[Category] ([CategoryID], [Category Name], [Type], [Pass Condition]) VALUES (N'LOC', N'LOC', N'On-going', N'>0')
INSERT [dbo].[Category] ([CategoryID], [Category Name], [Type], [Pass Condition]) VALUES (N'PE', N'Practical exam', N'Practical exam', N'>0')
INSERT [dbo].[Category] ([CategoryID], [Category Name], [Type], [Pass Condition]) VALUES (N'Pt1', N'Progress test 1', N'Quiz', N'>0')
INSERT [dbo].[Category] ([CategoryID], [Category Name], [Type], [Pass Condition]) VALUES (N'Pt2', N'Progress test 2', N'Quiz', N'>0')
INSERT [dbo].[Category] ([CategoryID], [Category Name], [Type], [Pass Condition]) VALUES (N'Pt3', N'Progress test 3', N'Quiz', N'>0')
GO
INSERT [dbo].[Class] ([ClassID], [LectureID], [AssessmentID], [Semester], [Start Date], [End Date]) VALUES (N'1', N'SonNT5', N'2', N'SPR22', CAST(N'2022-01-05' AS Date), CAST(N'2022-03-25' AS Date))
INSERT [dbo].[Class] ([ClassID], [LectureID], [AssessmentID], [Semester], [Start Date], [End Date]) VALUES (N'10', N'DucHM29', N'5', N'SU22', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-20' AS Date))
INSERT [dbo].[Class] ([ClassID], [LectureID], [AssessmentID], [Semester], [Start Date], [End Date]) VALUES (N'2', N'AnNT7', N'4', N'SPR22', CAST(N'2022-01-05' AS Date), CAST(N'2022-03-25' AS Date))
INSERT [dbo].[Class] ([ClassID], [LectureID], [AssessmentID], [Semester], [Start Date], [End Date]) VALUES (N'3', N'NangNTH', N'2', N'SPR22', CAST(N'2022-01-05' AS Date), CAST(N'2022-03-25' AS Date))
INSERT [dbo].[Class] ([ClassID], [LectureID], [AssessmentID], [Semester], [Start Date], [End Date]) VALUES (N'4', N'VanDT', N'3', N'SPR22', CAST(N'2022-01-05' AS Date), CAST(N'2022-03-25' AS Date))
INSERT [dbo].[Class] ([ClassID], [LectureID], [AssessmentID], [Semester], [Start Date], [End Date]) VALUES (N'5', N'DucHM29', N'5', N'SPR22', CAST(N'2022-01-05' AS Date), CAST(N'2022-03-25' AS Date))
INSERT [dbo].[Class] ([ClassID], [LectureID], [AssessmentID], [Semester], [Start Date], [End Date]) VALUES (N'6', N'SonNT5', N'1', N'SU22', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-20' AS Date))
INSERT [dbo].[Class] ([ClassID], [LectureID], [AssessmentID], [Semester], [Start Date], [End Date]) VALUES (N'7', N'AnNT7', N'4', N'SU22', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-20' AS Date))
INSERT [dbo].[Class] ([ClassID], [LectureID], [AssessmentID], [Semester], [Start Date], [End Date]) VALUES (N'8', N'NangNTH', N'2', N'SU22', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-20' AS Date))
INSERT [dbo].[Class] ([ClassID], [LectureID], [AssessmentID], [Semester], [Start Date], [End Date]) VALUES (N'9', N'VanDT', N'3', N'SU22', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-20' AS Date))
GO
INSERT [dbo].[Contact] ([StudentID], [ClassID], [Average], [PASS]) VALUES (N'HE000', N'2', 8.65, 1)
INSERT [dbo].[Contact] ([StudentID], [ClassID], [Average], [PASS]) VALUES (N'HE000', N'3', NULL, 1)
INSERT [dbo].[Contact] ([StudentID], [ClassID], [Average], [PASS]) VALUES (N'HE111', N'1', 8.1, 1)
GO
INSERT [dbo].[Course] ([CourseID], [AssignmentID], [Course Name], [Online]) VALUES (N'CSD202', N'4', N'Data Structures and Algorithms', 0)
INSERT [dbo].[Course] ([CourseID], [AssignmentID], [Course Name], [Online]) VALUES (N'DBI202', N'1', N'Introduction to Databases', 0)
INSERT [dbo].[Course] ([CourseID], [AssignmentID], [Course Name], [Online]) VALUES (N'IAO202', N'5', N'Introduction to Information Assurance', 1)
INSERT [dbo].[Course] ([CourseID], [AssignmentID], [Course Name], [Online]) VALUES (N'JPD113', N'3', N'Elementary Japanese 1-A1.1', 0)
INSERT [dbo].[Course] ([CourseID], [AssignmentID], [Course Name], [Online]) VALUES (N'LAB211', N'2', N'	OOP with Java Lab', 0)
GO
INSERT [dbo].[Enroll] ([ClassID], [GroupID]) VALUES (N'1', N'AI1604')
INSERT [dbo].[Enroll] ([ClassID], [GroupID]) VALUES (N'10', N'IA1604')
INSERT [dbo].[Enroll] ([ClassID], [GroupID]) VALUES (N'2', N'IA1604')
INSERT [dbo].[Enroll] ([ClassID], [GroupID]) VALUES (N'3', N'SE1604')
INSERT [dbo].[Enroll] ([ClassID], [GroupID]) VALUES (N'4', N'AI1604')
INSERT [dbo].[Enroll] ([ClassID], [GroupID]) VALUES (N'5', N'SE1604')
INSERT [dbo].[Enroll] ([ClassID], [GroupID]) VALUES (N'6', N'IA1604')
INSERT [dbo].[Enroll] ([ClassID], [GroupID]) VALUES (N'7', N'SE1604')
INSERT [dbo].[Enroll] ([ClassID], [GroupID]) VALUES (N'8', N'IA1604')
INSERT [dbo].[Enroll] ([ClassID], [GroupID]) VALUES (N'9', N'AI1604')
GO
INSERT [dbo].[Grade] ([AssessmmentID], [CourseID], [StudentID], [Score], [Date]) VALUES (N'1', N'CSD202', N'HE000', 7, CAST(N'2022-01-20' AS Date))
INSERT [dbo].[Grade] ([AssessmmentID], [CourseID], [StudentID], [Score], [Date]) VALUES (N'10', N'DBI202', N'HE111', 9, CAST(N'2022-03-01' AS Date))
INSERT [dbo].[Grade] ([AssessmmentID], [CourseID], [StudentID], [Score], [Date]) VALUES (N'11', N'DBI202', N'HE111', 9, CAST(N'2022-03-15' AS Date))
INSERT [dbo].[Grade] ([AssessmmentID], [CourseID], [StudentID], [Score], [Date]) VALUES (N'12', N'DBI202', N'HE111', 6, CAST(N'2022-03-20' AS Date))
INSERT [dbo].[Grade] ([AssessmmentID], [CourseID], [StudentID], [Score], [Date]) VALUES (N'13', N'LAB211', N'HE000', 750, NULL)
INSERT [dbo].[Grade] ([AssessmmentID], [CourseID], [StudentID], [Score], [Date]) VALUES (N'2', N'CSD202', N'HE000', 8, CAST(N'2022-01-30' AS Date))
INSERT [dbo].[Grade] ([AssessmmentID], [CourseID], [StudentID], [Score], [Date]) VALUES (N'3', N'CSD202', N'HE000', 9, CAST(N'2022-02-10' AS Date))
INSERT [dbo].[Grade] ([AssessmmentID], [CourseID], [StudentID], [Score], [Date]) VALUES (N'4', N'CSD202', N'HE000', 7, CAST(N'2022-03-01' AS Date))
INSERT [dbo].[Grade] ([AssessmmentID], [CourseID], [StudentID], [Score], [Date]) VALUES (N'5', N'CSD202', N'HE000', 9, CAST(N'2022-03-15' AS Date))
INSERT [dbo].[Grade] ([AssessmmentID], [CourseID], [StudentID], [Score], [Date]) VALUES (N'6', N'CSD202', N'HE000', 9, CAST(N'2022-03-20' AS Date))
INSERT [dbo].[Grade] ([AssessmmentID], [CourseID], [StudentID], [Score], [Date]) VALUES (N'7', N'DBI202', N'HE111', 10, CAST(N'2022-01-20' AS Date))
INSERT [dbo].[Grade] ([AssessmmentID], [CourseID], [StudentID], [Score], [Date]) VALUES (N'8', N'DBI202', N'HE111', 10, CAST(N'2022-01-30' AS Date))
INSERT [dbo].[Grade] ([AssessmmentID], [CourseID], [StudentID], [Score], [Date]) VALUES (N'9', N'DBI202', N'HE111', 8, CAST(N'2022-02-10' AS Date))
GO
INSERT [dbo].[Group] ([GroupID], [Major]) VALUES (N'AI1604', N'Artificial Intelligence')
INSERT [dbo].[Group] ([GroupID], [Major]) VALUES (N'IA1604', N'Information Assurance')
INSERT [dbo].[Group] ([GroupID], [Major]) VALUES (N'SE1604', N'Software Engineering')
GO
INSERT [dbo].[Join] ([StudentID], [GroupID]) VALUES (N'HE000', N'AI1604')
INSERT [dbo].[Join] ([StudentID], [GroupID]) VALUES (N'HE000', N'IA1604')
INSERT [dbo].[Join] ([StudentID], [GroupID]) VALUES (N'HE111', N'AI1604')
INSERT [dbo].[Join] ([StudentID], [GroupID]) VALUES (N'HE111', N'IA1604')
INSERT [dbo].[Join] ([StudentID], [GroupID]) VALUES (N'HE222', N'SE1604')
INSERT [dbo].[Join] ([StudentID], [GroupID]) VALUES (N'HE333', N'IA1604')
INSERT [dbo].[Join] ([StudentID], [GroupID]) VALUES (N'HE444', N'SE1604')
INSERT [dbo].[Join] ([StudentID], [GroupID]) VALUES (N'HE555', N'AI1604')
INSERT [dbo].[Join] ([StudentID], [GroupID]) VALUES (N'HE666', N'AI1604')
INSERT [dbo].[Join] ([StudentID], [GroupID]) VALUES (N'HE777', N'SE1604')
INSERT [dbo].[Join] ([StudentID], [GroupID]) VALUES (N'HE888', N'IA1604')
INSERT [dbo].[Join] ([StudentID], [GroupID]) VALUES (N'HE999', N'SE1604')
GO
INSERT [dbo].[Lecture] ([LectureID], [First Name], [Last Name], [Gender], [DoB], [Phone], [Emall]) VALUES (N'AnNT7', N'Verlie', N'Senger', 1, CAST(N'1975-08-22' AS Date), N'671-775-2067 x7563', N'Federico@eloisa.io')
INSERT [dbo].[Lecture] ([LectureID], [First Name], [Last Name], [Gender], [DoB], [Phone], [Emall]) VALUES (N'DucHM29', N'Kiera', N'Jones', 1, CAST(N'1975-05-31' AS Date), N'1-784-533-6624', N'Ryann@jaden.us')
INSERT [dbo].[Lecture] ([LectureID], [First Name], [Last Name], [Gender], [DoB], [Phone], [Emall]) VALUES (N'NangNTH', N'Zena', N'Rosenbaum', 0, CAST(N'1980-04-12' AS Date), N'558.872.9878 x401', N'Camron@maci.info')
INSERT [dbo].[Lecture] ([LectureID], [First Name], [Last Name], [Gender], [DoB], [Phone], [Emall]) VALUES (N'SonNT5', N'Myrna', N'Denesik', 1, CAST(N'1980-02-23' AS Date), N'414.279.1654', N'Cheyenne@kitty.net')
INSERT [dbo].[Lecture] ([LectureID], [First Name], [Last Name], [Gender], [DoB], [Phone], [Emall]) VALUES (N'VanDT', N'Adelia', N'Anna', 0, CAST(N'1985-01-07' AS Date), N'(080)406-2418 x7085', N'Sonya_Legros@cicero.me')
GO
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Address], [Gender], [DoB], [Emaill]) VALUES (N'HE000', N'Hoyt', N'Schiller', N'45511 Jordy Union', 1, CAST(N'2002-12-10' AS Date), N'Kendall@florian.biz')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Address], [Gender], [DoB], [Emaill]) VALUES (N'HE111', N'Lauriane', N'Mueller', N'444 Violette Ridges', 1, CAST(N'2001-03-28' AS Date), N'Krista@dasia.io')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Address], [Gender], [DoB], [Emaill]) VALUES (N'HE222', N'Afton', N'Johnson', N'989 Krajcik Road', 1, CAST(N'2002-12-27' AS Date), N'Blake@blair.com')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Address], [Gender], [DoB], [Emaill]) VALUES (N'HE333', N'Dalton', N'Metz', N'2485 Lind', 0, CAST(N'2001-07-22' AS Date), N'Abdiel@frankie.co.uk')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Address], [Gender], [DoB], [Emaill]) VALUES (N'HE444', N'Minnie', N'Cummerata', N'6844 Denesik Route', 0, CAST(N'2002-08-14' AS Date), N'Elias@christop.org')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Address], [Gender], [DoB], [Emaill]) VALUES (N'HE555', N'Raleigh', N'Heller', N'9218 Zemlak Cliff', 0, CAST(N'2001-02-16' AS Date), N'Kaley@emmy.us')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Address], [Gender], [DoB], [Emaill]) VALUES (N'HE666', N'Annabell', N'Kuvalis', N'1970 Vandervort Cliff', 1, CAST(N'2001-11-01' AS Date), N'Bernard@earnest.biz')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Address], [Gender], [DoB], [Emaill]) VALUES (N'HE777', N'Israel', N'Koch', N'18846 Beier Cape', 1, CAST(N'2002-02-28' AS Date), N'Kellie.Bechtelar@wilton.biz')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Address], [Gender], [DoB], [Emaill]) VALUES (N'HE888', N'Craig', N'Anna', N'19370 Sibyl Circles', 0, CAST(N'2002-07-01' AS Date), N'Margarita_Davis@neil.us')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Address], [Gender], [DoB], [Emaill]) VALUES (N'HE999', N'Coralie', N'Purdy', N'586 Johnathon Extension', 1, CAST(N'2003-05-25' AS Date), N'Vernie@mylene.net')
GO
ALTER TABLE [dbo].[Acess]  WITH CHECK ADD  CONSTRAINT [FK_Acess_Assessment System] FOREIGN KEY([AssessmentID], [CourseID])
REFERENCES [dbo].[Assessment System] ([AssessmentID], [CourseID])
GO
ALTER TABLE [dbo].[Acess] CHECK CONSTRAINT [FK_Acess_Assessment System]
GO
ALTER TABLE [dbo].[Acess]  WITH CHECK ADD  CONSTRAINT [FK_Acess_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[Acess] CHECK CONSTRAINT [FK_Acess_Class]
GO
ALTER TABLE [dbo].[Assessment System]  WITH CHECK ADD  CONSTRAINT [FK_Assessment System_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Assessment System] CHECK CONSTRAINT [FK_Assessment System_Category]
GO
ALTER TABLE [dbo].[Assessment System]  WITH CHECK ADD  CONSTRAINT [FK_Assessment System_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Assessment System] CHECK CONSTRAINT [FK_Assessment System_Course]
GO
ALTER TABLE [dbo].[Assign]  WITH CHECK ADD  CONSTRAINT [FK_Assign_Assignment] FOREIGN KEY([AssignmentID])
REFERENCES [dbo].[Assignment] ([AssignmentID])
GO
ALTER TABLE [dbo].[Assign] CHECK CONSTRAINT [FK_Assign_Assignment]
GO
ALTER TABLE [dbo].[Assign]  WITH CHECK ADD  CONSTRAINT [FK_Assign_Lecture] FOREIGN KEY([LectureID])
REFERENCES [dbo].[Lecture] ([LectureID])
GO
ALTER TABLE [dbo].[Assign] CHECK CONSTRAINT [FK_Assign_Lecture]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Assignment] FOREIGN KEY([AssessmentID])
REFERENCES [dbo].[Assignment] ([AssignmentID])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Assignment]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Lecture] FOREIGN KEY([LectureID])
REFERENCES [dbo].[Lecture] ([LectureID])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Lecture]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Class]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Student]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Assignment] FOREIGN KEY([AssignmentID])
REFERENCES [dbo].[Assignment] ([AssignmentID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Assignment]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Class]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Group]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Assessment System] FOREIGN KEY([AssessmmentID], [CourseID])
REFERENCES [dbo].[Assessment System] ([AssessmentID], [CourseID])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Assessment System]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Student]
GO
ALTER TABLE [dbo].[Join]  WITH CHECK ADD  CONSTRAINT [FK_Join_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
GO
ALTER TABLE [dbo].[Join] CHECK CONSTRAINT [FK_Join_Group]
GO
ALTER TABLE [dbo].[Join]  WITH CHECK ADD  CONSTRAINT [FK_Join_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Join] CHECK CONSTRAINT [FK_Join_Student]
GO
USE [master]
GO
ALTER DATABASE [ASSIGNMENT_DBI202] SET  READ_WRITE 
GO
