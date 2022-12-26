using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public interface ITeamInGameData
{
    Task DeleteTeamInGame(int teamId, int gameId);
    Task<TeamInGame> InsertTeamInGame(TeamInGame teamInGame);
}