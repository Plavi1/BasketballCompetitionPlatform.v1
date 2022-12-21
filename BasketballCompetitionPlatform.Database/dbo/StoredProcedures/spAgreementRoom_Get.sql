CREATE PROCEDURE [dbo].[spAgreementRoom_Get]
	@Id INT
AS
BEGIN
	SELECT *
	FROM dbo.[tblAgreementRoom]
	WHERE Id = @Id;
END
