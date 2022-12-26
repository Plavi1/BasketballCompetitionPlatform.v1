using BasketballCompetitionPlatform.DataAccess.DbAccess;
using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public class InviteData : IInviteData
{
    private readonly ISqlDataAccess _db;

    public InviteData(ISqlDataAccess db)
    {
        _db = db;
    }

    public Task<IEnumerable<Invite>> GetAllInvites() =>
        _db.LoadData<Invite, dynamic>(StoredProcedursResources.Invite_GetAll, new { });

    public Task<IEnumerable<Invite>> GetAllInvites_ForAgreementRoom(int agreementRoomId) =>
        _db.LoadData<Invite, dynamic>(StoredProcedursResources.Invite_GetAll_ForAgreementRoomId, new { AgreementRoomId = agreementRoomId });

    public Task<IEnumerable<Invite>> GetAllInvites_TeamIdReceived(int receiverTeamId) =>
        _db.LoadData<Invite, dynamic>(StoredProcedursResources.Invite_GetAll_TeamIdReceived, new { Receiver_TeamId = receiverTeamId });

    public Task<IEnumerable<Invite>> GetAllInvites_TeamIdSended(int senderTeamId) =>
       _db.LoadData<Invite, dynamic>(StoredProcedursResources.Invite_GetAll_TeamIdSended, new { Sender_TeamId = senderTeamId });

    public async Task<Invite?> GetInvite(int senderTeamId, int receiverTeamId, int agreementRoomId)
    {
        var result = await _db.LoadData<Invite, dynamic>(
            StoredProcedursResources.Invite_Get,
            new { Sender_TeamId = senderTeamId, Receiver_TeamId = receiverTeamId, AgreementRoomId = agreementRoomId });
        return result.FirstOrDefault();
    }

    public async Task<Invite> InsertInvite(Invite invite)
    {
        await _db.SaveData(StoredProcedursResources.Invite_Insert, new
        {
            invite.Sender_TeamId,
            invite.Receiver_TeamId,
            invite.AgreementRoomId
        });

        return invite;
    }


    public async Task<Invite> UpdateInvite(Invite invite)
    {
        await _db.SaveData(StoredProcedursResources.Invite_Update, invite);

        return invite;
    }
    public Task DeleteInvite(Invite invite) =>
        _db.SaveData(StoredProcedursResources.Invite_Delete, invite);
}
