import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String category;

  const CategoryChip({required this.category});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(category),
      backgroundColor: Colors.blueGrey[100],
    );
  }
}
