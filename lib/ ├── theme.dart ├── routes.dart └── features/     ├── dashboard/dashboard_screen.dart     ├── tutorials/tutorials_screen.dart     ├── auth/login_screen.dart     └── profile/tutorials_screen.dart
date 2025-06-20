import 'package:flutter/material.dart';
import '../../../widgets/youtube_video.dart';
import '../../../widgets/local_video_player.dart';

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
            videoUrl: 'https://www.youtube.com/watch?v=6LhCm9G7gRk',
          ),
          SizedBox(height: 24),

          Text(
            '📁 Tutoriel Vidéo Locale',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          LocalVideoPlayer(videoPath: 'assets/videos/tutorial1.mp4'),
        ],
      ),
    );
  }
}
