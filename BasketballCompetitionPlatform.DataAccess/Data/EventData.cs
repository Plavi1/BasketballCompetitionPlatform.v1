using BasketballCompetitionPlatform.DataAccess.DbAccess;
using BasketballCompetitionPlatform.DataAccess.Models;

namespace BasketballCompetitionPlatform.DataAccess.Data;
public class EventData : IEventData
{
    private readonly ISqlDataAccess _db;

    public EventData(ISqlDataAccess db)
    {
        _db = db;
    }

    public Task<IEnumerable<Event>> GetEvents() =>
        _db.LoadData<Event, dynamic>(StoredProcedursResources.Event_GetAll, new { });

    public async Task<Event?> GetEvent(int eventId)
    {
        var result = await _db.LoadData<Event, dynamic>(
            StoredProcedursResources.Event_Get,
            new { Id = eventId });
        return result.FirstOrDefault();
    }

    public async Task<Event> InsertEvent(Event @event)
    {
        await _db.SaveData(StoredProcedursResources.Event_Insert, new
        {
            @event.Id,
            @event.Place,
            @event.NumberOfTeamsInEvent,
            @event.DateStart,
            @event.DateEnd,
            @event.NumberOfMatchesUntilTheEnd,
            @event.NumberOfMatchesPlayed,
            @event.IsEventFinished
        });

        return @event;
    }


    public async Task<Event> UpdateEvent(Event @event)
    {
        await _db.SaveData(StoredProcedursResources.Event_Update, @event);

        return @event;
    }
    public Task DeleteEvent(int eventId) =>
        _db.SaveData(StoredProcedursResources.Event_Delete, new { Id = eventId });

}
