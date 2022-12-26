using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public interface ITeamInEventData
{
    Task DeleteTeamInEvent(int teamId, int eventId);
    Task<TeamInEvent> InsertTeamInEvent(TeamInEvent teamInEvent);
}