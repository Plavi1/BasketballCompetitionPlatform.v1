using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public interface IVoteData
{
    Task DeleteVote(int senderTeamId, int receiverTeamId, int gameId);
    Task<IEnumerable<Vote>> GetAllVotes();
    Task<IEnumerable<Vote>> GetAllVotesForGameId(int gameId);
    Task<IEnumerable<Vote>> GetAllVotesTeamIdReceived(int receiverTeamId);
    Task<IEnumerable<Vote>> GetAllVotesTeamIdSended(int senderTeamId);
    Task<Vote?> GetVote(int senderTeamId, int receiverTeamId, int gameId);
    Task<Vote> InsertVote(Vote vote);
    Task<Vote> UpdateVote(Vote vote);
}