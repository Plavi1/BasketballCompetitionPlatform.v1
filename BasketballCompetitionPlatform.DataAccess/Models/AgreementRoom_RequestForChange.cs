namespace BasketballCompetitionPlatform.DataAccess.Models;
public class AgreementRoom_RequestForChange
{
    public int TeamId { get; set; }
    public int AgreementRoomId { get; set; }
    public TimeOnly NewTime { get; set; }
    public DateOnly NewDate { get; set; }
    public int NewBasketballCourt { get; set; }
    public bool IsAccepted { get; set; }
}
