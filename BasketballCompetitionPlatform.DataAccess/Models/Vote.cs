namespace BasketballCompetitionPlatform.DataAccess.Models;
public class Vote
{
    public int Sender_TeamId { get; set; }
    public int Receiver_TeamId { get; set; }
    public int Points { get; set; }
    public int GameId { get; set; }
}
