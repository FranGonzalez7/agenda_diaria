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
                    selectedCategory == null ||
                    event.category == selectedCategory,
              )
              .toList();

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
                boxShadow: [
                  BoxShadow(
                    color: AppColors.secondary,
                    spreadRadius: 4,
                    blurRadius: 0,
                  )
                ]
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

      bottomNavigationBar: BottomAppBar(),

      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          const Center(
            child: Text(
              'Agenda diaria',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(),
          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: CategorySelector(
              categories: categories,
              selectedCategory: selectedCategory,
              onCategorySelected: (value) {
                setState(() {
                  selectedCategory = value;
                });
              },
            ),
          ),

          const SizedBox(height: 20),
          ...buildEventSections(),
        ],
      ),
    );
  }
}
