using BasketballCompetitionPlatform.DataAccess.DbAccess;
using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public class TeamInAgreementRoomData : ITeamInAgreementRoomData
{
    private readonly ISqlDataAccess _db;

    public TeamInAgreementRoomData(ISqlDataAccess db)
    {
        _db = db;
    }

    public async Task<TeamInAgreementRoom> InsertTeamInAgreementRoom(TeamInAgreementRoom teamInAgreementRoom)
    {
        await _db.SaveData(StoredProcedursResources.TeamInAgreementRoom_Insert, new
        {
            teamInAgreementRoom.TeamId,
            teamInAgreementRoom.AgreementRoomId,
            teamInAgreementRoom.IsCreator,
            teamInAgreementRoom.IsTeamAcceptedTheAgreement
        });

        return teamInAgreementRoom;
    }

    public Task DeleteTeamInAgreementRoom(int teamId, int agreementRoomId) =>
        _db.SaveData(StoredProcedursResources.TeamInAgreementRoom_Delete, new { TeamId = teamId, AgreementRoomId = agreementRoomId });
}
