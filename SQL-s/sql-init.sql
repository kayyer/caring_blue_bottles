USE [CBB]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  Table [dbo].[FAQ]    Script Date: 2021. 06. 07. 12:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQ](
	[FID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](32) NOT NULL,
	[ShortD] [varchar](64) NOT NULL,
	[LongD] [varchar](256) NOT NULL,
 CONSTRAINT [PK__FAQ__C1BEA5A22E75C9FB] PRIMARY KEY CLUSTERED 
(
	[FID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  Table [dbo].[MessagesToFrom]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  Table [dbo].[MultipleAnswer]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  Table [dbo].[MultipleAToQ]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  Table [dbo].[MultipleQuestion]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  Table [dbo].[QandA]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  Table [dbo].[QGroupToTask]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  Table [dbo].[QuestionGroups]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  Table [dbo].[QuestionsToGroups]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  Table [dbo].[Tasks]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  Table [dbo].[UGroupsToQGroups]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  Table [dbo].[UserGroups]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  Table [dbo].[UsersGroupsToTasks]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  Table [dbo].[UsersSessions]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  Table [dbo].[UsersToEvents]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
SET IDENTITY_INSERT [dbo].[FAQ] ON 
GO
INSERT [dbo].[FAQ] ([FID], [Title], [ShortD], [LongD]) VALUES (1, N'Hol találom a feladataim?', N'A feladataidat a főmenü legfelső gombjával éred el.', N'A bal felső sarokban található AMIGOS gombra kattintva a főmenüben találod magad, ahol jobboldalon a legfelső ikonra kattinva a feladatok listája jelenik meg. Ott tudsz választani az elérhető feladatok közül.')
GO
INSERT [dbo].[FAQ] ([FID], [Title], [ShortD], [LongD]) VALUES (3, N'Hol változatok jelszót?', N'A jelszó változtatást a felhasználói beállításoknál találod.', N'A jelszó megváltoztatásához, a menüsávban található felhasználónevedre kattints. A megjelenő oldal megfelelő kitöltése után sikeresen meg tudod változtatni a jelszavad.')
GO
SET IDENTITY_INSERT [dbo].[FAQ] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([UID], [FullName], [UserName], [Description], [BirthDate], [HSHD_PASSWORD], [isAdmin]) VALUES (1, N'Adminisztrátor', N'admin', N'Fő adminisztrátor', NULL, N'8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918                                                                                                                                                                                                ', 1)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
INSERT [dbo].[UsersSessions] ([SesID], [UID], [From], [Until]) VALUES (N'c7ec8fd5-5c5e-436c-9be9-ff4353f079fe', 1, CAST(N'2021-06-07T10:58:43.557' AS DateTime), CAST(N'2021-06-07T13:58:43.557' AS DateTime))
GO
/****** Object:  StoredProcedure [dbo].[authorize]    Script Date: 2021. 06. 07. 12:57:12 ******/
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
/****** Object:  StoredProcedure [dbo].[getFAQ]    Script Date: 2021. 06. 07. 12:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		CBB - ZB
-- Create date: 2021-06-07
-- Description:	FAQ lekérdezése
-- =============================================
CREATE PROCEDURE [dbo].[getFAQ]
	@FID int = NULL
AS
BEGIN
	if @FID is null
		begin
			SELECT FID, Title, ShortD FROM FAQ
		end
	else
		begin
			SELECT FID, Title, ShortD, LongD FROM FAQ WHERE FID = @FID
		end
END
GO