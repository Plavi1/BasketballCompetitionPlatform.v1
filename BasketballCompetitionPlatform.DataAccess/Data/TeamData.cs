using BasketballCompetitionPlatform.DataAccess.DbAccess;
using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public class TeamData : ITeamData
{
    private readonly ISqlDataAccess _db;

    public TeamData(ISqlDataAccess db)
    {
        _db = db;
    }

    public Task<IEnumerable<Team>> GetTeams() =>
        _db.LoadData<Team, dynamic>(StoredProcedursResources.Team_GetAll, new { });

    public async Task<Team?> GetTeam(int teamId)
    {
        var result = await _db.LoadData<Team, dynamic>(
            StoredProcedursResources.Team_Get,
            new { Id = teamId });
        return result.FirstOrDefault();
    }

    public async Task<Team> InsertTeam(Team team)
    {
        await _db.SaveData(StoredProcedursResources.Team_Insert, new
        {
            team.Id,
            team.PlaceThatTheTeamRepresents,
            team.PasswordHash,
            team.ContactPhone,
            team.Player1,
            team.Player2,
            team.Player3,
            team.Player4,
            team.Player5,
            team.DateOfRegistration,
            team.Points,
            team.AverageAge,
            team.IsInTopTeams
        });

        return team;
    }


    public async Task<Team> UpdateTeam(Team team)
    {
        await _db.SaveData(StoredProcedursResources.Team_Update, team);

        return team;
    }
    public Task DeleteTeam(int teamId) =>
        _db.SaveData(StoredProcedursResources.Team_Delete, new { Id = teamId });
}
