USE [ѧ������ϵͳ]
GO

/****** Object:  Table [dbo].[�༶]    Script Date: 12/09/2013 01:06:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[�༶](
	[���] [nchar](6) NOT NULL,
	[רҵ��] [int] NOT NULL,
	[������] [nchar](10) NOT NULL,
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


USE [ѧ������ϵͳ]
GO

/****** Object:  Table [dbo].[�ɼ�]    Script Date: 12/09/2013 01:07:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[�ɼ�](
	[ѧ��] [nchar](8) NOT NULL,
	[�γ̺�] [nchar](9) NOT NULL,
	[�ɼ�] [int] NULL,
 CONSTRAINT [IX_�ɼ�] UNIQUE NONCLUSTERED 
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

USE [ѧ������ϵͳ]
GO

/****** Object:  Table [dbo].[�α�]    Script Date: 12/09/2013 01:07:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[�α�](
	[�γ̺�] [nchar](9) NOT NULL,
	[�༶��] [nchar](6) NOT NULL,
	[�ον�ʦ] [nchar](10) NOT NULL,
 CONSTRAINT [IX_�α�] UNIQUE NONCLUSTERED 
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

/****** Object:  Table [dbo].[�γ�]    Script Date: 12/09/2013 01:07:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[�γ�](
	[�γ̺�] [nchar](9) NOT NULL,
	[�γ���] [nchar](25) NOT NULL,
	[ѧ��] [int] NOT NULL,
 CONSTRAINT [PK_�γ�] PRIMARY KEY CLUSTERED 
(
	[�γ̺�] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [ѧ������ϵͳ]
GO

/****** Object:  Table [dbo].[ѧ��]    Script Date: 12/09/2013 01:07:38 ******/
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

/****** Object:  Table [dbo].[רҵ]    Script Date: 12/09/2013 01:07:43 ******/
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

