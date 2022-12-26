namespace BasketballCompetitionPlatform.DataAccess.Models;
public class AgreementRoom
{
    public int Id { get; set; }
    public DateTime CreationDateTime { get; set; }
    public DateOnly Date { get; set; }
    public TimeOnly Time { get; set; }
    public int BasketballCourt { get; set; }
    public int NumberOfPlayersInRoom { get; set; }
    public int NumberOfTimeRequestChangedAccepted { get; set; }
    public bool IsPublicAgreementRoom { get; set; }
    public bool IsGameComfirmed { get; set; }
    public bool IsGameFinished { get; set; }
}
