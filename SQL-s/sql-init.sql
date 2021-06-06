USE [CBB]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[EID] [int] NOT NULL,
	[EventName] [varchar](32) NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Description] [varchar](256) NOT NULL,
	[GoalPoint] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAQ]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQ](
	[FID] [int] NOT NULL,
	[Title] [varchar](32) NOT NULL,
	[ShortD] [varchar](64) NOT NULL,
	[LongD] [varchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MID] [int] NOT NULL,
	[Content] [varchar](128) NULL,
	[Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessagesToFrom]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessagesToFrom](
	[ID] [int] NOT NULL,
	[MID] [int] NOT NULL,
	[UID1] [int] NOT NULL,
	[UID2] [int] NOT NULL,
	[Subject] [varchar](64) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MultipleAnswer]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MultipleAnswer](
	[MAID] [int] NOT NULL,
	[MAnswer] [varchar](128) NOT NULL,
	[isAccepted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MultipleAToQ]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MultipleAToQ](
	[ID] [int] NOT NULL,
	[MAID] [int] NOT NULL,
	[MQID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MultipleQuestion]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MultipleQuestion](
	[MQID] [int] NOT NULL,
	[MQuestion] [varchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MQID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QandA]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QandA](
	[QID] [int] NOT NULL,
	[Question] [varchar](256) NOT NULL,
	[Answer] [varchar](128) NOT NULL,
 CONSTRAINT [PK_QandA] PRIMARY KEY CLUSTERED 
(
	[QID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QGroupToTask]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QGroupToTask](
	[TQID] [int] NOT NULL,
	[QGID] [int] NOT NULL,
	[TID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TQID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionGroups]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionGroups](
	[QGID] [int] NOT NULL,
	[QGroupName] [varchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionsToGroups]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionsToGroups](
	[QTGID] [int] NOT NULL,
	[QID] [int] NOT NULL,
	[QGID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QTGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[TID] [int] NOT NULL,
	[Type] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[TID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UGroupsToQGroups]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UGroupsToQGroups](
	[UGTQGID] [int] NOT NULL,
	[UGID] [int] NOT NULL,
	[QGID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UGTQGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroups]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroups](
	[UGID] [int] NOT NULL,
	[GroupName] [varchar](32) NOT NULL,
 CONSTRAINT [PK_UserGroups] PRIMARY KEY CLUSTERED 
(
	[UGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](64) NULL,
	[UserName] [varchar](32) NOT NULL,
	[Description] [varchar](256) NULL,
	[BirthDate] [date] NULL,
	[HSHD_PASSWORD] [char](256) NOT NULL,
	[isAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersGroupsToTasks]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersGroupsToTasks](
	[UTID] [int] NOT NULL,
	[UGID] [int] NOT NULL,
	[TID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersSessions]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersSessions](
	[SesID] [uniqueidentifier] NOT NULL,
	[UID] [int] NOT NULL,
	[From] [datetime] NOT NULL,
	[Until] [datetime] NOT NULL,
 CONSTRAINT [PK_UsersSessions] PRIMARY KEY CLUSTERED 
(
	[SesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersToEvents]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersToEvents](
	[ID] [int] NOT NULL,
	[UID] [int] NOT NULL,
	[EID] [int] NOT NULL,
	[Points] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([UID], [FullName], [UserName], [Description], [BirthDate], [HSHD_PASSWORD], [isAdmin]) VALUES (1, N'Adminisztrátor', N'admin', N'Fő adminisztrátor', NULL, N'8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918                                                                                                                                                                                                ', 1)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  StoredProcedure [dbo].[authorize]    Script Date: 2021. 06. 06. 15:12:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		CBB - ZB
-- Create date: 2021-06-06
-- Description:	Bejelentkezéses ellenőrzés
-- =============================================
CREATE PROCEDURE [dbo].[authorize]
	@username varchar(32),
	@psw char(256) = NULL,
	@sessionid char(36) = NULL
AS
BEGIN
	DECLARE @UserID int
	SELECT @UserID = [UID] FROM Users WHERE @username = UserName

	DECLARE @SID uniqueidentifier
	SELECT @SID = SesID FROM UsersSessions
		WHERE [UID] = @UserID
			AND Until > GETDATE()

	if @sessionid is not null
		begin
			DECLARE @givenSID uniqueidentifier
			SELECT @givenSID = CONVERT(uniqueidentifier, @sessionid)

			if @givenSID = @SID
				begin
					SELECT u.*, us.SesID, us.Until FROM Users u
						JOIN UsersSessions us on us.[UID] = u.[UID]
						WHERE u.[UID] = @UserID
				end
		end
	else if @psw is not null
		begin
			DECLARE @hsd char(256)
			SELECT @hsd = HSHD_PASSWORD FROM Users WHERE [UID] = @UserID

			if @hsd = @psw
				begin
					DECLARE @already datetime
					SELECT @already = Until FROM UsersSessions WHERE [UID] = @UserID

					if @already > GETDATE()
						BEGIN
							UPDATE UsersSessions
								SET [Until] = DATEADD(HOUR, 3, GETDATE())
								WHERE [UID] = @UserID AND Until > GETDATE()
						END
					else
						begin
							INSERT INTO [dbo].[UsersSessions]
								   ([SesID]
								   ,[UID]
								   ,[From]
								   ,[Until])
							 VALUES
								   (NEWID()
								   ,@UserID
								   ,GETDATE()
								   ,DATEADD(HOUR, 3, GETDATE()))

							DELETE FROM UsersSessions
								WHERE Until < GETDATE()

						   end
						 
					SELECT u.*, us.SesID, us.Until FROM UsersSessions us
						JOIN Users u on u.[UID] = us.[UID]
						WHERE us.[UID] = @UserID AND us.Until > GETDATE()
				end
		end
END
GO
