namespace BasketballCompetitionPlatform.DataAccess.Models;
public class Team
{
    public int Id { get; set; }
    public string PlaceThatTheTeamRepresents { get; set; }
    public string PasswordHash { get; set; }
    public string ContactPhone { get; set; }
    public string Player1 { get; set; }
    public string Player2 { get; set; }
    public string Player3 { get; set; }
    public string Player4 { get; set; }
    public string Player5 { get; set; }
    public DateOnly DateOfRegistration { get; set; }
    public float Points { get; set; }
    public int AverageAge { get; set; }
    public bool IsInTopTeams { get; set; }

}
