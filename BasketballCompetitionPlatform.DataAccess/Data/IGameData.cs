using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public interface IGameData
{
    Task DeleteGame(int gameId);
    Task<IEnumerable<Game>> GetAllGames();
    Task<Game?> GetGame(int gameId);
    Task<Game> InsertGame(Game game);
    Task<Game> UpdateGame(Game game);
}