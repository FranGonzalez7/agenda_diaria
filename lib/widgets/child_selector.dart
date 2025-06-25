// lib/widgets/child_selector.dart
import 'package:flutter/material.dart';

class ChildSelector extends StatelessWidget {

  final String? selectedChild;
  final List<String> children;
  final void Function(String?) onChanged;

  const ChildSelector({
    Key? key,
    required this.selectedChild,
    required this.children,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Hijo/a:", style: TextStyle(fontSize: 16)),
        const SizedBox(width: 16),
        DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: selectedChild,
            hint: const Text('Seleccionar'),
            items: children.map((child) {
              return DropdownMenuItem(
                value: child,
                child: Text(child),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
