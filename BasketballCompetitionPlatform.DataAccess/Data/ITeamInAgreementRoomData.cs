using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public interface ITeamInAgreementRoomData
{
    Task DeleteTeamInAgreementRoom(int teamId, int agreementRoomId);
    Task<TeamInAgreementRoom> InsertTeamInAgreementRoom(TeamInAgreementRoom teamInAgreementRoom);
}