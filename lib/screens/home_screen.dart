import 'package:flutter/material.dart';
import 'package:ripple_wave/ripple_wave.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

late AnimationController animationController;

void start() {
  animationController.repeat();
}

void stop() {
  animationController.stop();
}

class _DemoPageState extends State<DemoPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    animationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 126, 161),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(50),
            width: 300,
            height: 200,
            child: RippleWave(
              childTween: Tween(begin: 0.2, end: 1.0),
              color: Color.fromARGB(255, 219, 87, 131),
              repeat: false,
              animationController: animationController,
              child: const Icon(
                Icons.emoji_emotions,
                size: 300,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          TextButton(
            onPressed: () {
              start();
            },
            child: const Text(
              'Durar HR',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          // const SizedBox(
          //   height: 40,
          // ),
          TextButton(
            onPressed: () {
              stop();
            },
            child: const Text(
              'The Complete HR',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
