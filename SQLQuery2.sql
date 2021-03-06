CREATE DATABASE Vacation

USE [Vacation]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Proposal_Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NULL,
	[CreatedUserId] [int] NULL,
	[timestamp] [datetime] NULL,
	[ChanceToClose] [varchar](500) NULL,
	[EBudget] [varchar](500) NULL,
	[Duration] [varchar](500) NULL,
	[ContactName] [varchar](500) NULL,
	[ContactMobile] [varchar](500) NULL,
	[Description] [varchar](max) NULL,
	[Notes] [varchar](500) NULL,
	[Amount] [real] NULL,
	[Revenue] [real] NULL,
	[status] [bit] NULL CONSTRAINT [DF_proposals_table_status]  DEFAULT ((0)),
	[RejectionReason] [varchar](500) NULL,
 CONSTRAINT [PK_proposals_table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]



CREATE TABLE [dbo].[Group_Table](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](500) NULL,
	[timestamp] [datetime] NULL,
	[Project] [real] NULL,
	[Group-Leader] [real] NULL,
	[Description] [varchar](max) NULL,
	[LaunchDate] [datetime] NULL,	
	[status] [bit] NULL CONSTRAINT [DF_proposals_table_status]  DEFAULT ((0)),

	CONSTRAINT [PK_Group_Table] PRIMARY KEY CLUSTERED 
	(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	

CREATE TABLE [dbo].[Announcement_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [varchar](max) NULL,
	[datetime] [date] NULL,
	[CreatedUserId] [int] NULL,
 CONSTRAINT [PK_Announcement_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Client_Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NULL,
	[CreatedUserId] [int] NULL,
	[timestamp] [datetime] NULL,
	[CType] [int] NULL,
	[ChanceToClose] [varchar](500) NULL,
	[EBudget] [varchar](500) NULL,
	[Duration] [varchar](500) NULL,
	[ContactName] [varchar](500) NULL,
	[ContactMobile] [varchar](500) NULL,
	[Description] [varchar](max) NULL,
	[Notes] [varchar](500) NULL,
 CONSTRAINT [PK_Client_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OppType_Table](
	[OppId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NULL,
	[CreatedbyUserId] [int] NULL,
 CONSTRAINT [PK_OppType_Table] PRIMARY KEY CLUSTERED 
(
	[OppId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Project_Table](
	[ProjId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [varchar](500) NULL,
	[ProjectManager] [int] NULL,
	[timestamp] [datetime] NULL,
	[Amount] [real] NULL,
	[Revenue] [real] NULL,
	[Description] [varchar](max) NULL,
	[status] [bit] NULL CONSTRAINT [DF_Project_Table_status]  DEFAULT ((0)),
	[LaunchDate] [datetime] NULL,
	[Duration] [varchar](500) NULL,
	[ContactName] [varchar](500) NULL,
	[ContactMobile] [varchar](500) NULL,
	[Notes] [varchar](500) NULL,
 CONSTRAINT [PK_Project_Table] PRIMARY KEY CLUSTERED 
(
	[ProjId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users_Table](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](500) NULL,
	[Pwd] [varchar](500) NULL,
	[Role] [varchar](50) NULL,
	[CreatedUserId] [int] NULL CONSTRAINT [DF_Users_Table_CreatedUserId]  DEFAULT ((0)),
 CONSTRAINT [PK_Users_Table] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Announcement_table] ON 

GO
INSERT [dbo].[Announcement_table] ([id], [Message], [datetime], [CreatedUserId]) VALUES (2, N'This is  test Announcement By Manager1', CAST(N'2016-11-22' AS Date), 2)
GO
INSERT [dbo].[Announcement_table] ([id], [Message], [datetime], [CreatedUserId]) VALUES (3, N'This is Test announcement ', CAST(N'2016-11-23' AS Date), 2)
GO
SET IDENTITY_INSERT [dbo].[Announcement_table] OFF
GO
SET IDENTITY_INSERT [dbo].[Client_Table] ON 

GO
INSERT [dbo].[Client_Table] ([Id], [Name], [CreatedUserId], [timestamp], [CType], [ChanceToClose], [EBudget], [Duration], [ContactName], [ContactMobile], [Description], [Notes]) VALUES (1, N'SS Infoware', 6, CAST(N'2016-11-22 10:36:42.000' AS DateTime), 6, N'10%', N'20,99,000', N'20', N'Pravin', N'+60192938002', N'Project will confirm ', N'My Notes')
GO
INSERT [dbo].[Client_Table] ([Id], [Name], [CreatedUserId], [timestamp], [CType], [ChanceToClose], [EBudget], [Duration], [ContactName], [ContactMobile], [Description], [Notes]) VALUES (2, N'Pravin Kumar', 6, CAST(N'2016-11-23 22:06:28.000' AS DateTime), 3, N'10', N'1000', N'10', N'Pravin', N'+60192938002', N'Test desc', N'Test notes')
GO
SET IDENTITY_INSERT [dbo].[Client_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[OppType_Table] ON 

GO
INSERT [dbo].[Group_Table] ([UserId], [UserName], [Project]) VALUES (1, N'Lorem', 2)
GO
INSERT [dbo].[OppType_Table] ([OppId], [Name], [CreatedbyUserId]) VALUES (1, N'Opp Type', 2)
GO
INSERT [dbo].[OppType_Table] ([OppId], [Name], [CreatedbyUserId]) VALUES (2, N'Malaysia Client', 7)
GO
INSERT [dbo].[OppType_Table] ([OppId], [Name], [CreatedbyUserId]) VALUES (3, N'GPS Tracking', 6)
GO
INSERT [dbo].[OppType_Table] ([OppId], [Name], [CreatedbyUserId]) VALUES (4, N'Telemetry ', 6)
GO
INSERT [dbo].[OppType_Table] ([OppId], [Name], [CreatedbyUserId]) VALUES (5, N'Electronics ', 6)
GO
INSERT [dbo].[OppType_Table] ([OppId], [Name], [CreatedbyUserId]) VALUES (6, N'Software', 6)
GO
SET IDENTITY_INSERT [dbo].[OppType_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Project_Table] ON 

GO
INSERT [dbo].[Project_Table] ([ProjId], [ProjectName], [ProjectManager], [timestamp], [Amount], [Revenue], [Description], [status], [LaunchDate], [Duration], [ContactName], [ContactMobile], [Notes]) VALUES (1, N'IT Software', 6, CAST(N'2016-11-23 20:14:41.000' AS DateTime), 2.98, 19000, N'Testing desc', 1, CAST(N'2016-11-23 00:00:00.000' AS DateTime), N'80', N'Surya HR', N'+601929876', N'Test notes')
GO
SET IDENTITY_INSERT [dbo].[Project_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Proposal_Table] ON 

GO
INSERT [dbo].[Proposal_Table] ([Id], [Name], [CreatedUserId], [timestamp], [ChanceToClose], [EBudget], [Duration], [ContactName], [ContactMobile], [Description], [Notes], [Amount], [Revenue], [status], [RejectionReason]) VALUES (1, N'Pravin Kumar', 7, CAST(N'2016-11-21 23:39:16.000' AS DateTime), N'10', N'1000', N'10', N'Pravin', N'09876', N'9876', N'9876543werfgh', 2.62, 10919, 1, N'876tyrgfhjkhj')
GO
INSERT [dbo].[Proposal_Table] ([Id], [Name], [CreatedUserId], [timestamp], [ChanceToClose], [EBudget], [Duration], [ContactName], [ContactMobile], [Description], [Notes], [Amount], [Revenue], [status], [RejectionReason]) VALUES (2, N'IT Software', 6, CAST(N'2016-11-23 20:10:07.000' AS DateTime), N'100', N'1800', N'80', N'Surya HR', N'+601929876', N'Testing desc', N'Test notes', 2.98, 19000, 1, N'NA')
GO
INSERT [dbo].[Proposal_Table] ([Id], [Name], [CreatedUserId], [timestamp], [ChanceToClose], [EBudget], [Duration], [ContactName], [ContactMobile], [Description], [Notes], [Amount], [Revenue], [status], [RejectionReason]) VALUES (3, N'IT Software', 6, CAST(N'2016-11-23 20:10:20.000' AS DateTime), N'100', N'1800', N'80', N'Surya HR', N'+601929876', N'Testing desc', N'Test notes', 2.98, 19000, 0, N'NA')
GO
INSERT [dbo].[Proposal_Table] ([Id], [Name], [CreatedUserId], [timestamp], [ChanceToClose], [EBudget], [Duration], [ContactName], [ContactMobile], [Description], [Notes], [Amount], [Revenue], [status], [RejectionReason]) VALUES (4, N'IT Software', 6, CAST(N'2016-11-23 20:12:21.000' AS DateTime), N'100', N'1800', N'80', N'Surya HR', N'+601929876', N'Testing desc', N'Test notes', 2.98, 19000, 1, N'NA')
GO
INSERT [dbo].[Proposal_Table] ([Id], [Name], [CreatedUserId], [timestamp], [ChanceToClose], [EBudget], [Duration], [ContactName], [ContactMobile], [Description], [Notes], [Amount], [Revenue], [status], [RejectionReason]) VALUES (5, N'IT Software', 6, CAST(N'2016-11-23 20:13:07.000' AS DateTime), N'100', N'1800', N'80', N'Surya HR', N'+601929876', N'Testing desc', N'Test notes', 2.98, 19000, 1, N'NA')
GO
INSERT [dbo].[Proposal_Table] ([Id], [Name], [CreatedUserId], [timestamp], [ChanceToClose], [EBudget], [Duration], [ContactName], [ContactMobile], [Description], [Notes], [Amount], [Revenue], [status], [RejectionReason]) VALUES (6, N'IT Software', 6, CAST(N'2016-11-23 20:14:39.000' AS DateTime), N'100', N'1800', N'80', N'Surya HR', N'+601929876', N'Testing desc', N'Test notes', 2.98, 19000, 1, N'NA')
GO
SET IDENTITY_INSERT [dbo].[Proposal_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Users_Table] ON 

GO
INSERT [dbo].[Users_Table] ([UserId], [UserName], [Pwd], [Role], [CreatedUserId]) VALUES (1, N'User', N'apk089', N'User', NULL)
GO
INSERT [dbo].[Users_Table] ([UserId], [UserName], [Pwd], [Role], [CreatedUserId]) VALUES (2, N'Manager', N'Manager@01', N'Manager', NULL)
GO
INSERT [dbo].[Users_Table] ([UserId], [UserName], [Pwd], [Role], [CreatedUserId]) VALUES (6, N'Sales', N'sales@01', N'Sales', 2)
GO
INSERT [dbo].[Users_Table] ([UserId], [UserName], [Pwd], [Role], [CreatedUserId]) VALUES (7, N'Pravin', N'pravin', N'Sales', 2)
GO
SET IDENTITY_INSERT [dbo].[Users_Table] OFF
GO
CREATE FUNCTION [dbo].[fn_getType]
(
	@Typeid as int
)
RETURNS varchar(500)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @myval as varchar(500)

	-- Add the T-SQL statements to compute the return value here
	SELECT @myval=Name from [dbo].[OppType_Table] where oppid=@Typeid

	-- Return the result of the function
	RETURN @myval

END

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fn_getUserName]
(
	@userid as int
)
RETURNS varchar(500)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @myname varchar(500)

	-- Add the T-SQL statements to compute the return value here
	SELECT @myname=[UserName] from Users_Table where Userid=@userid

	-- Return the result of the function
	RETURN @myname

END

GO
