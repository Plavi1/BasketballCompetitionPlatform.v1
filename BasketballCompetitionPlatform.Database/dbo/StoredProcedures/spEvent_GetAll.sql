CREATE PROCEDURE [dbo].[spEvent_GetAll]
AS
BEGIN 
	SELECT *
	FROM dbo.[tblEvent];
END