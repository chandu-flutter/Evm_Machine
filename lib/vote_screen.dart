import 'package:politics/video_player.dart';
import 'package:flutter/material.dart';
import 'package:politics/printer.dart';
import 'package:audioplayers/audioplayers.dart';

class VoteScreen extends StatelessWidget {
  const VoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image(
              image: AssetImage('images/brs.jpg'),
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Positioned(
            top: 122,
            left: 250,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const VideoPlayerScreen();
                    },
                  ),
                );
              },
              child: Container(
                width: 180,
                height: 50,
                child: Image(
                  image: AssetImage('images/transparent.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    // return Scaffold(
    //   body: SafeArea(
    //     child: Container(
    //       alignment: Alignment.center,
    //       decoration: BoxDecoration(
    //         image: DecorationImage(
    //           image: AssetImage("images/machine.jpg"),
    //           fit: BoxFit.contain,
    //         ),
    //       ),
    //       child: Padding(
    //         padding: const EdgeInsets.only(bottom: 525.0, left: 285),
    //         child: InkWell(
    //           onTap: () {
    //             Navigator.push(
    //               context,
    //               MaterialPageRoute(
    //                 builder: (context) {
    //                   return VideoPlayerScreen();
    //                 },
    //               ),
    //             );
    //           },
    //           child: Row(children: [
    //             Padding(
    //               padding: const EdgeInsets.only(top: 26),
    //               child: Container(
    //                 width: 56,
    //                 height: 26,
    //                 decoration: BoxDecoration(
    //                   color: Color.fromARGB(255, 70, 141, 219),
    //                   borderRadius: BorderRadius.circular(20),
    //                   border: Border.all(
    //                     color: Color.fromARGB(255, 9, 103, 191),
    //                   ),
    //                 ),
    //               ),
    //             )
    //           ]),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
