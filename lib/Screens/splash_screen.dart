import 'package:flutter/material.dart';
import 'package:newsapp/Screens/bookmark_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
          () {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (_) =>BookMark(),
          ),
              (route) => false,
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE9EEFA),
      body: Center(
        child: Text('News',style: TextStyle(
          color: Color(0xff2D5BD0),
          fontWeight: FontWeight.w700,
          fontSize: 64,
        ),),
      ),
    );
  }
}
