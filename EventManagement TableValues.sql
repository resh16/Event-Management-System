USE [EventManagementSystem]
GO
DELETE FROM [dbo].[Event]
GO
DELETE FROM [dbo].[EventType]
GO
DELETE FROM [dbo].[UserTbl]
GO
DELETE FROM [dbo].[Role]
GO
SET IDENTITY_INSERT [dbo].[Role] ON 
GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Admin')
GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'User')
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[UserTbl] ON 
GO
INSERT [dbo].[UserTbl] ([Id], [Name], [DOB], [Phone_No], [City], [Role_Id]) VALUES (1, N'Ross', CAST(N'1982-05-10' AS Date), N'97905289', N'New York', 2)
GO
INSERT [dbo].[UserTbl] ([Id], [Name], [DOB], [Phone_No], [City], [Role_Id]) VALUES (2, N'Rachel', CAST(N'1985-07-12' AS Date), N'7164890235', N'New York', 2)
GO
INSERT [dbo].[UserTbl] ([Id], [Name], [DOB], [Phone_No], [City], [Role_Id]) VALUES (3, N'Joey', CAST(N'1981-10-22' AS Date), N'7645298724', N'Italy', 2)
GO
INSERT [dbo].[UserTbl] ([Id], [Name], [DOB], [Phone_No], [City], [Role_Id]) VALUES (4, N'Pheobe', CAST(N'1980-05-28' AS Date), N'9346728910', N'France', 2)
GO
INSERT [dbo].[UserTbl] ([Id], [Name], [DOB], [Phone_No], [City], [Role_Id]) VALUES (5, N'Monica', CAST(N'1983-03-16' AS Date), N'8763452910', N'New York', 2)
GO
INSERT [dbo].[UserTbl] ([Id], [Name], [DOB], [Phone_No], [City], [Role_Id]) VALUES (6, N'Chandler', CAST(N'1981-10-28' AS Date), N'6783459813', N'Mexico', 1)
GO
SET IDENTITY_INSERT [dbo].[UserTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[EventType] ON 
GO
INSERT [dbo].[EventType] ([Id], [Name]) VALUES (1, N'Marriage')
GO
INSERT [dbo].[EventType] ([Id], [Name]) VALUES (2, N'Business')
GO
INSERT [dbo].[EventType] ([Id], [Name]) VALUES (3, N'Farewell')
GO
INSERT [dbo].[EventType] ([Id], [Name]) VALUES (4, N'Webinar')
GO
INSERT [dbo].[EventType] ([Id], [Name]) VALUES (5, N'Birthday')
GO
SET IDENTITY_INSERT [dbo].[EventType] OFF
GO
SET IDENTITY_INSERT [dbo].[Event] ON 
GO
INSERT [dbo].[Event] ([Id], [User_Id], [EventType_Id], [Title], [Description], [Address], [City], [Owner], [StartDateTime], [EndDateTime], [Created_At]) VALUES (1, 6, 1, N'Abcd', N'zxv', N'1st st', N'Chennai', N'Resh', CAST(N'2021-12-03T09:00:00.000' AS DateTime), CAST(N'2021-12-03T12:00:00.000' AS DateTime), CAST(N'2021-10-25T16:55:41.263' AS DateTime))
GO
INSERT [dbo].[Event] ([Id], [User_Id], [EventType_Id], [Title], [Description], [Address], [City], [Owner], [StartDateTime], [EndDateTime], [Created_At]) VALUES (2, 6, 3, N'Farewell', N'Small Farewell', N'2st st', N'Chennai', N'winny', CAST(N'2021-12-11T09:00:00.000' AS DateTime), CAST(N'2021-12-11T12:00:00.000' AS DateTime), CAST(N'2021-10-25T17:24:37.313' AS DateTime))
GO
INSERT [dbo].[Event] ([Id], [User_Id], [EventType_Id], [Title], [Description], [Address], [City], [Owner], [StartDateTime], [EndDateTime], [Created_At]) VALUES (3, 6, 1, N'Marriage', N'Marriage function', N'Fox building', N'New york', N'john', CAST(N'2021-04-22T09:00:00.000' AS DateTime), CAST(N'2021-04-23T12:00:00.000' AS DateTime), CAST(N'2021-10-25T17:30:07.050' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Event] OFF
GO
