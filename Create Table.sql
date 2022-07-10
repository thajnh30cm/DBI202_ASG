CREATE DATABASE [ASSIGNMENT_DBI202]
USE [ASSIGNMENT_DBI202]
GO
/****** Object:  Table [dbo].[Acess]    Script Date: 7/10/2022 10:55:01 PM ******/
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
/****** Object:  Table [dbo].[Assessment System]    Script Date: 7/10/2022 10:55:01 PM ******/
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
/****** Object:  Table [dbo].[Assign]    Script Date: 7/10/2022 10:55:01 PM ******/
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
/****** Object:  Table [dbo].[Assignment]    Script Date: 7/10/2022 10:55:01 PM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 7/10/2022 10:55:01 PM ******/
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
/****** Object:  Table [dbo].[Class]    Script Date: 7/10/2022 10:55:01 PM ******/
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
/****** Object:  Table [dbo].[Contact]    Script Date: 7/10/2022 10:55:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[StudentID] [nvarchar](50) NOT NULL,
	[ClassID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 7/10/2022 10:55:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [nvarchar](50) NOT NULL,
	[AssignmentID] [nvarchar](50) NULL,
	[Course Name] [nvarchar](100) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 7/10/2022 10:55:01 PM ******/
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
/****** Object:  Table [dbo].[Grade]    Script Date: 7/10/2022 10:55:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[AssessmmentID] [nvarchar](50) NOT NULL,
	[CourseID] [nvarchar](50) NOT NULL,
	[StudentID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[AssessmmentID] ASC,
	[CourseID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 7/10/2022 10:55:01 PM ******/
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
/****** Object:  Table [dbo].[Join]    Script Date: 7/10/2022 10:55:01 PM ******/
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
/****** Object:  Table [dbo].[Lecture]    Script Date: 7/10/2022 10:55:01 PM ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 7/10/2022 10:55:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [nvarchar](50) NOT NULL,
	[First Name] [nvarchar](10) NULL,
	[Last Name] [nvarchar](10) NULL,
	[Addess] [nvarchar](200) NULL,
	[Gender] [bit] NULL,
	[DoB] [date] NULL,
	[Emaill] [nvarchar](100) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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
