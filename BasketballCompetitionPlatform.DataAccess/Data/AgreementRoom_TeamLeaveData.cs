using BasketballCompetitionPlatform.DataAccess.DbAccess;
using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public class AgreementRoom_TeamLeaveData : IAgreementRoom_TeamLeaveData
{
    private readonly ISqlDataAccess _db;

    public AgreementRoom_TeamLeaveData(ISqlDataAccess db)
    {
        _db = db;
    }

    public Task<IEnumerable<AgreementRoom_TeamLeave>> GetAllAgreementRoom_TeamLeave() =>
        _db.LoadData<AgreementRoom_TeamLeave, dynamic>(StoredProcedursResources.AgreementRoom_TeamLeave_GetAll, new { });

    public async Task<AgreementRoom_TeamLeave?> GetAgreementRoom_TeamLeave(int roomId, int teamId)
    {
        var result = await _db.LoadData<AgreementRoom_TeamLeave, dynamic>(
            StoredProcedursResources.AgreementRoom_TeamLeave_Get,
            new { RoomId = roomId, TeamId = teamId });
        return result.FirstOrDefault();
    }

    public async Task<AgreementRoom_TeamLeave> InsertAgreementRoom_TeamLeave(AgreementRoom_TeamLeave agreementRoomTeamLeave)
    {
        await _db.SaveData(StoredProcedursResources.AgreementRoom_TeamLeave_Insert, new
        {
            agreementRoomTeamLeave.RoomId,
            agreementRoomTeamLeave.TeamId,
            agreementRoomTeamLeave.LeavingDateTime
        });

        return agreementRoomTeamLeave;
    }


    public async Task<AgreementRoom_TeamLeave> UpdateAgreementRoom_TeamLeave(AgreementRoom_TeamLeave agreementRoomTeamLeave)
    {
        await _db.SaveData(StoredProcedursResources.AgreementRoom_TeamLeave_Update, agreementRoomTeamLeave);

        return agreementRoomTeamLeave;
    }
    public Task DeleteAgreementRoom_TeamLeave(int roomId, int teamId) =>
        _db.SaveData(StoredProcedursResources.AgreementRoom_TeamLeave_Delete, new { RoomId = roomId, TeamId = teamId });
}
