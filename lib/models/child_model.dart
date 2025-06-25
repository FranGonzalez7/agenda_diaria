import 'event_model.dart';

class Child {
  final String name;
  final String imageUrl;
  final List<Event> events;

  Child({
    required this.name,
    required this.imageUrl,
    required this.events,
  });
}
