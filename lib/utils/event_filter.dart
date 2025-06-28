// lib/utils/event_filter.dart
import 'package:agenda_diaria/models/child_model.dart';
import 'package:agenda_diaria/models/event_model.dart';

List<Event> filterEvents(Child child, Set<String> selectedCategories) {
  return child.events.where((event) {
    return selectedCategories.isEmpty || selectedCategories.contains(event.category);
  }).toList();
}
