USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[�༶_Find]    Script Date: 12/09/2013 16:19:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		jxy
-- Create date: 2013.12.8
-- Description:	���ڰ༶���ѯ
-- =============================================
CREATE PROCEDURE [dbo].[�༶_Find]
		@��� nchar(6)=NULL
AS
BEGIN 
	select ���,רҵ��,������ from �༶,רҵ where ���=@��� and �༶.רҵ��=רҵ.רҵ��
END
GO


USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[�༶_UDA]    Script Date: 12/09/2013 16:19:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		jxy
-- Create date: 2013.12.8
-- Description:	���ڰ༶�����
-- =============================================
create PROCEDURE [dbo].[�༶_UDA]
		@��� nchar(6)=NULL,
		@רҵ�� int=NULL,
		@������ nchar(10)=NULL
		
AS
BEGIN transaction
	IF EXISTS (select *  from �༶ where ���=@���)
	  update �༶ set רҵ��=@רҵ��,������=@������ where ���=@���
	
	else
	  insert �༶(���,רҵ��,������) values(@���,@רҵ��,@������);
	IF @@error<>0
	BEGIN
	  ROLLBACK transaction
	  Return 1
	END
	commit transaction
	return 0


GO

USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[�ɼ�_DEL]    Script Date: 12/09/2013 16:19:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--insert �α�  values('HA2113001','030511','��ʦ1')
create proc [dbo].[�ɼ�_DEL]
	@ѧ�� nchar(8)=NULL,
	@�γ̺� nchar(9)=NULL
as
	delete �ɼ�  where ѧ��=@ѧ�� and �γ̺�=@�γ̺�
	
GO
USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[�ɼ�_Find]    Script Date: 12/09/2013 16:19:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		jxy
-- Create date: 2013.12.8
-- Description:	���ڲ�ѯ�ɼ�����
-- =============================================
create PROCEDURE [dbo].[�ɼ�_Find]
		@ѧ�� nchar(8)=NULL
AS
BEGIN
	select �γ̺�,�γ���,ѧ��,�ɼ�  from ȫ���ɼ� 
	where ѧ��=@ѧ��
	
end


GO


USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[�ɼ�_INS]    Script Date: 12/09/2013 16:19:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		jxy
-- Create date: 2013.12.2
-- Description:	����ѧ������룬������� ��ţ�ѧ�ţ��������Ա𣬳�������
-- =============================================
create PROCEDURE [dbo].[�ɼ�_INS]
		@ѧ�� nchar(8)=NULL,
		@�γ̺� nchar(25)=NULL,
		@�ɼ� int=NULL
		
AS
BEGIN transaction
	insert �ɼ�(ѧ��,�γ̺�,�ɼ�) values(@ѧ��,@�γ̺�,@�ɼ�);
	IF @@error<>0
	BEGIN
	  ROLLBACK transaction
	  Return 1
	END
	commit transaction
	return 0


GO

USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[�ɼ�_UDA]    Script Date: 12/09/2013 16:19:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--insert �α�  values('HA2113001','030511','��ʦ1')
create proc [dbo].[�ɼ�_UDA]
	@ѧ�� nchar(8)=NULL,
	@�γ̺� nchar(9)=NULL,
	@�ɼ� int=0
as
if EXISTS (select * from �ɼ� where ѧ��=@ѧ�� and �γ̺�=@�γ̺�)
	update �ɼ� set �ɼ�=@�ɼ�  where ѧ��=@ѧ�� and �γ̺�=@�γ̺�
else
	insert �ɼ� values(@ѧ��,@�γ̺�,@�ɼ�)
	
GO

USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[��ʦ_Find]    Script Date: 12/09/2013 16:19:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--insert �α�  values('HA2113001','030511','��ʦ1')
CREATE proc [dbo].[��ʦ_Find]
	@ѧ�� nchar(8)=NULL
as
select '������',������ from �༶,ѧ�� where ѧ��.���=�༶.��� and ѧ��.ѧ��=@ѧ��
union
select �γ���,�ον�ʦ from �γ�,�α�,ѧ�� where ѧ��.���=�α�.�༶�� and ѧ��.ѧ��=@ѧ�� and �α�.�γ̺�=�γ�.�γ̺�
union
select �γ���,�ον�ʦ from ȫ���ɼ�,�α� where ѧ��=@ѧ�� and �α�.�γ̺�=ȫ���ɼ�.�γ̺�
GO

USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[����]    Script Date: 12/09/2013 16:19:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[����]
	@���� int=null
as
select ѧ��,����,δ���ѧ��,ƽ���� from ��ѧ�� where δ���ѧ�� >=@����
GO

USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[�γ�_Find]    Script Date: 12/09/2013 16:19:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--insert �α�  values('HA2113001','030511','��ʦ1')
create proc [dbo].[�γ�_Find]
as
select �γ̺�,�γ��� from �γ�
GO

USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[�γ�_INS]    Script Date: 12/09/2013 16:19:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		jxy
-- Create date: 2013.12.2
-- Description:	����ѧ������룬������� ��ţ�ѧ�ţ��������Ա𣬳�������
-- =============================================
create PROCEDURE [dbo].[�γ�_INS]
		@�γ̺� nchar(9)=NULL,
		@�γ��� nchar(25)=NULL,
		@ѧ�� int=NULL
		
AS
BEGIN transaction
	insert �γ�(�γ̺�,�γ���,ѧ��) values(@�γ̺�,@�γ���,@ѧ��);
	IF @@error<>0
	BEGIN
	  ROLLBACK transaction
	  Return 1
	END
	commit transaction
	return 0


GO



USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[ѧ��_Find]    Script Date: 12/09/2013 01:13:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		jxy
-- Create date: 2013.12.2
-- Description:	���ڲ�ѯѧ��
-- =============================================
CREATE PROCEDURE [dbo].[ѧ��_Find]
		@ѧ�� nchar(8)=NULL
AS
BEGIN
	select ѧ��,����,�Ա�,ISNULL(ƽ����, 0.00)as ƽ����,ISNULL(�����ѧ��, 0) as �����ѧ�� ,ISNULL(δ���ѧ��, 0)as δ���ѧ��  from ��ѧ�� 
	where ѧ��=@ѧ��
	
end


GO

/****** Object:  StoredProcedure [dbo].[ѧ��_DEL]    Script Date: 12/09/2013 01:13:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		jxy
-- Create date: 2013.12.8
-- Description:	����ɾ��ѧ����Ϣ
-- =============================================
create PROCEDURE [dbo].[ѧ��_DEL]
		@ѧ�� nchar(9)=NULL
		
AS
delete from ѧ�� where ѧ��=@ѧ��
GO


/****** Object:  StoredProcedure [dbo].[ѧ��_Find]    Script Date: 12/09/2013 01:14:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		jxy
-- Create date: 2013.12.2
-- Description:	����ѧ�����ѯ��������� ��ţ�ѧ�ţ��������Ա𣬳�������
-- =============================================
CREATE PROCEDURE [dbo].[ѧ��_Find]
		@��� nchar(6)=NULL,
		@ѧ�� nchar(9)=NULL,
		@���� nchar(10)=NULL,
		@�Ա� nchar(1)=NULL,
		@�������� smalldatetime=NULL
AS
BEGIN
	select * from ѧ��
	where (
		(ѧ��=@ѧ�� or @ѧ�� is NULL) and
		(���=@��� or @��� is NULL) and
		(����=@���� or @���� is NULL) and
		(�Ա�=@�Ա� or @�Ա� is NULL) and
		(��������=@�������� or @�������� is NULL)
	)
end


GO


/****** Object:  StoredProcedure [dbo].[ѧ��_INS]    Script Date: 12/09/2013 01:14:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		jxy
-- Create date: 2013.12.2
-- Description:	����ѧ������룬������� ��ţ�ѧ�ţ��������Ա𣬳�������
-- =============================================
CREATE PROCEDURE [dbo].[ѧ��_INS]
		@��� nchar(6)=NULL,
		@ѧ�� nchar(9)=NULL,
		@���� nchar(10)=NULL,
		@�Ա� nchar(1)=NULL,
		@�������� smalldatetime=NULL
AS
BEGIN transaction
	insert ѧ��(���,ѧ��,����,�Ա�,��������) values(@���,@ѧ��,@����,@�Ա�,@��������);
	IF @@error<>0
	BEGIN
	  ROLLBACK transaction
	  Return 1
	END
	commit transaction
	return 0


GO



/****** Object:  StoredProcedure [dbo].[ѧ��_UDA]    Script Date: 12/09/2013 01:14:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		jxy
-- Create date: 2013.12.8
-- Description:	�����޸�ѧ����Ϣ
-- =============================================
create PROCEDURE [dbo].[ѧ��_UDA]
		@��� nchar(6)=NULL,
		@ѧ�� nchar(9)=NULL,
		@���� nchar(10)=NULL,
		@�Ա� nchar(1)=NULL,
		@�������� smalldatetime=NULL
		
AS
BEGIN transaction
	update ѧ��
		set ���=isnull(@���,���),����=ISNULL(@����,����),�Ա�=ISNULL(@�Ա�,�Ա�),��������=ISNULL(@��������,��������)
	where ѧ��=@ѧ��
			
	IF @@error<>0
	BEGIN
	  ROLLBACK transaction
	  Return 1
	END
	commit transaction
	return 0


GO


/****** Object:  StoredProcedure [dbo].[רҵ_Find]    Script Date: 12/09/2013 01:15:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		jxy
-- Create date: 2013.12.8
-- Description:	����רҵ���ѯ
-- =============================================
create PROCEDURE [dbo].[רҵ_Find]
AS
BEGIN 
	select רҵ��,רҵ�� from רҵ 
END
GO

