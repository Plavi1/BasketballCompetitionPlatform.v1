using BasketballCompetitionPlatform.DataAccess.DbAccess;
using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public class AgreementRoomData : IAgreementRoomData
{
    private readonly ISqlDataAccess _db;

    public AgreementRoomData(ISqlDataAccess db)
    {
        _db = db;
    }

    public Task<IEnumerable<AgreementRoom>> GetAllAgreementRooms() =>
        _db.LoadData<AgreementRoom, dynamic>(StoredProcedursResources.AgreementRoom_GetAll, new { });

    public async Task<AgreementRoom?> GetAgreementRoom(int agreementRoomId)
    {
        var result = await _db.LoadData<AgreementRoom, dynamic>(
            StoredProcedursResources.AgreementRoom_Get,
            new { Id = agreementRoomId });
        return result.FirstOrDefault();
    }

    public async Task<AgreementRoom> InsertAgreementRoom(AgreementRoom agreementRoom)
    {
        await _db.SaveData(StoredProcedursResources.AgreementRoom_Insert, new
        {
            agreementRoom.Id,
            agreementRoom.CreationDateTime,
            agreementRoom.Date,
            agreementRoom.Time,
            agreementRoom.BasketballCourt,
            agreementRoom.NumberOfPlayersInRoom,
            agreementRoom.NumberOfTimeRequestChangedAccepted,
            agreementRoom.IsPublicAgreementRoom,
            agreementRoom.IsGameComfirmed,
            agreementRoom.IsGameFinished

        });

        return agreementRoom;
    }


    public async Task<AgreementRoom> UpdateAgreementRoom(AgreementRoom agreementRoom)
    {
        await _db.SaveData(StoredProcedursResources.AgreementRoom_Update, agreementRoom);

        return agreementRoom;
    }
    public Task DeleteAgreementRoom(int agreementRoomId) =>
        _db.SaveData(StoredProcedursResources.AgreementRoom_Delete, new { Id = agreementRoomId });
}
