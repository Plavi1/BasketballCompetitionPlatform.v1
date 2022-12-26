namespace BasketballCompetitionPlatform.DataAccess.Models;
public class TeamInAgreementRoom
{
    public int TeamId { get; set; }
    public int AgreementRoomId { get; set; }
    public bool IsCreator { get; set; }
    public bool IsTeamAcceptedTheAgreement { get; set; }
}
