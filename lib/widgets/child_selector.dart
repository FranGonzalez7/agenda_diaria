import 'package:agenda_diaria/theme/app_theme.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [          

          DropdownButtonHideUnderline(
            child: DropdownButton<String?>(
              iconEnabledColor: AppColors.secondary,
              value: selectedChild,

              items: [
                const DropdownMenuItem<String?>(
                  value: null,
                  child: Text(
                    'Hijos/as',
                    style: TextStyle(
                      color: AppColors.secondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ...children.map((child) {
                  return DropdownMenuItem<String>(
                    value: child,
                    child: Text(
                      child,
                      style: TextStyle(
                        color: AppColors.secondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }).toList(),
              ],
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
