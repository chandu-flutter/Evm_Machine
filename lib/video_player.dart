import 'package:flutter/material.dart';
import 'printer.dart';

class VideoPlayerScreen extends StatelessWidget {
  const VideoPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: PrinterScreen(videoUrl: "https://chirip.in/net/jeevanreddy.mp4"),
    ));
  }
}
