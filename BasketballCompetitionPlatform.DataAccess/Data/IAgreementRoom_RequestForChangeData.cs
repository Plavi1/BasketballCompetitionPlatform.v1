using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public interface IAgreementRoom_RequestForChangeData
{
    Task DeleteAgreementRoom_RequestForChange(int teamId, int agreementRoomId);
    Task<AgreementRoom_RequestForChange?> GetAgreementRoom_RequestForChange(int teamId, int agreementRoomId);
    Task<IEnumerable<AgreementRoom_RequestForChange>> GetAllAgreementRoom_RequestForChange();
    Task<AgreementRoom_RequestForChange> InsertAgreementRoom_RequestForChange(AgreementRoom_RequestForChange agreementRoomRequestForChange);
    Task<AgreementRoom_RequestForChange> UpdateAgreementRoom_RequestForChange(AgreementRoom_RequestForChange agreementRoomRequestForChange);
}