USE [ѧ������ϵͳ]
GO

/****** Object:  UserDefinedFunction [dbo].[��ʵ�ɼ�]    Script Date: 12/18/2013 00:47:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[��ʵ�ɼ�]
(	
	-- Add the parameters for the function here
	@�����ɼ� int,
	@�ɼ� int
)
RETURNS int 
AS
begin

RETURN 
(
	CASE 
WHEN @�����ɼ� IS null THEN @�ɼ� 
ELSE 
case 
when @�����ɼ�>60 then 60 
else @�����ɼ� end end
)
end

GO


