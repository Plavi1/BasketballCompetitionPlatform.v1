using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public interface IEventData
{
    Task DeleteEvent(int eventId);
    Task<Event?> GetEvent(int eventId);
    Task<IEnumerable<Event>> GetEvents();
    Task<Event> InsertEvent(Event @event);
    Task<Event> UpdateEvent(Event @event);
}