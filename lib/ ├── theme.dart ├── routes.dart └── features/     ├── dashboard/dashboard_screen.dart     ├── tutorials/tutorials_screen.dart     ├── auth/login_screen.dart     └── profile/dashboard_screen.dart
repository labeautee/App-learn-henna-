import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tableau de bord'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              'Bienvenue sur Learn Henna',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'Apprenez les motifs traditionnels, modernes et avancés étape par étape.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            _buildMenuItem(
              context,
              title: '📚 Commencer les tutoriels',
              subtitle: 'Accédez aux leçons débutant à avancé',
              routeName: '/tutorials',
            ),
            _buildMenuItem(
              context,
              title: '⭐ Mes favoris',
              subtitle: 'Voir vos leçons enregistrées',
              routeName: '/profile',
            ),
            _buildMenuItem(
              context,
              title: '👤 Mon profil',
              subtitle: 'Modifier vos informations',
              routeName: '/profile',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context,
      {required String title,
      required String subtitle,
      required String routeName}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
      ),
    );
  }
}
