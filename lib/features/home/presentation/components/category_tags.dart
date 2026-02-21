import 'package:flutter/material.dart';

class CategoryTags extends StatelessWidget {
  final List<String> tags;
  const CategoryTags({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: tags.map((tag) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.08),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.white10),
        ),
        child: Text(tag, style: const TextStyle(color: Colors.white, fontSize: 13)),
      )).toList(),
    );
  }
}