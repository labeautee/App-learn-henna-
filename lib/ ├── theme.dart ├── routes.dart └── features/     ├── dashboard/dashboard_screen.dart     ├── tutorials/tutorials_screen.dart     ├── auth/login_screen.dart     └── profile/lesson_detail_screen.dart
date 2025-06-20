// lib/features/tutorials/lesson_detail_screen.dart

import 'package:flutter/material.dart';

class LessonDetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const LessonDetailScreen({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.broken_image, size: 100),
            ),
            const SizedBox(height: 16),
            Text(description, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            const Text(
              "Étapes :",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Text("- Étape 1 : Prépare ton matériel"),
            const Text("- Étape 2 : Trace les premières lignes"),
            const Text("- Étape 3 : Complète les détails"),
            const Text("- Étape 4 : Laisse sécher et admire !"),
          ],
        ),
      ),
    );
  }
}
