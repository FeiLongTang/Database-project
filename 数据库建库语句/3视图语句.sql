USE [ѧ������ϵͳ]
GO

/****** Object:  View [dbo].[ȫ���ɼ�]    Script Date: 12/18/2013 00:48:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ȫ���ɼ�]
AS
SELECT     dbo.רҵ.רҵ��, dbo.רҵ.רҵ��, dbo.ѧ��.���, dbo.�ɼ�.ѧ��, dbo.ѧ��.����, dbo.ѧ��.�Ա�, dbo.�ɼ�.�γ̺�, dbo.�γ�.�γ���, dbo.�γ�.�γ�����, dbo.�γ�.ѧ��, dbo.�ɼ�.�ɼ�, 
                      dbo.�ɼ�.�����ɼ�, dbo.�ɼ�.��ʵ�ɼ�
FROM         dbo.ѧ�� INNER JOIN
                      dbo.�ɼ� ON dbo.ѧ��.ѧ�� = dbo.�ɼ�.ѧ�� INNER JOIN
                      dbo.�γ� ON dbo.�ɼ�.�γ̺� = dbo.�γ�.�γ̺� INNER JOIN
                      dbo.�༶ ON dbo.ѧ��.��� = dbo.�༶.��� INNER JOIN
                      dbo.רҵ ON dbo.�༶.רҵ�� = dbo.רҵ.רҵ��
GROUP BY dbo.�ɼ�.ѧ��, dbo.ѧ��.����, dbo.ѧ��.�Ա�, dbo.ѧ��.���, dbo.�γ�.�γ���, dbo.�γ�.ѧ��, dbo.�ɼ�.�ɼ�, dbo.�ɼ�.�γ̺�, dbo.�γ�.�γ�����, dbo.�ɼ�.�����ɼ�, dbo.רҵ.רҵ��, 
                      dbo.רҵ.רҵ��, dbo.�ɼ�.��ʵ�ɼ�

GO

USE [ѧ������ϵͳ]
GO

/****** Object:  View [dbo].[����ɼ�]    Script Date: 12/18/2013 00:50:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[����ɼ�]
AS
SELECT     ���, ѧ��, ����, �Ա�, �γ̺�, �γ���, ѧ��, ��ʵ�ɼ� AS �ɼ�, �γ�����
FROM         dbo.ȫ���ɼ�
WHERE     (��ʵ�ɼ� >= 60)

GO


USE [ѧ������ϵͳ]
GO

/****** Object:  View [dbo].[������ɼ�]    Script Date: 12/18/2013 00:50:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[������ɼ�]
AS
SELECT     ���, ѧ��, ����, �Ա�, �γ̺�, �γ���, ѧ��, ��ʵ�ɼ� AS �ɼ�, �γ�����
FROM         dbo.ȫ���ɼ�
WHERE     (��ʵ�ɼ� < 60)

GO


USE [ѧ������ϵͳ]
GO

/****** Object:  View [dbo].[�������ѧ��]    Script Date: 12/18/2013 00:52:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[�������ѧ��]
AS
SELECT     ѧ��, ����, CAST(SUM(�ɼ� * ѧ��) / CAST(SUM(ѧ��) AS float) AS numeric(5, 2)) AS ƽ����, SUM(ѧ��) AS �����ѧ��
FROM         dbo.����ɼ�
WHERE     (�γ����� <> '��ѡ')
GROUP BY ����, ѧ��

GO

USE [ѧ������ϵͳ]
GO

/****** Object:  View [dbo].[����δ���ѧ��]    Script Date: 12/18/2013 00:53:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[����δ���ѧ��]
AS
SELECT     ѧ��, ����, SUM(ѧ��) AS ����δ���ѧ��
FROM         dbo.������ɼ�
WHERE     (�γ����� <> '��ѡ')
GROUP BY ѧ��, ����

GO


USE [ѧ������ϵͳ]
GO

/****** Object:  View [dbo].[�����ѧ��]    Script Date: 12/18/2013 00:54:03 ******/
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


USE [ѧ������ϵͳ]
GO

/****** Object:  View [dbo].[��ѧ��]    Script Date: 12/18/2013 00:54:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*update ��ѧ��
set �����ѧ��=0 where �����ѧ��=null*/
CREATE VIEW [dbo].[��ѧ��]
AS
SELECT     dbo.ѧ��.ѧ��, dbo.ѧ��.����, dbo.ѧ��.�Ա�, dbo.�����ѧ��.ƽ����, dbo.�������ѧ��.ƽ���� AS ����ƽ����, dbo.�����ѧ��.�����ѧ��, dbo.�������ѧ��.�����ѧ�� AS ����ѧ��, 
                      dbo.�����ѧ��.�����ѧ�� - dbo.�������ѧ��.�����ѧ�� AS ѡ��ѧ��, dbo.����δ���ѧ��.����δ���ѧ��
FROM         dbo.ѧ�� INNER JOIN
                      dbo.�������ѧ�� ON dbo.ѧ��.ѧ�� = dbo.�������ѧ��.ѧ�� INNER JOIN
                      dbo.����δ���ѧ�� ON dbo.ѧ��.ѧ�� = dbo.����δ���ѧ��.ѧ�� LEFT OUTER JOIN
                      dbo.�����ѧ�� ON dbo.ѧ��.ѧ�� = dbo.�����ѧ��.ѧ��

GO

USE [ѧ������ϵͳ]
GO

/****** Object:  View [dbo].[��ѧ�ƻ���ͼ]    Script Date: 12/18/2013 00:54:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[��ѧ�ƻ���ͼ]
AS
SELECT     dbo.��ѧ�ƻ�.ѧ��, dbo.��ѧ�ƻ�.רҵ��, dbo.��ѧ�ƻ�.�γ̺�, dbo.�γ�.�γ���, dbo.�γ�.ѧ��, dbo.�γ�.�γ�����
FROM         dbo.��ѧ�ƻ� INNER JOIN
                      dbo.�γ� ON dbo.��ѧ�ƻ�.�γ̺� = dbo.�γ�.�γ̺�

GO


USE [ѧ������ϵͳ]
GO

/****** Object:  View [dbo].[��ѧ�ƻ�ѧ��]    Script Date: 12/18/2013 00:55:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[��ѧ�ƻ�ѧ��]
AS
SELECT     bi.ѧ��, bi.רҵ��, ISNULL(bi.����ѧ��, 0) AS ����ѧ��, ISNULL(xuan.��ѡѧ��, 0) AS ��ѡѧ��, ISNULL(xian.��ѡѧ��, 0) AS ��ѡѧ��
FROM         (SELECT     ѧ��, רҵ��, SUM(ѧ��) AS ����ѧ��
                       FROM          dbo.��ѧ�ƻ���ͼ
                       WHERE      (�γ����� = '����')
                       GROUP BY ѧ��, רҵ��) AS bi FULL OUTER JOIN
                          (SELECT     ѧ��, רҵ��, SUM(ѧ��) AS ��ѡѧ��
                            FROM          dbo.��ѧ�ƻ���ͼ AS ��ѧ�ƻ���ͼ_2
                            WHERE      (�γ����� = '��ѡ')
                            GROUP BY ѧ��, רҵ��) AS xuan ON xuan.ѧ�� = bi.ѧ�� AND xuan.רҵ�� = bi.רҵ�� FULL OUTER JOIN
                          (SELECT     ѧ��, רҵ��, SUM(ѧ��) AS ��ѡѧ��
                            FROM          dbo.��ѧ�ƻ���ͼ AS ��ѧ�ƻ���ͼ_1
                            WHERE      (�γ����� = '��ѡ')
                            GROUP BY ѧ��, רҵ��) AS xian ON xian.ѧ�� = bi.ѧ�� AND xian.רҵ�� = bi.רҵ��

GO

USE [ѧ������ϵͳ]
GO

/****** Object:  View [dbo].[ѧ��ѧ��]    Script Date: 12/18/2013 00:55:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ѧ��ѧ��]
AS
SELECT     dbo.ȫ���ɼ�.ѧ��, dbo.ȫ���ɼ�.����, dbo.��ѧ�ƻ�.ѧ��, dbo.ȫ���ɼ�.�γ�����, SUM(dbo.ȫ���ɼ�.ѧ��) AS δ���ѧ��
FROM         dbo.ȫ���ɼ� LEFT OUTER JOIN
                      dbo.��ѧ�ƻ� ON dbo.��ѧ�ƻ�.�γ̺� = dbo.ȫ���ɼ�.�γ̺� AND dbo.ȫ���ɼ�.רҵ�� = dbo.��ѧ�ƻ�.רҵ��
WHERE     (dbo.ȫ���ɼ�.��ʵ�ɼ� < 60)
GROUP BY dbo.ȫ���ɼ�.ѧ��, dbo.ȫ���ɼ�.����, dbo.��ѧ�ƻ�.ѧ��, dbo.ȫ���ɼ�.�γ�����

GO

USE [ѧ������ϵͳ]
GO

/****** Object:  View [dbo].[ѧ��ѧ����ϸ]    Script Date: 12/18/2013 00:55:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ѧ��ѧ����ϸ]
AS
SELECT     org.ѧ��, org.����, org.ѧ��, ISNULL(bi.����δ���ѧ��, 0) AS ����δ���ѧ��, ISNULL(xian.��ѡδ���ѧ��, 0) AS ��ѡδ���ѧ��, ISNULL(xuan.��ѡδ���ѧ��, 0) AS ��ѡδ���ѧ��
FROM         (SELECT DISTINCT ѧ��, ����, ѧ��
                       FROM          dbo.ѧ��ѧ��) AS org LEFT OUTER JOIN
                          (SELECT     ѧ��, ѧ��, δ���ѧ�� AS ����δ���ѧ��
                            FROM          dbo.ѧ��ѧ�� AS ѧ��ѧ��_3
                            WHERE      (�γ����� = '����')) AS bi ON org.ѧ�� = bi.ѧ�� AND (org.ѧ�� = bi.ѧ�� OR
                      org.ѧ�� IS NULL AND bi.ѧ�� IS NULL) LEFT OUTER JOIN
                          (SELECT     ѧ��, ѧ��, δ���ѧ�� AS ��ѡδ���ѧ��
                            FROM          dbo.ѧ��ѧ�� AS ѧ��ѧ��_2
                            WHERE      (�γ����� = '��ѡ')) AS xian ON xian.ѧ�� = org.ѧ�� AND (org.ѧ�� = xian.ѧ�� OR
                      org.ѧ�� IS NULL AND xian.ѧ�� IS NULL) LEFT OUTER JOIN
                          (SELECT     ѧ��, ѧ��, δ���ѧ�� AS ��ѡδ���ѧ��
                            FROM          dbo.ѧ��ѧ�� AS ѧ��ѧ��_1
                            WHERE      (�γ����� = '��ѡ')) AS xuan ON xuan.ѧ�� = org.ѧ�� AND (org.ѧ�� = xuan.ѧ�� OR
                      org.ѧ�� IS NULL AND xuan.ѧ�� IS NULL)

GO


USE [ѧ������ϵͳ]
GO

/****** Object:  View [dbo].[��δ���ѧ��]    Script Date: 12/18/2013 00:56:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[��δ���ѧ��]
AS
SELECT     ѧ��, ����, SUM(����δ���ѧ��) AS ����δ���ѧ��, SUM(��ѡδ���ѧ��) AS ��ѡδ���ѧ��, SUM(��ѡδ���ѧ��) AS ��ѡδ���ѧ��
FROM         dbo.ѧ��ѧ����ϸ
GROUP BY ѧ��, ����

GO

