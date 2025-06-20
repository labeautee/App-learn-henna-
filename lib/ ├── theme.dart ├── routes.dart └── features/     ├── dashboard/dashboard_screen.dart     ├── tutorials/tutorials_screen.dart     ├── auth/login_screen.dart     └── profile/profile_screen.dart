// lib/features/profile/profile_screen.dart

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  void _logout(BuildContext context) {
    // Action de déconnexion simulée
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Déconnexion réussie")),
    );

    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nom d’utilisateur : Utilisateur Test',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Email : test@example.com',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () => _logout(context),
              icon: Icon(Icons.logout),
              label: Text('Se déconnecter'),
            ),
          ],
        ),
      ),
    );
  }
}
