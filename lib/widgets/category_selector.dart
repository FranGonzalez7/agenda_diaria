import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  final List<String> categories;
  final Set<String> selectedCategories;
  final void Function(String category, bool selected) onCategorySelected;

  const CategorySelector({
    super.key,
    required this.categories,
    required this.selectedCategories,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((category) {
          final isSelected = selectedCategories.contains(category);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: FilterChip(
              side: BorderSide(
                color: isSelected ? Colors.transparent : Colors.grey,
              ),
              label: Text(
                category,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black
                ),),
              selected: isSelected,
              checkmarkColor: Colors.white,
              selectedColor: Theme.of(context).primaryColor,
              onSelected: (selected) {
                onCategorySelected(category, selected);
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
