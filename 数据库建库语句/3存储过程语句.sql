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

