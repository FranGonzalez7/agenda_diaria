import 'package:agenda_diaria/theme/app_theme.dart';
import 'package:agenda_diaria/widgets/category_selector.dart';
import 'package:agenda_diaria/widgets/child_selector.dart';
import 'package:agenda_diaria/widgets/event_card.dart';
import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../models/child_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedChild;

  final List<String> children = ['Sansa', 'Arya', 'Bran', 'Rickon'];

  final List<String> categories = [
    'Alimentación',
    'Siestas',
    'Actividades',
    'Deposiciones',
    'Observaciones',
  ];

  Set<String> selectedCategories = {};

  String? selectedCategory;

  List<Widget> buildEventSections() {
    final List<Child> displayedChildren =
        selectedChild == null
            ? mockChildren
            : mockChildren.where((c) => c.name == selectedChild).toList();

    return displayedChildren.map((child) {
      final childEvents =
          child.events
              .where(
                (event) =>
                    selectedCategories.isEmpty ||
                    selectedCategories.contains(event.category),
              )
              .toList();

      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Text(
            child.name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.secondary,
                    spreadRadius: 4,
                    blurRadius: 0,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
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
          SizedBox(height: 10),
          Divider(),
        ],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    Child? selectedChildObject;

    try {
      selectedChildObject = mockChildren.firstWhere(
        (child) => child.name == selectedChild,
      );
    } catch (e) {
      selectedChildObject = null;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ned Stark',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: ChildSelector(
              selectedChild: selectedChild,
              children: children,
              onChanged: (value) {
                setState(() {
                  selectedChild = value;
                });
              },
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        color: AppColors.primary,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Text(
              'Kids&Clouds • 2025',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1), // fondo suave
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.primary, width: 4),
                ),
                child: Center(
                  child: Text(
                    'Agenda diaria',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 5),

          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: CategorySelector(
              categories: categories,
              selectedCategories: selectedCategories,
              onCategorySelected: (category, isSelected) {
                setState(() {
                  if (isSelected) {
                    selectedCategories.add(category);
                  } else {
                    selectedCategories.remove(category);
                  }
                });
              },
            ),
          ),
          Divider(),

          const SizedBox(height: 5),
          ...buildEventSections(),
        ],
      ),
    );
  }
}
