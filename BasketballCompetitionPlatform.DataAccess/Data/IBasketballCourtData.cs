using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public interface IBasketballCourtData
{
    Task DeleteBasketballCourt(int basketballCourtId);
    Task<IEnumerable<BasketballCourt>> GetBasketballCourt();
    Task<BasketballCourt?> GetBasketballCourt(int basketballCourtId);
    Task<BasketballCourt> InsertBasketballCourt(BasketballCourt basketballCourt);
    Task<BasketballCourt> UpdateBasketballCourt(BasketballCourt basketballCourt);
}