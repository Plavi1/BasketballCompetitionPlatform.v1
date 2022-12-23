CREATE PROCEDURE [dbo].[spTeamInArgeementRoom_Insert]
	@TeamId INT, 
    @AgreementRoomId INT, 
    @IsCreator BIT,
    @IsTeamAcceptedTheAgreement BIT
AS
BEGIN
    INSERT INTO dbo.[tblTeamInAgreementRoom] (TeamId, AgreementRoomId, IsCreator, IsTeamAcceptedTheAgreement)
    VALUES (@TeamId, @AgreementRoomId, @IsCreator, @IsTeamAcceptedTheAgreement);
END