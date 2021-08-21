import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller =
        new AnimationController(duration: Duration(seconds: 1), vsync: this)
          ..addListener(() => setState(() {}));
    animation = Tween(begin: -500.0, end: 0.0).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Container(
        child: Stack(
          children: [
            Positioned(
              // top:0,
              left: 0,
              right: 0,
              bottom: MediaQuery.of(context).size.height * 0.35,
              child: Transform.translate(
                offset: Offset(animation.value, 0.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Image.asset(
                    'assets/images/splash_cart.png',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
