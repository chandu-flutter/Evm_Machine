import 'package:flutter/material.dart';
import 'package:politics/fb.dart';
import 'package:politics/insta.dart';
import 'package:politics/splash.dart';
import 'package:politics/twi.dart';
import 'package:politics/vote_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          child: Image(
            image: AssetImage('images/demo.jpg'),
          ),
        ),
        Container(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const VoteScreen();
                  },
                ),
              );
            },
            child: Image(
              image: AssetImage('images/evm_vote.png'),
              width: 240,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const FacebookScreen();
                      },
                    ),
                  );
                },
                child: Image(
                  image: AssetImage('images/Facebook.png'),
                  width: 70,
                  height: 50,
                ),
              ),
            ),
            Container(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const InstaScreen();
                      },
                    ),
                  );
                },
                child: Image(
                  image: AssetImage('images/Instagram.png'),
                  width: 70,
                  height: 50,
                ),
              ),
            ),
            Container(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const TwitterScreen();
                      },
                    ),
                  );
                },
                child: Image(
                  image: AssetImage('images/Twitter.png'),
                  width: 70,
                  height: 50,
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
