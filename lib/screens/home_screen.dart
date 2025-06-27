import 'package:agenda_diaria/theme/app_theme.dart';
import 'package:flutter/material.dart';
import '../data/mock_children.dart';
import '../models/child_model.dart';
import 'package:agenda_diaria/app_constants.dart';
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
              'Stu Pickles',
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

      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          HeaderTitle(),

          SizedBox(height: 5),

          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
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
          Divider(),

          const SizedBox(height: 5),

          ...displayedChildren.map(
            (child) => EventSection(
              child: child,
              selectedCategories: selectedCategories,
            ),
          ),
        ],
      ),
    );
  }
}
