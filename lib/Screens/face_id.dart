import 'package:flutter/material.dart';
import '../Utils/style.dart';

class FaceId extends StatefulWidget {
  const FaceId({super.key});

  @override
  State<FaceId> createState() => _FaceIdState();
}

class _FaceIdState extends State<FaceId> {
  @override
  void initState() {
    // This method is called when the widget is first created.
    // It's a good place to perform one-time initialization tasks.
    super.initState();
    
    // Delayed navigation to the 'FingerprintScreen' after 3 seconds.
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/fingerprint');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          // Background image
          Stack(children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Face.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ]),
          // Content on top of the background image
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 237,
              decoration: BoxDecoration(
                  color: Style.background,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
              child: Column(children: [
                const SizedBox(
                  height: 35,
                ),
                Text(
                  'Look Left',
                  style: Style.headTextStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Keep your face in the frame',
                  style: Style.bodyTextStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Image(image: AssetImage('assets/Group 4114.png')),
              ]),
            ),
          ),
        ],
      ),
    ));
  }
}
