using BasketballCompetitionPlatform.DataAccess.DbAccess;
using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public class AgreementRoom_RequestForChangeData : IAgreementRoom_RequestForChangeData
{
    private readonly ISqlDataAccess _db;

    public AgreementRoom_RequestForChangeData(ISqlDataAccess db)
    {
        _db = db;
    }

    public Task<IEnumerable<AgreementRoom_RequestForChange>> GetAllAgreementRoom_RequestForChange() =>
        _db.LoadData<AgreementRoom_RequestForChange, dynamic>(StoredProcedursResources.AgreementRoom_RequestForChange_GetAll, new { });

    public async Task<AgreementRoom_RequestForChange?> GetAgreementRoom_RequestForChange(int teamId, int agreementRoomId)
    {
        var result = await _db.LoadData<AgreementRoom_RequestForChange, dynamic>(
            StoredProcedursResources.AgreementRoom_RequestForChange_Get,
            new { TeamId = teamId, AgreementRoomId = agreementRoomId });
        return result.FirstOrDefault();
    }

    public async Task<AgreementRoom_RequestForChange> InsertAgreementRoom_RequestForChange(AgreementRoom_RequestForChange agreementRoomRequestForChange)
    {
        await _db.SaveData(StoredProcedursResources.AgreementRoom_RequestForChange_Insert, new
        {
            agreementRoomRequestForChange.TeamId,
            agreementRoomRequestForChange.AgreementRoomId,
            agreementRoomRequestForChange.NewTime,
            agreementRoomRequestForChange.NewDate,
            agreementRoomRequestForChange.NewBasketballCourt,
            agreementRoomRequestForChange.IsAccepted
        });

        return agreementRoomRequestForChange;
    }


    public async Task<AgreementRoom_RequestForChange> UpdateAgreementRoom_RequestForChange(AgreementRoom_RequestForChange agreementRoomRequestForChange)
    {
        await _db.SaveData(StoredProcedursResources.AgreementRoom_RequestForChange_Update, agreementRoomRequestForChange);

        return agreementRoomRequestForChange;
    }
    public Task DeleteAgreementRoom_RequestForChange(int teamId, int agreementRoomId) =>
        _db.SaveData(StoredProcedursResources.AgreementRoom_RequestForChange_Delete, new { TeamId = teamId, AgreementRoomId = agreementRoomId });
}
