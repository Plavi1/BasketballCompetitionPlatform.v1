using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public interface IAgreementRoomData
{
    Task DeleteAgreementRoom(int agreementRoomId);
    Task<AgreementRoom?> GetAgreementRoom(int agreementRoomId);
    Task<IEnumerable<AgreementRoom>> GetAllAgreementRooms();
    Task<AgreementRoom> InsertAgreementRoom(AgreementRoom agreementRoom);
    Task<AgreementRoom> UpdateAgreementRoom(AgreementRoom agreementRoom);
}