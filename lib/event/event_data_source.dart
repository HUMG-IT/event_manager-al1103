import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:event_manager/event/event_model.dart';

class EventDataSource extends CalendarDataSource {
  EventDataSource(List<EventModel> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    final EventModel item = appointments![index] as EventModel;
    return item.startTime;
  }

  @override
  DateTime getEndTime(int index) {
    final EventModel item = appointments![index] as EventModel;
    return item.endTime;
  }

  @override
  String getSubject(int index) {
    final EventModel item = appointments![index] as EventModel;
    return item.subject;
  }

  @override
  String? getNotes(int index) {
    final EventModel item = appointments![index] as EventModel;
    return item.notes;
  }
}
