import 'package:e_commerce_app/core/utils/enums/sort.dart';
import 'package:flutter/material.dart';

class SortPopupMenu extends StatelessWidget {
  SortPopupMenu({
    super.key,
    required this.sorts,
    required this.selectedSort,
    required this.onSelected,
  });

  final Map<Sort, String> sorts;
  final Sort? selectedSort;
  final ValueChanged<Sort?> onSelected;

  final clearSort = Sort.clear();

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.sort),
      initialValue: selectedSort,
      itemBuilder: (BuildContext context) => [
        ...sorts.entries
            .map(
              (e) => PopupMenuItem<Sort>(
                value: e.key,
                child: Text(e.value),
              ),
            )
            .toList(),
        PopupMenuItem<Sort>(
          value: clearSort,
          child: const Text('Clear sort'),
        ),
      ],
      onSelected: (value) => onSelected(value == clearSort ? null : value),
    );
  }
}
