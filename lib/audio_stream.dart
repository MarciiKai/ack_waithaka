// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

// class AudioPlayerPage extends StatefulWidget {
//   const AudioPlayerPage({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _AudioPlayerPageState createState() => _AudioPlayerPageState();
// }

// class _AudioPlayerPageState extends State<AudioPlayerPage> {
//   final AudioPlayer audioPlayer = AudioPlayer();

//   @override
//   void initState() {
//     super.initState();
//     audioPlayer.play('assets/my_audio.mp3' as Source);
//   }

//   @override
//   void dispose() {
//     audioPlayer.stop();
//     audioPlayer.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Audio Player'),
//       ),
//       body: const Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(
//               Icons.music_note,
//               size: 100,
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Playing Audio...',
//               style: TextStyle(fontSize: 20),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
