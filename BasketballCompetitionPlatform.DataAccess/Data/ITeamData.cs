using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public interface ITeamData
{
    Task DeleteTeam(int teamId);
    Task<Team?> GetTeam(int teamId);
    Task<IEnumerable<Team>> GetTeams();
    Task<Team> InsertTeam(Team team);
    Task<Team> UpdateTeam(Team team);
}