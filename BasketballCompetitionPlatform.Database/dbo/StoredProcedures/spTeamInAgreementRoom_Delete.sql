﻿CREATE PROCEDURE [dbo].[spTeamInAgreementRoom_Delete]
	@TeamId INT, 
    @AgreementRoomId INT
AS
BEGIN
    DELETE 
    FROM dbo.[tblTeamInAgreementRoom]
    WHERE TeamId = @TeamId AND AgreementRoomId = @AgreementRoomId;
END
