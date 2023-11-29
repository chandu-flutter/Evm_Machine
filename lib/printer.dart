import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PrinterScreen extends StatefulWidget {
  PrinterScreen({super.key, required this.videoUrl});
  final String videoUrl;

  @override
  State<PrinterScreen> createState() => _PrinterScreenState();
}

class _PrinterScreenState extends State<PrinterScreen> {
  late VideoPlayerController _videoplayercontroller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // TODO: implement initState
    _videoplayercontroller = VideoPlayerController.network(widget.videoUrl);
    _initializeVideoPlayerFuture =
        _videoplayercontroller.initialize().then((_) {
      _videoplayercontroller.play();
      _videoplayercontroller.setLooping(false);

      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _videoplayercontroller.value.aspectRatio,
              child: VideoPlayer(_videoplayercontroller),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
