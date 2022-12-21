CREATE PROCEDURE [dbo].[spAgreementRoom_Delete]
	@Id INT
AS
BEGIN
	DELETE 
	FROM dbo.[tblAgreementRoom]
	WHERE Id = @Id;
END
