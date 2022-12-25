namespace BasketballCompetitionPlatform.DataAccess.Models;
public class Event
{
    public int Id { get; set; }
    public string Place { get; set; }
    public int NumberOfTeamsInEvent { get; set; }
    public DateTime DateStart { get; set; }
    public DateTime DateEnd { get; set; }
    public int NumberOfMatchesUntilTheEnd { get; set; }
    public int NumberOfMatchesPlayed { get; set; }
    public bool IsEventFinished { get; set; }
}
