import 'package:authorization/Utils/style.dart';
import 'package:flutter/material.dart';

class FingerPrintScreen extends StatelessWidget {
  const FingerPrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        // Content on top of the background image
        Positioned(
            top: MediaQuery.of(context).size.height * 0.34,
            left: 42,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Fingerprint image
                Container(
                    height: 120,
                    width: 120,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Fingerprint.png'),
                            fit: BoxFit.cover))),
                const SizedBox(
                  height: 15,
                ),
                // Percentage text
                Text(
                  '28%',
                  style: TextStyle(
                      fontSize: 24,
                      color: Style.secondarTextColor,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 25,
                ),
                // 'Touch the sensor' text
                Text(
                  'Touch the sensor',
                  style: TextStyle(
                      fontSize: 24,
                      color: Style.secondarTextColor,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                // Description text
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    'Put your finger on the sensor and lift after you feel vibration.',
                    style: Style.bodyTextStyle,
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ),
                ),
              ],
            )),
        // Background images
        Positioned(
          left: 0,
          top: 0,
          child: Stack(
            children: [
              // Ellipse image
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/FingerPrintScreenEllipse.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              // StyleBackground image
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/StyleBackground.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
