using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public interface IInviteData
{
    Task DeleteInvite(Invite invite);
    Task<IEnumerable<Invite>> GetAllInvites();
    Task<IEnumerable<Invite>> GetAllInvites_ForAgreementRoom(int agreementRoomId);
    Task<IEnumerable<Invite>> GetAllInvites_TeamIdReceived(int receiverTeamId);
    Task<IEnumerable<Invite>> GetAllInvites_TeamIdSended(int senderTeamId);
    Task<Invite?> GetInvite(int senderTeamId, int receiverTeamId, int agreementRoomId);
    Task<Invite> InsertInvite(Invite invite);
    Task<Invite> UpdateInvite(Invite invite);
}