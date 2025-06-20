import 'package:flutter/material.dart';
import '../../../widgets/youtube_video.dart';

class TutorialsScreen extends StatelessWidget {
  const TutorialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tutoriels')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            'Vidéo tutoriel : Motif simple',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          YouTubeVideoPlayer(
            videoUrl: 'https://www.youtube.com/watch?v=6LhCm9G7gRk',
          ),
          SizedBox(height: 24),
          Text(
            'Prochaine version : liste de vidéos personnalisée 🧡',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
