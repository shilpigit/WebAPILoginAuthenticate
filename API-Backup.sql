USE [master]
GO
/****** Object:  Database [ShilpiExamples]    Script Date: 3/5/2019 7:15:10 AM ******/
CREATE DATABASE [ShilpiExamples]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShilpiExamples', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShilpiExamples.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShilpiExamples_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShilpiExamples_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShilpiExamples] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShilpiExamples].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShilpiExamples] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShilpiExamples] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShilpiExamples] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShilpiExamples] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShilpiExamples] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShilpiExamples] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShilpiExamples] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShilpiExamples] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShilpiExamples] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShilpiExamples] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShilpiExamples] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShilpiExamples] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShilpiExamples] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShilpiExamples] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShilpiExamples] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShilpiExamples] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShilpiExamples] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShilpiExamples] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShilpiExamples] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShilpiExamples] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShilpiExamples] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShilpiExamples] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShilpiExamples] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShilpiExamples] SET  MULTI_USER 
GO
ALTER DATABASE [ShilpiExamples] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShilpiExamples] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShilpiExamples] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShilpiExamples] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShilpiExamples] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShilpiExamples] SET QUERY_STORE = OFF
GO
USE [ShilpiExamples]
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
USE [ShilpiExamples]
GO
/****** Object:  DatabaseRole [db_execproc]    Script Date: 3/5/2019 7:15:11 AM ******/
CREATE ROLE [db_execproc]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 3/5/2019 7:15:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[department_id] [int] IDENTITY(1,1) NOT NULL,
	[department_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/5/2019 7:15:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] NOT NULL,
	[FirstName] [varchar](10) NULL,
	[LastName] [varchar](10) NULL,
	[Gender] [varchar](6) NULL,
	[Salary] [int] NULL,
	[department_id] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([department_id], [department_name]) VALUES (1, N'Account')
INSERT [dbo].[Department] ([department_id], [department_name]) VALUES (3, N'IT')
INSERT [dbo].[Department] ([department_id], [department_name]) VALUES (5, N'Admin')
SET IDENTITY_INSERT [dbo].[Department] OFF
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Gender], [Salary], [department_id]) VALUES (0, N'Ritesh', N'Nigam', N'Male', 4200, NULL)
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Gender], [Salary], [department_id]) VALUES (1, N'Mark', N'Hasting', N'Male', 6000, 1)
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Gender], [Salary], [department_id]) VALUES (2, N'Steve', N'Pound', N'Male', 45000, 1)
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Gender], [Salary], [department_id]) VALUES (3, N'Shilpi', N'Bhatt', N'Female', 150000, 1)
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Gender], [Salary], [department_id]) VALUES (4, N'Sanchita', N'Badola', N'Female', 50000, NULL)
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Gender], [Salary], [department_id]) VALUES (5, N'Seema', N'Singh', N'Female', 20000, 5)
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Gender], [Salary], [department_id]) VALUES (6, N'Aakash', N'Badola', N'Male', 80000, 1)
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Gender], [Salary], [department_id]) VALUES (7, N'Naval', N'Tyagi', N'Male', 100000, NULL)
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Gender], [Salary], [department_id]) VALUES (8, N'Kajal', N'Arora', N'Female', 1000000, NULL)
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Gender], [Salary], [department_id]) VALUES (9, N'Arjun', N'Singh', N'Female', 55000, 3)
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Gender], [Salary], [department_id]) VALUES (10, N'Saif', N'Khan', N'Male', 150000, 5)
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_department_id]  DEFAULT ((1)) FOR [department_id]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
USE [master]
GO
ALTER DATABASE [ShilpiExamples] SET  READ_WRITE 
GO
