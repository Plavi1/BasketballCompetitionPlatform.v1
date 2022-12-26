using BasketballCompetitionPlatform.DataAccess.DbAccess;
using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public class TeamInEventData : ITeamInEventData
{
    private readonly ISqlDataAccess _db;

    public TeamInEventData(ISqlDataAccess db)
    {
        _db = db;
    }

    public async Task<TeamInEvent> InsertTeamInEvent(TeamInEvent teamInEvent)
    {
        await _db.SaveData(StoredProcedursResources.TeamInEvent_Insert, new
        {
            teamInEvent.TeamId,
            teamInEvent.EventId
        });

        return teamInEvent;
    }

    public Task DeleteTeamInEvent(int teamId, int eventId) =>
        _db.SaveData(StoredProcedursResources.TeamInEvent_Delete, new { TeamId = teamId, EventId = eventId });
}
