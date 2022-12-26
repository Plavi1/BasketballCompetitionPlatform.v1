using BasketballCompetitionPlatform.DataAccess.DbAccess;
using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public class BasketballCourtData : IBasketballCourtData
{
    private readonly ISqlDataAccess _db;

    public BasketballCourtData(ISqlDataAccess db)
    {
        _db = db;
    }

    public Task<IEnumerable<BasketballCourt>> GetBasketballCourt() =>
        _db.LoadData<BasketballCourt, dynamic>(StoredProcedursResources.BasketballCourt_GetAll, new { });

    public async Task<BasketballCourt?> GetBasketballCourt(int basketballCourtId)
    {
        var result = await _db.LoadData<BasketballCourt, dynamic>(
            StoredProcedursResources.BasketballCourt_Get,
            new { Id = basketballCourtId });
        return result.FirstOrDefault();
    }

    public async Task<BasketballCourt> InsertBasketballCourt(BasketballCourt basketballCourt)
    {
        await _db.SaveData(StoredProcedursResources.BasketballCourt_Insert, new
        {
            basketballCourt.Id,
            basketballCourt.Name,
            basketballCourt.QRCode
        });

        return basketballCourt;
    }


    public async Task<BasketballCourt> UpdateBasketballCourt(BasketballCourt basketballCourt)
    {
        await _db.SaveData(StoredProcedursResources.BasketballCourt_Update, basketballCourt);

        return basketballCourt;
    }
    public Task DeleteBasketballCourt(int basketballCourtId) =>
        _db.SaveData(StoredProcedursResources.BasketballCourt_Delete, new { Id = basketballCourtId });
}
