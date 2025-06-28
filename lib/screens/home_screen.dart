import 'package:agenda_diaria/theme/app_theme.dart';
import 'package:flutter/material.dart';
import '../data/mock_children.dart';
import '../models/child_model.dart';
import 'package:agenda_diaria/utils/app_constants.dart';
import '../widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedChild;
  Set<String> selectedCategories = {};
  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    final List<Child> displayedChildren =
        selectedChild == null
            ? mockChildren
            : mockChildren.where((c) => c.name == selectedChild).toList();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        title: Row(
          children: [
            ParentAvatar(),
            const SizedBox(width: 12),
            const Text(
              'Luis López',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: ChildSelector(
              selectedChild: selectedChild,
              children: kChildrenNames,
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

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          HeaderTitle(),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CategorySelector(
              categories: kEventCategories,
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
          const Divider(),
          const SizedBox(height: 8),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(bottom: 12),
              children: [
                ...displayedChildren.map(
                  (child) => EventSection(
                    child: child,
                    selectedCategories: selectedCategories,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
