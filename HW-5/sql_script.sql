USE [master]
GO
/****** Object:  Database [HW-MART391]    Script Date: 10/20/2019 1:30:39 PM ******/
CREATE DATABASE [HW-MART391]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HW-MART391', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HW-MART391.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HW-MART391_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HW-MART391_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HW-MART391] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HW-MART391].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HW-MART391] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HW-MART391] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HW-MART391] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HW-MART391] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HW-MART391] SET ARITHABORT OFF 
GO
ALTER DATABASE [HW-MART391] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HW-MART391] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HW-MART391] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HW-MART391] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HW-MART391] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HW-MART391] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HW-MART391] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HW-MART391] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HW-MART391] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HW-MART391] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HW-MART391] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HW-MART391] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HW-MART391] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HW-MART391] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HW-MART391] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HW-MART391] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HW-MART391] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HW-MART391] SET RECOVERY FULL 
GO
ALTER DATABASE [HW-MART391] SET  MULTI_USER 
GO
ALTER DATABASE [HW-MART391] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HW-MART391] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HW-MART391] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HW-MART391] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HW-MART391] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HW-MART391', N'ON'
GO
ALTER DATABASE [HW-MART391] SET QUERY_STORE = OFF
GO
USE [HW-MART391]
GO
/****** Object:  User [marklannen]    Script Date: 10/20/2019 1:30:39 PM ******/
CREATE USER [marklannen] FOR LOGIN [marklannen] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [marklannen]
GO
/****** Object:  Table [dbo].[Loot]    Script Date: 10/20/2019 1:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loot](
	[lootID] [int] NOT NULL,
	[lootName] [varchar](256) NULL,
	[cost] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skins]    Script Date: 10/20/2019 1:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skins](
	[skinID] [int] IDENTITY(1,1) NOT NULL,
	[skinName] [varchar](256) NULL,
	[cost] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLoot]    Script Date: 10/20/2019 1:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLoot](
	[userID] [int] NOT NULL,
	[lootID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/20/2019 1:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](1000) NULL,
	[lastName] [varchar](1000) NULL,
	[email] [varchar](1000) NULL,
	[imageAvatar] [varchar](255) NULL,
	[phoneNumber] [varchar](20) NULL,
	[userName] [varchar](50) NULL,
	[password] [varbinary](256) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSkins]    Script Date: 10/20/2019 1:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSkins](
	[userID] [int] NOT NULL,
	[skinID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteUser]    Script Date: 10/20/2019 1:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spDeleteUser]
	-- Add the parameters for the stored procedure here
	@userID as int
AS
BEGIN
    -- Insert statements for procedure here
	DELETE FROM Users WHERE userID = @userID;  
END
GO
/****** Object:  StoredProcedure [dbo].[spGetSpecificUser]    Script Date: 10/20/2019 1:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetSpecificUser]
	-- Add the parameters for the stored procedure here
	@userID as int
AS
BEGIN

SELECT * FROM Users WHERE UserID = @userID

END
GO
/****** Object:  StoredProcedure [dbo].[spInsertUser]    Script Date: 10/20/2019 1:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsertUser] 
@firstName as varchar(1000), @lastName as varchar(1000), @email as varchar(1000), 
@imageAvatar as varchar(255), @phoneNumber as varchar(20), @userName as varchar(50), 
@password as varbinary(256)

	 
AS
BEGIN
	
    -- Insert statements for procedure here
	INSERT INTO Users
	VALUES (@firstName, @lastName, @email, @imageAvatar, @phoneNumber, @userName, CAST(@password AS VARBINARY(256)))
	

	
END
GO
/****** Object:  StoredProcedure [dbo].[spSelectAllUsers]    Script Date: 10/20/2019 1:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSelectAllUsers]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Users ORDER by lastName asc
END
GO
/****** Object:  StoredProcedure [dbo].[spSpecificUserInfo]    Script Date: 10/20/2019 1:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSpecificUserInfo]
	-- Add the parameters for the stored procedure here
	@userID as int
AS
BEGIN
	
    -- Insert statements for procedure here
	SELECT  firstName, lastName, email FROM Users 
	WHERE userID = @userID
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateUser]    Script Date: 10/20/2019 1:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateUser]
	@firstName as varchar(1000), @lastName as varchar(1000), 
	@userID as int
AS
BEGIN
	
	UPDATE Users SET firstName = @firstName,
	lastName = @lastName
	WHERE userID  = @userID

END
GO
/****** Object:  StoredProcedure [dbo].[spValidUserNamePassword]    Script Date: 10/20/2019 1:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spValidUserNamePassword]
	-- Add the parameters for the stored procedure here
	@userName as varchar(1000), @password as varbinary(256)
AS
BEGIN
	
	SELECT COUNT(*) FROM USERS WHERE userName = @userName AND password = @password

  
END
GO
USE [master]
GO
ALTER DATABASE [HW-MART391] SET  READ_WRITE 
GO
