USE [CBB]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  Table [dbo].[FAQ]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  Table [dbo].[Messages]    Script Date: 2021. 06. 08. 16:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MID] [int] NOT NULL,
	[Content] [varchar](128) NOT NULL,
	[Date] [datetime] NULL,
	[SenderID] [int] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessagesToFrom]    Script Date: 2021. 06. 08. 16:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessagesToFrom](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MID] [int] NOT NULL,
	[UID1] [int] NOT NULL,
	[UID2] [int] NOT NULL,
	[Subject] [varchar](64) NOT NULL,
	[LastMessage] [datetime] NOT NULL,
 CONSTRAINT [PK__Messages__3214EC27EC28732C] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MultipleAnswer]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  Table [dbo].[MultipleAToQ]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  Table [dbo].[MultipleQuestion]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  Table [dbo].[QandA]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  Table [dbo].[QGroupToTask]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  Table [dbo].[QuestionGroups]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  Table [dbo].[QuestionsToGroups]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  Table [dbo].[Tasks]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  Table [dbo].[UGroupsToQGroups]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  Table [dbo].[UserGroups]    Script Date: 2021. 06. 08. 16:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroups](
	[UGID] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [varchar](32) NOT NULL,
 CONSTRAINT [PK_UserGroups] PRIMARY KEY CLUSTERED 
(
	[UGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  Table [dbo].[UsersGroupsToTasks]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  Table [dbo].[UsersSessions]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  Table [dbo].[UsersToEvents]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  Table [dbo].[UsersToUGroups]    Script Date: 2021. 06. 08. 16:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersToUGroups](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UID] [int] NOT NULL,
	[UGID] [int] NOT NULL,
 CONSTRAINT [PK_UsersToUGroups] PRIMARY KEY CLUSTERED 
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
SET IDENTITY_INSERT [dbo].[Messages] ON 
GO
INSERT [dbo].[Messages] ([ID], [MID], [Content], [Date], [SenderID]) VALUES (1, 1, N'Szia! Lenne egy feladat', CAST(N'2021-06-05T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Messages] ([ID], [MID], [Content], [Date], [SenderID]) VALUES (2, 1, N'Szia! Mi az?', CAST(N'2021-06-06T00:00:00.000' AS DateTime), 4)
GO
INSERT [dbo].[Messages] ([ID], [MID], [Content], [Date], [SenderID]) VALUES (3, 1, N'Szia! Hát nézd meg a feladataidnál.', CAST(N'2021-06-07T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Messages] ([ID], [MID], [Content], [Date], [SenderID]) VALUES (4, 1, N'Rendben.', CAST(N'2021-06-08T15:30:45.360' AS DateTime), 4)
GO
INSERT [dbo].[Messages] ([ID], [MID], [Content], [Date], [SenderID]) VALUES (5, 1, N'Megnézted?', CAST(N'2021-06-08T15:31:42.307' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
SET IDENTITY_INSERT [dbo].[MessagesToFrom] ON 
GO
INSERT [dbo].[MessagesToFrom] ([ID], [MID], [UID1], [UID2], [Subject], [LastMessage]) VALUES (1, 1, 4, 1, N'Feladatod van', CAST(N'2021-06-08T15:31:42.320' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[MessagesToFrom] OFF
GO
SET IDENTITY_INSERT [dbo].[UserGroups] ON 
GO
INSERT [dbo].[UserGroups] ([UGID], [GroupName]) VALUES (1, N'Traktorosok')
GO
SET IDENTITY_INSERT [dbo].[UserGroups] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([UID], [FullName], [UserName], [Description], [BirthDate], [HSHD_PASSWORD], [isAdmin]) VALUES (1, N'Adminisztrátor', N'admin', N'Fő adminisztrátor', NULL, N'8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918                                                                                                                                                                                                ', 1)
GO
INSERT [dbo].[Users] ([UID], [FullName], [UserName], [Description], [BirthDate], [HSHD_PASSWORD], [isAdmin]) VALUES (4, N'Normál felhasználónk', N'user', N'Egy sima felhasználónk', NULL, N'8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918                                                                                                                                                                                                ', 0)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
INSERT [dbo].[UsersSessions] ([SesID], [UID], [From], [Until]) VALUES (N'ba0d2a6f-c5ae-492e-9ab8-6833d7d710dc', 4, CAST(N'2021-06-08T15:23:54.457' AS DateTime), CAST(N'2021-06-08T18:23:54.457' AS DateTime))
GO
INSERT [dbo].[UsersSessions] ([SesID], [UID], [From], [Until]) VALUES (N'c54a00c1-c875-429f-8d92-7f7fbd43fced', 1, CAST(N'2021-06-08T15:31:15.773' AS DateTime), CAST(N'2021-06-08T18:31:15.773' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[UsersToUGroups] ON 
GO
INSERT [dbo].[UsersToUGroups] ([ID], [UID], [UGID]) VALUES (1, 4, 1)
GO
SET IDENTITY_INSERT [dbo].[UsersToUGroups] OFF
GO
/****** Object:  StoredProcedure [dbo].[authorize]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  StoredProcedure [dbo].[getFAQ]    Script Date: 2021. 06. 08. 16:59:24 ******/
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
/****** Object:  StoredProcedure [dbo].[getMessages]    Script Date: 2021. 06. 08. 16:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		CBB - ZB
-- Create date: 2021-06-07
-- Description: Üzenetek lekérése
-- =============================================
CREATE PROCEDURE [dbo].[getMessages]
	@sessionid char(36),
	@MID int = NULL
AS
BEGIN
	DECLARE @SID uniqueidentifier
	SELECT @SID = CONVERT(uniqueidentifier, @sessionid)

	DECLARE @UserID int
	SELECT @UserID = us.[UID] FROM UsersSessions us
		JOIN Users u on u.[UID] = us.[UID]
		WHERE us.Until > GETDATE() AND us.SesID = @SID

	IF @UserID is not null
		begin

			if @MID is null
				begin
					
					SELECT ID, MID, UID1, UID2, ISNULL(u.UserName, '-') as 'U1Name', ISNULL(u2.UserName, '-') as 'U2Name', [Subject] FROM MessagesToFrom
							LEFT JOIN Users u on UID1 != @UserID and u.[UID] = UID1
							LEFT JOIN Users u2 on UID2 != @UserID and u2.[UID] = UID2
						WHERE UID1 = @UserID OR UID2 = @UserID
						ORDER BY [LastMessage]
				end
			else
				begin
					DECLARE @isAuth int
					SELECT @isAuth = COUNT(ID) FROM MessagesToFrom
						WHERE [MID] = @MID AND (UID1 = @UserID OR UID2 = @UserID)

					if @isAuth > 0
						begin
							SELECT MID, Content, [Date], SenderID FROM [Messages]
								WHERE [MID] = @MID
							ORDER BY [Date]
						end
				end

		end
END
GO
/****** Object:  StoredProcedure [dbo].[getUsers]    Script Date: 2021. 06. 08. 16:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		CBB - ZB
-- Create date: 2021-06-08
-- Description:	Felhasználók listázása
-- =============================================
CREATE PROCEDURE [dbo].[getUsers] 
	@sessionid char(36),
	@senderID int,
	@UID int = NULL
AS
BEGIN
	DECLARE @SID uniqueidentifier
	SELECT @SID = CONVERT(uniqueidentifier, @sessionid)

	DECLARE @isOk int
	SELECT @isOk = COUNT(us.[UID]) FROM UsersSessions us
		JOIN Users u on u.[UID] = us.[UID]
		WHERE us.SesID = @SID AND us.Until > GETDATE() AND @senderID = us.[UID]

	IF @isOk > 0
		begin
			SELECT @isOk = 0
			SELECT @isOk = COUNT([UID]) FROM Users
				WHERE ([UID] = @senderID AND @UID is not null AND [UID] = @UID)			--vagy magát kérte
					OR (isAdmin = 1 AND [UID] = @senderID)								--vagy admin

			IF @isOk > 0
				begin
					if @UID is null
						begin

							SELECT [UID], FullName, UserName, [Description], BirthDate, isAdmin FROM Users
						
						end
					else
						begin
							
							SELECT [UID], FullName, UserName, [Description], BirthDate, isAdmin FROM Users
								WHERE [UID] = @UID

						end
				end

		end
END
GO
/****** Object:  StoredProcedure [dbo].[setUsers]    Script Date: 2021. 06. 08. 16:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		CBB - ZB
-- Create date: 2021-06-08
-- Description:	Felhasználók módosítása
-- =============================================
CREATE PROCEDURE [dbo].[setUsers] 
	@sessionid char(36),
	@senderID int,
	@UID int = NULL,
	@username varchar(32),
	@fullname varchar(64),
	@description varchar(256),
	@psw char(256) = NULL,
	@birthdate date = NULL
AS
BEGIN
	DECLARE @SID uniqueidentifier
	SELECT @SID = CONVERT(uniqueidentifier, @sessionid)

	DECLARE @isOk int
	SELECT @isOk = COUNT(us.[UID]) FROM UsersSessions us
		JOIN Users u on u.[UID] = us.[UID]
		WHERE us.SesID = @SID AND us.Until > GETDATE()

	IF @isOk > 0
		begin
			SELECT @isOk = 0
			SELECT @isOk = COUNT([UID]) FROM Users
				WHERE ([UID] = @senderID AND [UID] is not null AND [UID] = @UID)			--vagy önmaga és magát kérte
					OR (isAdmin = 1 AND [UID] = @senderID)							--vagy admin

			IF @isOk > 0
				begin
					if @UID is not null
						begin
							DECLARE @alternateB date
							DECLARE @alternateP char(256)

							SELECT @alternateB = BirthDate, @alternateP = HSHD_PASSWORD FROM Users
								WHERE [UID] = @UID

							UPDATE [dbo].[Users]
							   SET [FullName] = @fullname
								  ,[UserName] = @username
								  ,[Description] = @description
								  ,[BirthDate] = ISNULL(@birthdate, @alternateB)
								  ,[HSHD_PASSWORD] = ISNULL(@psw, @alternateP)
							 WHERE [UID] = @UID
						end
					else
						begin

							INSERT INTO [dbo].[Users]
									   ([FullName]
									   ,[UserName]
									   ,[Description]
									   ,[BirthDate]
									   ,[HSHD_PASSWORD]
									   ,[isAdmin])
								 VALUES
									   (@fullname
									   ,@username
									   ,@description
									   ,@birthdate
									   ,@psw
									   ,0)

						end
				end

		end
END
GO
/****** Object:  StoredProcedure [dbo].[writeMessage]    Script Date: 2021. 06. 08. 16:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		CBB - ZB
-- Create date: 2021-06-08
-- Description:	Üzenet írása
-- =============================================
CREATE PROCEDURE [dbo].[writeMessage] 
	@uid int,
	@sessionid char(36),
	@content varchar(128),
	@subject varchar(64) = NULL,
	@MID int = NULL,
	@toID int = NULL,
	@isGroup int = NULL
AS
BEGIN
	DECLARE @isUser int
	DECLARE @isAdmin bit
	DECLARE @SID uniqueidentifier
	SELECT @SID = CONVERT(uniqueidentifier, @sessionid)

	SELECT @isUser = us.[UID], @isAdmin = u.isAdmin FROM UsersSessions us
		JOIN Users u ON us.[UID] = u.[UID]
		WHERE us.Until > GETDATE() AND us.[UID] = @uid ANd us.SesID = @SID

	IF @isUser is not null
		begin
			if @MID is null and @subject is not null		--új üzenet
				begin
					DECLARE @newMID int

					if @isAdmin = 1
						begin

							if @isGroup = 0
								begin

									INSERT INTO [dbo].[Messages]
											   ([Content]
											   ,[Date]
											   ,[SenderID])
										 VALUES
											   (@content
											   ,GETDATE()
											   ,@uid)
									SELECT @newMID = @@IDENTITY

									INSERT INTO [dbo].[MessagesToFrom]
										   ([MID]
										   ,[UID1]
										   ,[UID2]
										   ,[Subject]
										   ,[LastMessage])
									 VALUES
										   (@newMID
										   ,@uid
										   ,@toID
										   ,@subject
										   ,GETDATE())
								end
							else
								begin
									DECLARE @usID int

									Select [UID] as 'UID'
										Into   #Temp
										FROM UserToGroups
										WHERE [UGID] = @toID

									While (Select Count(*) From #Temp) > 0
										Begin
											Select Top 1 @usID = [UID] From #Temp

											INSERT INTO [dbo].[Messages]
											   ([Content]
											   ,[Date]
											   ,[SenderID])
											 VALUES
												   (@content
												   ,GETDATE()
												   ,@uid)

											SELECT @newMID = @@IDENTITY

											INSERT INTO [dbo].[MessagesToFrom]
													([MID]
													,[UID1]
													,[UID2]
													,[Subject]
													,[LastMessage])
													VALUES
														(@newMID
														,@uid
														,@usID
														,@subject
														,GETDATE())

											Delete #Temp Where [UID] = @usID

										End
								end
						end
					else
						begin
					
							-- gyerek ír Adminnak (mindnek? közös chat? egynek?...)
							return

						end

				end
			else if @MID is not null
				begin

					INSERT INTO [dbo].[Messages]
							   ([MID]
							   ,[Content]
							   ,[Date]
							   ,[SenderID])
						 VALUES
							   (@MID
							   ,@content
							   ,GETDATE()
							   ,@uid)

					UPDATE [dbo].[MessagesToFrom]
					   SET [LastMessage] = GETDATE()
					 WHERE [MID] = @MID

				end
				
		end
END
GO
