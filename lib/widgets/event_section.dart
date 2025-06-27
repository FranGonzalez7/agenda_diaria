import 'package:agenda_diaria/models/child_model.dart';
import 'package:agenda_diaria/theme/app_theme.dart';
import 'package:agenda_diaria/widgets/event_card.dart';
import 'package:flutter/material.dart';

class EventSection extends StatelessWidget {
  final Child child;
  final Set<String> selectedCategories;

  const EventSection({
    super.key,
    required this.child,
    required this.selectedCategories,
  });

  @override
  Widget build(BuildContext context) {
    final childEvents = child.events.where((event) {
      return selectedCategories.isEmpty ||
          selectedCategories.contains(event.category);
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        Text(
          child.name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.secondary,
                  spreadRadius: 4,
                  blurRadius: 0,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                child.imageUrl,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        if (childEvents.isNotEmpty)
          ...childEvents.map((event) => EventCard(event: event))
        else
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'No hay eventos para esta categoría.',
              textAlign: TextAlign.center,
            ),
          ),
        const SizedBox(height: 10),
        const Divider(),
      ],
    );
  }
}
