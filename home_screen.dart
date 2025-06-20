// lib/features/home/home_screen.dart

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Bienvenue dans Learn Henna',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            'Choisissez une catégorie pour commencer à apprendre :',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          _buildCategoryTile(context, 'Débutant', '/tutorials'),
          _buildCategoryTile(context, 'Intermédiaire', '/tutorials'),
          _buildCategoryTile(context, 'Avancé', '/tutorials'),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            icon: const Icon(Icons.favorite),
            label: const Text("Voir mes favoris"),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryTile(BuildContext context, String title, String route) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }
}
