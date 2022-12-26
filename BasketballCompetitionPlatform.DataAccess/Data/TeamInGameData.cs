using BasketballCompetitionPlatform.DataAccess.DbAccess;
using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public class TeamInGameData : ITeamInGameData
{
    private readonly ISqlDataAccess _db;

    public TeamInGameData(ISqlDataAccess db)
    {
        _db = db;
    }

    public async Task<TeamInGame> InsertTeamInGame(TeamInGame teamInGame)
    {
        await _db.SaveData(StoredProcedursResources.TeamInGame_Insert, new
        {
            teamInGame.GameId,
            teamInGame.TeamId
        });

        return teamInGame;
    }

    public Task DeleteTeamInGame(int teamId, int gameId) =>
        _db.SaveData(StoredProcedursResources.TeamInGame_Delete, new { TeamId = teamId, GameId = gameId });
}
