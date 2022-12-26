namespace BasketballCompetitionPlatform.DataAccess.Models;
public class Invite
{
    public int Sender_TeamId { get; set; }
    public int Receiver_TeamId { get; set; }
    public int AgreementRoomId { get; set; }
}
