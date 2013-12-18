USE [ѧ������ϵͳ]
GO

/****** Object:  Table [dbo].[רҵ]    Script Date: 12/18/2013 00:42:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[רҵ](
	[רҵ��] [int] NOT NULL,
	[רҵ��] [nchar](10) NOT NULL,
	[ѧԺ��] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[רҵ��] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [ѧ������ϵͳ]
GO

/****** Object:  Table [dbo].[�༶]    Script Date: 12/18/2013 00:42:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[�༶](
	[���] [nchar](6) NOT NULL,
	[רҵ��] [int] NOT NULL,
	[������] [nchar](10) NOT NULL,
	[��ѧ���] [int] NOT NULL,
 CONSTRAINT [PK_�༶] PRIMARY KEY CLUSTERED 
(
	[���] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[�༶]  WITH CHECK ADD  CONSTRAINT [FK_�༶_רҵ] FOREIGN KEY([רҵ��])
REFERENCES [dbo].[רҵ] ([רҵ��])
GO

ALTER TABLE [dbo].[�༶] CHECK CONSTRAINT [FK_�༶_רҵ]
GO

ALTER TABLE [dbo].[�༶]  WITH CHECK ADD  CONSTRAINT [CK_�༶] CHECK  (([��ѧ���]>(1800) AND [��ѧ���]<(10000)))
GO

ALTER TABLE [dbo].[�༶] CHECK CONSTRAINT [CK_�༶]
GO

USE [ѧ������ϵͳ]
GO

/****** Object:  Table [dbo].[ѧ��]    Script Date: 12/18/2013 00:42:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ѧ��](
	[���] [nchar](6) NULL,
	[ѧ��] [nchar](8) NOT NULL,
	[����] [nchar](10) NOT NULL,
	[�Ա�] [nchar](1) NOT NULL,
	[��������] [smalldatetime] NULL,
 CONSTRAINT [PK_ѧ��] PRIMARY KEY CLUSTERED 
(
	[ѧ��] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ѧ��]  WITH CHECK ADD  CONSTRAINT [FK_ѧ��_�༶] FOREIGN KEY([���])
REFERENCES [dbo].[�༶] ([���])
GO

ALTER TABLE [dbo].[ѧ��] CHECK CONSTRAINT [FK_ѧ��_�༶]
GO

ALTER TABLE [dbo].[ѧ��]  WITH CHECK ADD  CONSTRAINT [CK_ѧ��] CHECK  (([�Ա�]=N'Ů' OR [�Ա�]=N'��'))
GO

ALTER TABLE [dbo].[ѧ��] CHECK CONSTRAINT [CK_ѧ��]
GO

ALTER TABLE [dbo].[ѧ��] ADD  CONSTRAINT [DF_ѧ��_�Ա�]  DEFAULT (N'��') FOR [�Ա�]
GO

USE [ѧ������ϵͳ]
GO

/****** Object:  Table [dbo].[�γ�]    Script Date: 12/18/2013 00:42:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[�γ�](
	[�γ̺�] [nchar](9) NOT NULL,
	[�γ���] [nchar](25) NOT NULL,
	[ѧ��] [int] NOT NULL,
	[�γ�����] [nchar](2) NOT NULL,
 CONSTRAINT [PK_�γ�] PRIMARY KEY CLUSTERED 
(
	[�γ̺�] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[�γ�]  WITH CHECK ADD  CONSTRAINT [CK_�γ�] CHECK  (([�γ�����]='��ѡ' OR [�γ�����]='��ѡ' OR [�γ�����]='����'))
GO

ALTER TABLE [dbo].[�γ�] CHECK CONSTRAINT [CK_�γ�]
GO

ALTER TABLE [dbo].[�γ�] ADD  CONSTRAINT [DF_�γ�_�γ�����]  DEFAULT (N'����') FOR [�γ�����]
GO

USE [ѧ������ϵͳ]
GO

/****** Object:  Table [dbo].[�α�]    Script Date: 12/18/2013 00:42:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[�α�](
	[�γ̺�] [nchar](9) NOT NULL,
	[�༶��] [nchar](6) NOT NULL,
	[�ον�ʦ] [nchar](10) NOT NULL,
 CONSTRAINT [PK_�α�] PRIMARY KEY CLUSTERED 
(
	[�ον�ʦ] ASC,
	[�༶��] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[�α�]  WITH CHECK ADD  CONSTRAINT [FK_�α�_�༶] FOREIGN KEY([�༶��])
REFERENCES [dbo].[�༶] ([���])
GO

ALTER TABLE [dbo].[�α�] CHECK CONSTRAINT [FK_�α�_�༶]
GO

ALTER TABLE [dbo].[�α�]  WITH CHECK ADD  CONSTRAINT [FK_�α�_�γ�] FOREIGN KEY([�γ̺�])
REFERENCES [dbo].[�γ�] ([�γ̺�])
GO

ALTER TABLE [dbo].[�α�] CHECK CONSTRAINT [FK_�α�_�γ�]
GO

USE [ѧ������ϵͳ]
GO

/****** Object:  Table [dbo].[��ѧ�ƻ�]    Script Date: 12/18/2013 00:42:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[��ѧ�ƻ�](
	[ѧ��] [nchar](1) NOT NULL,
	[רҵ��] [int] NOT NULL,
	[�γ̺�] [nchar](9) NOT NULL,
 CONSTRAINT [PK_��ѧ�ƻ�] PRIMARY KEY CLUSTERED 
(
	[רҵ��] ASC,
	[�γ̺�] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[��ѧ�ƻ�]  WITH CHECK ADD  CONSTRAINT [FK_��ѧ�ƻ�_�γ�] FOREIGN KEY([�γ̺�])
REFERENCES [dbo].[�γ�] ([�γ̺�])
GO

ALTER TABLE [dbo].[��ѧ�ƻ�] CHECK CONSTRAINT [FK_��ѧ�ƻ�_�γ�]
GO

ALTER TABLE [dbo].[��ѧ�ƻ�]  WITH CHECK ADD  CONSTRAINT [FK_��ѧ�ƻ�_רҵ] FOREIGN KEY([רҵ��])
REFERENCES [dbo].[רҵ] ([רҵ��])
GO

ALTER TABLE [dbo].[��ѧ�ƻ�] CHECK CONSTRAINT [FK_��ѧ�ƻ�_רҵ]
GO

ALTER TABLE [dbo].[��ѧ�ƻ�]  WITH CHECK ADD  CONSTRAINT [CK_��ѧ�ƻ�] CHECK  (([ѧ��]>(0) AND [ѧ��]<(9)))
GO

ALTER TABLE [dbo].[��ѧ�ƻ�] CHECK CONSTRAINT [CK_��ѧ�ƻ�]
GO

USE [ѧ������ϵͳ]
GO

/****** Object:  Table [dbo].[�ɼ�]    Script Date: 12/18/2013 00:42:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[�ɼ�](
	[ѧ��] [nchar](8) NOT NULL,
	[�γ̺�] [nchar](9) NOT NULL,
	[�ɼ�] [int] NULL,
	[�����ɼ�] [int] NULL,
	[��ʵ�ɼ�] [int] NULL,
 CONSTRAINT [PK_�ɼ�] PRIMARY KEY CLUSTERED 
(
	[ѧ��] ASC,
	[�γ̺�] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[�ɼ�]  WITH CHECK ADD  CONSTRAINT [FK_�ɼ�_�γ�] FOREIGN KEY([�γ̺�])
REFERENCES [dbo].[�γ�] ([�γ̺�])
GO

ALTER TABLE [dbo].[�ɼ�] CHECK CONSTRAINT [FK_�ɼ�_�γ�]
GO

ALTER TABLE [dbo].[�ɼ�]  WITH CHECK ADD  CONSTRAINT [FK_�ɼ�_ѧ��] FOREIGN KEY([ѧ��])
REFERENCES [dbo].[ѧ��] ([ѧ��])
GO

ALTER TABLE [dbo].[�ɼ�] CHECK CONSTRAINT [FK_�ɼ�_ѧ��]
GO

ALTER TABLE [dbo].[�ɼ�]  WITH CHECK ADD  CONSTRAINT [CK_�ɼ�] CHECK  (([�ɼ�]>=(0) AND [�ɼ�]<=(100)))
GO

ALTER TABLE [dbo].[�ɼ�] CHECK CONSTRAINT [CK_�ɼ�]
GO

ALTER TABLE [dbo].[�ɼ�]  WITH CHECK ADD  CONSTRAINT [CK_�ɼ�_t] CHECK  (([�����ɼ�] IS NULL OR [�ɼ�] IS NOT NULL AND [�����ɼ�]>=(0) AND [�����ɼ�]<=(100) AND [�ɼ�]<(60)))
GO

ALTER TABLE [dbo].[�ɼ�] CHECK CONSTRAINT [CK_�ɼ�_t]
GO

