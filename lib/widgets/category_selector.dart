// lib/widgets/category_selector.dart
import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  final List<String> categories;
  final String? selectedCategory;
  final void Function(String?) onCategorySelected;

  const CategorySelector({
    super.key,
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...categories.map((category) {
            final isSelected = selectedCategory == category;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ChoiceChip(
                side: BorderSide(
                  color:
                      isSelected
                          ? Colors.blueAccent
                          : Colors.grey,
                ),
                label: Text(category),
                selected: isSelected,
                onSelected: (_) {
                  onCategorySelected(isSelected ? null : category);
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
