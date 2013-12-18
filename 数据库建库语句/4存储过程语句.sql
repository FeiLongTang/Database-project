USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[�༶_DEL]    Script Date: 12/18/2013 00:57:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[�༶_DEL] 
  @��� nchar(6)=NULL
as
update ѧ�� set ���=NULL where ���=@���
delete  �༶ where ���=@���
GO


USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[�༶_Find]    Script Date: 12/18/2013 00:57:05 ******/
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
	select ���,רҵ��,������,��ѧ��� from �༶,רҵ where ���=@��� and �༶.רҵ��=רҵ.רҵ��
END
GO
USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[�༶_UDA]    Script Date: 12/18/2013 00:57:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		jxy
-- Create date: 2013.12.8
-- Description:	���ڰ༶�����
-- =============================================
CREATE PROCEDURE [dbo].[�༶_UDA]
		@��� nchar(6)=NULL,
		@רҵ�� int=NULL,
		@������ nchar(10)=NULL,
		@��ѧ��� int=NULL
		
AS
BEGIN transaction
	IF EXISTS (select *  from �༶ where ���=@���)
	  update �༶ set רҵ��=@רҵ��,������=@������,��ѧ���=@��ѧ��� where ���=@���
	
	else
	  insert �༶(���,רҵ��,������,��ѧ���) values(@���,@רҵ��,@������,@��ѧ���);
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

/****** Object:  StoredProcedure [dbo].[�ɼ�_DEL]    Script Date: 12/18/2013 00:57:15 ******/
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

/****** Object:  StoredProcedure [dbo].[�ɼ�_Find]    Script Date: 12/18/2013 00:57:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		jxy
-- Create date: 2013.12.8
-- Description:	���ڲ�ѯ�ɼ�����
-- =============================================
CREATE PROCEDURE [dbo].[�ɼ�_Find]
		@ѧ�� nchar(8)=NULL
AS
BEGIN
	select �γ̺�,�γ���,�γ�����,ѧ��,�ɼ�,�����ɼ�  from ȫ���ɼ� 
	where ѧ��=@ѧ��
	
end


GO
USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[�ɼ�_Find2]    Script Date: 12/18/2013 00:57:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		jxy
-- Create date: 2013.12.8
-- Description:	���ڲ�ѯ�ɼ�����
-- =============================================
create PROCEDURE [dbo].[�ɼ�_Find2]
		@ѧ�� nchar(8)=NULL
AS
BEGIN
	select רҵ��,ѧ��,ȫ���ɼ�.�γ̺�,�γ���,�γ�����,ѧ��,�ɼ�,�����ɼ�  from ȫ���ɼ� left join ��ѧ�ƻ�  on (��ѧ�ƻ�.�γ̺�=ȫ���ɼ�.�γ̺� and  ȫ���ɼ�.רҵ��=��ѧ�ƻ�.רҵ��)
	where ѧ��=@ѧ��
	
end


GO
USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[�ɼ�_INS]    Script Date: 12/18/2013 00:57:27 ******/
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

/****** Object:  StoredProcedure [dbo].[�ɼ�_UDA]    Script Date: 12/18/2013 00:57:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--insert �α�  values('HA2113001','030511','��ʦ1')
CREATE proc [dbo].[�ɼ�_UDA]
	@ѧ�� nchar(8)=NULL,
	@�γ̺� nchar(9)=NULL,
	@�ɼ� int=0,
	@�����ɼ� int=NULL
as
if EXISTS (select * from �ɼ� where ѧ��=@ѧ�� and �γ̺�=@�γ̺�)
	update �ɼ� set �ɼ�=@�ɼ�,�����ɼ�=@�����ɼ�  where ѧ��=@ѧ�� and �γ̺�=@�γ̺�
else
	insert �ɼ� values(@ѧ��,@�γ̺�,@�ɼ�,@�����ɼ�,NULL)
	
GO

USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[�ɼ��γ�_FIND]    Script Date: 12/18/2013 00:57:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[�ɼ��γ�_FIND]
	@�γ̺� nchar(9)=NULL,
	@ѧ�� nchar(8)=NULL
as
select ѧ��,����,�ɼ�,�����ɼ� from ȫ���ɼ� where �γ̺�=@�γ̺� and (ѧ��=@ѧ�� or @ѧ�� is null) 
union
select ѧ��,����,NULL,NULL from ѧ�� where (ѧ��=@ѧ�� or @ѧ�� is null)  and  not  exists 
(select * from ȫ���ɼ� where �γ̺�=@�γ̺� and (ȫ���ɼ�.ѧ��=ѧ��.ѧ��))
GO
USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[��ʦ_Find]    Script Date: 12/18/2013 00:57:39 ******/
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

/****** Object:  StoredProcedure [dbo].[��ѧ�ƻ�_DEL]    Script Date: 12/18/2013 00:57:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[��ѧ�ƻ�_DEL] 
    @ѧ�� int=null,
    @רҵ�� int=null,
    @�γ̺� nchar(9)=null
as
delete ��ѧ�ƻ� where (ѧ��=@ѧ�� and רҵ��=@רҵ�� and �γ̺�=@�γ̺�)
GO
USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[��ѧ�ƻ�_Find]    Script Date: 12/18/2013 00:57:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[��ѧ�ƻ�_Find] 
    @ѧ�� int=null,
    @רҵ�� int=null
as
select �γ̺�,�γ���,ѧ��,�γ����� from  ��ѧ�ƻ���ͼ
   where ѧ��=@ѧ�� and רҵ��=@רҵ��
GO
USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[��ѧ�ƻ�_Find2]    Script Date: 12/18/2013 00:57:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[��ѧ�ƻ�_Find2] 
    @ѧ�� int=null,
    @רҵ�� int=null
as
select �γ̺�,�γ���,ѧ��,�γ����� from  ��ѧ�ƻ���ͼ
   where  רҵ��=@רҵ��
GO
USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[��ѧ�ƻ�_INS]    Script Date: 12/18/2013 00:57:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[��ѧ�ƻ�_INS] 
    @ѧ�� int=null,
    @רҵ�� int=null,
    @�γ̺� nchar(9)=null
as
insert ��ѧ�ƻ� values(@ѧ��,@רҵ��,@�γ̺�)
GO

USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[��ѧ�ƻ�ѧ��_Find]    Script Date: 12/18/2013 00:57:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[��ѧ�ƻ�ѧ��_Find] 
    @ѧ�� int=null,
    @רҵ�� int=null
as
select ����ѧ��,��ѡѧ��,��ѡѧ��  from  ��ѧ�ƻ�ѧ��
   where ѧ��=@ѧ�� and רҵ��=@רҵ��
GO

USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[����]    Script Date: 12/18/2013 00:58:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[����]
	@���޵��� int=28,
	@��ѡ���� int=18,
	@ѧ�ڵ��� int=8
as
select t.ѧ��,����,����δ���ѧ��,ƽ���� from ��ѧ�� right join(
select ѧ�� from ��δ���ѧ�� where ����δ���ѧ��>=@���޵��� or ��ѡδ���ѧ�� >=@��ѡ����
union
select ѧ�� from ѧ��ѧ����ϸ where ����δ���ѧ��>=@ѧ�ڵ���) as t on ��ѧ��.ѧ��=t.ѧ��

GO
USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[�γ�_Find]    Script Date: 12/18/2013 00:58:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--insert �α�  values('HA2113001','030511','��ʦ1')
CREATE proc [dbo].[�γ�_Find]
	@�γ̺� nchar(9)=NULL
as
select �γ̺�,�γ��� from �γ� where (�γ̺�=@�γ̺� or @�γ̺� is NULL)
GO

USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[�γ�_INS]    Script Date: 12/18/2013 00:58:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		jxy
-- Create date: 2013.12.2
-- Description:	����ѧ������룬������� ��ţ�ѧ�ţ��������Ա𣬳�������
-- =============================================
CREATE PROCEDURE [dbo].[�γ�_INS]
		@�γ̺� nchar(9)=NULL,
		@�γ��� nchar(25)=NULL,
		@ѧ�� int=NULL,
		@�γ����� nchar(2)=NULL
		
AS
BEGIN transaction
	insert �γ� values(@�γ̺�,@�γ���,@ѧ��,@�γ�����);
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

/****** Object:  StoredProcedure [dbo].[ѧ��_Find]    Script Date: 12/18/2013 00:58:23 ******/
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
	select distinct ѧ��,����,�Ա�,ISNULL(ƽ����, 0.00)as ƽ����,ISNULL(����ƽ����, 0.00)as ����ƽ����,ISNULL(�����ѧ��, 0) as ��ѧ��,ISNULL(����ѧ��, 0) as ����ѧ�� ,ISNULL(ѡ��ѧ��, 0)as ѡ��ѧ��,ISNULL( ����δ���ѧ��, 0) as ����δ���ѧ��  from ��ѧ�� 
	where ѧ��=@ѧ��
	
end


GO
USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[ѧ��_DEL]    Script Date: 12/18/2013 00:58:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		jxy
-- Create date: 2013.12.8
-- Description:	�����޸�ѧ����Ϣ
-- =============================================
create PROCEDURE [dbo].[ѧ��_DEL]
		@ѧ�� nchar(9)=NULL
		
AS
delete from ѧ�� where ѧ��=@ѧ��
GO

USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[ѧ��_Find]    Script Date: 12/18/2013 00:58:34 ******/
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

USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[ѧ��_INS]    Script Date: 12/18/2013 00:58:37 ******/
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

USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[ѧ��_UDA]    Script Date: 12/18/2013 00:58:40 ******/
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

USE [ѧ������ϵͳ]
GO

/****** Object:  StoredProcedure [dbo].[רҵ_Find]    Script Date: 12/18/2013 00:58:44 ******/
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












