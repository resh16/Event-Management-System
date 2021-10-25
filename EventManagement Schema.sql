USE [EventManagementSystem]
GO
ALTER TABLE [dbo].[UserTbl] DROP CONSTRAINT [FK__UserTbl__Role_Id__2D27B809]
GO
ALTER TABLE [dbo].[Event] DROP CONSTRAINT [FK__Event__User_Id__46E78A0C]
GO
ALTER TABLE [dbo].[Event] DROP CONSTRAINT [FK__Event__EventType__47DBAE45]
GO
ALTER TABLE [dbo].[Event] DROP CONSTRAINT [DF__Event__Created_A__48CFD27E]
GO
/****** Object:  Table [dbo].[UserTbl]    Script Date: 25-10-2021 17:42:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserTbl]') AND type in (N'U'))
DROP TABLE [dbo].[UserTbl]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25-10-2021 17:42:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[EventType]    Script Date: 25-10-2021 17:42:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EventType]') AND type in (N'U'))
DROP TABLE [dbo].[EventType]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 25-10-2021 17:42:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Event]') AND type in (N'U'))
DROP TABLE [dbo].[Event]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 25-10-2021 17:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NULL,
	[EventType_Id] [int] NULL,
	[Title] [varchar](100) NOT NULL,
	[Description] [varchar](500) NULL,
	[Address] [varchar](250) NOT NULL,
	[City] [varchar](100) NOT NULL,
	[Owner] [varchar](150) NOT NULL,
	[StartDateTime] [datetime] NOT NULL,
	[EndDateTime] [datetime] NOT NULL,
	[Created_At] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventType]    Script Date: 25-10-2021 17:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25-10-2021 17:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTbl]    Script Date: 25-10-2021 17:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[DOB] [date] NOT NULL,
	[Phone_No] [nvarchar](20) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Role_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Event] ADD  DEFAULT (getdate()) FOR [Created_At]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD FOREIGN KEY([EventType_Id])
REFERENCES [dbo].[EventType] ([Id])
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[UserTbl] ([Id])
GO
ALTER TABLE [dbo].[UserTbl]  WITH CHECK ADD FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Role] ([Id])
GO
