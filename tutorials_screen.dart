import 'package:flutter/material.dart';
import '../../../widgets/youtube_video.dart';

class TutorialsScreen extends StatelessWidget {
  const TutorialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tutoriels Henné')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            '🎥 Tutoriel YouTube',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          YouTubeVideoPlayer(
            videoUrl: 'https://www.youtube.com/watch?v=CbNWJiKjXRE',
          ),
          SizedBox(height: 24),
          Text(
            'À suivre : tutoriels hors-ligne bientôt disponibles 📁',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
