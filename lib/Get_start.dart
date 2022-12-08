import 'package:flutter/material.dart';
import 'package:hero/Log_in.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {

  void navigateToNextScreen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/start_screen.png"),
            fit: BoxFit.fill,

          ),
        ),
        child: Padding(
          padding:const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/LOGO.png",
                width: 180,
                height: 180,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 80.0,horizontal: 20.0),
                child: DefaultTextStyle(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45.0,
                  ),
                  child: Text(
                    "\t\tWelcome to\n Elite", style: TextStyle(color: Color.fromARGB(255, 232, 196, 196), fontWeight: FontWeight.w700, fontSize: 50),
                  ),
                ),
              ),
              const DefaultTextStyle(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color.fromARGB(255, 43, 58, 85), fontSize: 16.0, fontWeight: FontWeight.w500),
                  child: Text("Your present circumstances don't determine\nwhere you can go, they merely determine\nwhere you start ")),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0,horizontal: 50.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 206, 119, 119),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: MaterialButton(
                          child: const Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            navigateToNextScreen(context);
                          })),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
