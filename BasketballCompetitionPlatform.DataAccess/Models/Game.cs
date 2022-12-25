namespace BasketballCompetitionPlatform.DataAccess.Models;
public class Game
{
    public int Id { get; set; }
    public DateTime DateTimeOfGame { get; set; }
    public int BasketballCourt { get; set; }
    public bool IsGameFinished { get; set; }
}
