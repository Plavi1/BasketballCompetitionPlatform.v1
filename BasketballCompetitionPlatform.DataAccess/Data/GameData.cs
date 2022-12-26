using BasketballCompetitionPlatform.DataAccess.DbAccess;
using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public class GameData : IGameData
{
    private readonly ISqlDataAccess _db;

    public GameData(ISqlDataAccess db)
    {
        _db = db;
    }

    public Task<IEnumerable<Game>> GetAllGames() =>
        _db.LoadData<Game, dynamic>(StoredProcedursResources.Game_GetAll, new { });

    public async Task<Game?> GetGame(int gameId)
    {
        var result = await _db.LoadData<Game, dynamic>(
            StoredProcedursResources.Game_Get,
            new { Id = gameId });
        return result.FirstOrDefault();
    }

    public async Task<Game> InsertGame(Game game)
    {
        await _db.SaveData(StoredProcedursResources.Game_Insert, new
        {
            game.Id,
            game.DateTimeOfGame,
            game.BasketballCourt,
            game.IsGameFinished
        });

        return game;
    }


    public async Task<Game> UpdateGame(Game game)
    {
        await _db.SaveData(StoredProcedursResources.Game_Update, game);

        return game;
    }
    public Task DeleteGame(int gameId) =>
        _db.SaveData(StoredProcedursResources.Game_Delete, new { Id = gameId });
}
