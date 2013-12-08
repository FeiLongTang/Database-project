USE [ѧ������ϵͳ]
GO

/****** Object:  View [dbo].[ȫ���ɼ�]    Script Date: 12/09/2013 01:08:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ȫ���ɼ�]
AS
SELECT     dbo.ѧ��.���, dbo.�ɼ�.ѧ��, dbo.ѧ��.����, dbo.ѧ��.�Ա�, dbo.�ɼ�.�γ̺�, dbo.�γ�.�γ���, dbo.�γ�.ѧ��, dbo.�ɼ�.�ɼ�
FROM         dbo.ѧ�� INNER JOIN
                      dbo.�ɼ� ON dbo.ѧ��.ѧ�� = dbo.�ɼ�.ѧ�� INNER JOIN
                      dbo.�γ� ON dbo.�ɼ�.�γ̺� = dbo.�γ�.�γ̺�
GROUP BY dbo.�ɼ�.ѧ��, dbo.ѧ��.����, dbo.ѧ��.�Ա�, dbo.ѧ��.���, dbo.�γ�.�γ���, dbo.�γ�.ѧ��, dbo.�ɼ�.�ɼ�, dbo.�ɼ�.�γ̺�

GO

/****** Object:  View [dbo].[����ɼ�]    Script Date: 12/09/2013 01:09:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[����ɼ�]
AS
SELECT     ���, ѧ��, ����, �Ա�, �γ̺�, �γ���, ѧ��, �ɼ�
FROM         dbo.ȫ���ɼ�
WHERE     (�ɼ� >= 60)

GO

/****** Object:  View [dbo].[����ɼ�]    Script Date: 12/09/2013 01:09:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[����ɼ�]
AS
SELECT     ���, ѧ��, ����, �Ա�, �γ̺�, �γ���, ѧ��, �ɼ�
FROM         dbo.ȫ���ɼ�
WHERE     (�ɼ� >= 60)

GO

/****** Object:  View [dbo].[��ѧ��]    Script Date: 12/09/2013 01:10:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[��ѧ��]
AS
SELECT     dbo.ѧ��.ѧ��, dbo.ѧ��.����, dbo.ѧ��.�Ա�, dbo.�����ѧ��.ƽ����, dbo.�����ѧ��.�����ѧ��, dbo.δ���ѧ��.δ���ѧ��
FROM         dbo.ѧ�� LEFT OUTER JOIN
                      dbo.�����ѧ�� ON dbo.ѧ��.ѧ�� = dbo.�����ѧ��.ѧ�� LEFT OUTER JOIN
                      dbo.δ���ѧ�� ON dbo.ѧ��.ѧ�� = dbo.δ���ѧ��.ѧ��

GO

/****** Object:  View [dbo].[�����ѧ��]    Script Date: 12/09/2013 01:10:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[�����ѧ��]
AS
SELECT     ѧ��, ����, CAST(SUM(�ɼ� * ѧ��) / CAST(SUM(ѧ��) AS float) AS numeric(5, 2)) AS ƽ����, SUM(ѧ��) AS �����ѧ��
FROM         dbo.����ɼ�
GROUP BY ����, ѧ��

GO

/****** Object:  View [dbo].[δ���ѧ��]    Script Date: 12/09/2013 01:11:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[δ���ѧ��]
AS
SELECT     ѧ��, ����, SUM(ѧ��) AS δ���ѧ��
FROM         dbo.������ɼ�
GROUP BY ����, ѧ��

GO