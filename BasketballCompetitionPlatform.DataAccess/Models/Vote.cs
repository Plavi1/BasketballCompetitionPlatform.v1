namespace BasketballCompetitionPlatform.DataAccess.Models;
public class Vote
{
    public int TeamId { get; set; }
    public int GivesTo_TeamId { get; set; }
    public int Points { get; set; }
    public int GameId { get; set; }
}
