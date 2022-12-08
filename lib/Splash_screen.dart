import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hero/Get_start.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState() ;

    Timer(const Duration(seconds: 4),() =>
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const GetStarted())));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 58, 85),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/LOGO.png"),
              const Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Text("Elite", style: TextStyle(color: Color.fromARGB(255, 232, 196, 196), fontWeight: FontWeight.w700, fontSize: 50)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
