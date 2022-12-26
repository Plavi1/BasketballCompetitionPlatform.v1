using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public interface IAgreementRoom_TeamLeaveData
{
    Task DeleteAgreementRoom_TeamLeave(int roomId, int teamId);
    Task<AgreementRoom_TeamLeave?> GetAgreementRoom_TeamLeave(int roomId, int teamId);
    Task<IEnumerable<AgreementRoom_TeamLeave>> GetAllAgreementRoom_TeamLeave();
    Task<AgreementRoom_TeamLeave> InsertAgreementRoom_TeamLeave(AgreementRoom_TeamLeave agreementRoomTeamLeave);
    Task<AgreementRoom_TeamLeave> UpdateAgreementRoom_TeamLeave(AgreementRoom_TeamLeave agreementRoomTeamLeave);
}