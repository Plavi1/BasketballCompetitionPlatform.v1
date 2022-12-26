using BasketballCompetitionPlatform.DataAccess.DbAccess;
using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public class VoteData : IVoteData
{
    private readonly ISqlDataAccess _db;

    public VoteData(ISqlDataAccess db)
    {
        _db = db;
    }

    public Task<IEnumerable<Vote>> GetAllVotes() =>
        _db.LoadData<Vote, dynamic>(StoredProcedursResources.Vote_GetAll, new { });

    public Task<IEnumerable<Vote>> GetAllVotesForGameId(int gameId) =>
        _db.LoadData<Vote, dynamic>(StoredProcedursResources.Vote_GetAll_ForGameId, new { GameId = gameId });

    public Task<IEnumerable<Vote>> GetAllVotesTeamIdReceived(int receiverTeamId) =>
       _db.LoadData<Vote, dynamic>(StoredProcedursResources.Vote_GetAll_TeamIdReceived, new { Receiver_TeamId = receiverTeamId });

    public Task<IEnumerable<Vote>> GetAllVotesTeamIdSended(int senderTeamId) =>
   _db.LoadData<Vote, dynamic>(StoredProcedursResources.Vote_GetAll_TeamIdSended, new { Sender_TeamId = senderTeamId });

    public async Task<Vote?> GetVote(int senderTeamId, int receiverTeamId, int gameId)
    {
        var result = await _db.LoadData<Vote, dynamic>(
            StoredProcedursResources.Vote_Get,
            new { Sender_TeamId = senderTeamId, Receiver_TeamId = receiverTeamId, GameId = gameId });
        return result.FirstOrDefault();
    }

    public async Task<Vote> InsertVote(Vote vote)
    {
        await _db.SaveData(StoredProcedursResources.Vote_Insert, new
        {
            vote.Sender_TeamId,
            vote.Receiver_TeamId,
            vote.Points,
            vote.GameId
        });

        return vote;
    }

    public async Task<Vote> UpdateVote(Vote vote)
    {
        await _db.SaveData(StoredProcedursResources.Vote_Update, vote);

        return vote;
    }
    public Task DeleteVote(int senderTeamId, int receiverTeamId, int gameId) =>
        _db.SaveData(StoredProcedursResources.Team_Delete, new { Sender_TeamId = senderTeamId, Receiver_TeamId = receiverTeamId, GameId = gameId });
}
