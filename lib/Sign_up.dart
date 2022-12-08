import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hero/Log_in.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:hero/Home_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}
String searchString = "";

class _SignUpState extends State<SignUp> {
  void navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HomePage()));
  }

  void GotoLogin(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String get email => _emailController.text.trim();
  String get password => _passwordController.text.trim();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 43, 58, 85),
        body:

        SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                elevation: 0,
                backgroundColor: const Color.fromARGB(255, 43, 58, 85),
                title: const Text("back",
                    style: TextStyle(
                        color: Colors.white54
                    )),
                leading: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon:const Icon(Icons.arrow_back_ios,color: Colors.white54 ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30.0, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Image(image: AssetImage("images/LOGO.png"), width: 100,height: 80),
                    Text("Elite", style: TextStyle(color: Color.fromARGB(255, 242, 229, 229), fontWeight: FontWeight.w500, fontSize: 40))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50, bottom: 40, right: 20, left: 20),
                alignment: Alignment.bottomCenter,
                height: 550,
                width: 350,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 242, 229, 229),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Column(
                  children: [
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20,bottom: 10),
                                child: TextField(
                                  keyboardType: TextInputType.name,
                                  maxLines: 1,
                                  onChanged: (value) {
                                    setState(() {
                                      searchString = value.toLowerCase();
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    labelText: 'Full Name',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(255, 43, 58, 85)
                                        )
                                    ),
                                    hintText: 'Your Name',
                                    suffixIcon: Icon(Icons.person, color: Color.fromARGB(255, 43, 58, 85)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: _emailController,
                                  maxLines: 1,
                                  onChanged: (value) {
                                    setState(() {
                                      searchString = value.toLowerCase();
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    labelText: 'Email',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(255, 43, 58, 85)
                                        )
                                    ),
                                    hintText: 'user@example.com',
                                    suffixIcon: Icon(Icons.email_outlined, color: Color.fromARGB(255, 43, 58, 85)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: TextField(
                                  maxLines: 1,
                                  textInputAction: TextInputAction.done,
                                  controller: _passwordController,
                                  obscureText: true,
                                  keyboardType: TextInputType.visiblePassword,
                                  onChanged: (value) {
                                    setState(() {
                                      searchString = value.toLowerCase();
                                    });
                                  },
                                  decoration: const InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(255, 43, 58, 85)
                                          )
                                      ),
                                      hintText: 'At least 8 characters',
                                      labelText: 'Password',
                                      suffixIcon: Icon(Icons.visibility, color: Color.fromARGB(255, 43, 58, 85))
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: TextField(
                                  maxLines: 1,
                                  textInputAction: TextInputAction.done,
                                  controller: _passwordController,
                                  obscureText: true,
                                  keyboardType: TextInputType.visiblePassword,
                                  onChanged: (value) {
                                    setState(() {
                                      searchString = value.toLowerCase();
                                    });
                                  },
                                  decoration: const InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(255, 43, 58, 85)
                                          )
                                      ),
                                      hintText: 'At least 8 characters',
                                      labelText: 'Confirm Password',
                                      suffixIcon: Icon(Icons.visibility, color: Color.fromARGB(255, 43, 58, 85))
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: InkWell(
                                  onTap: () {
                                    navigateToNextScreen(context);
                                  },
                                  child: Image.asset('images/Sign up.png'),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text('Sign Up with', style: TextStyle(color: Color.fromARGB(255, 43, 58, 85), fontWeight: FontWeight.w700)),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,left: 80),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Color.fromARGB(255, 43, 58, 85),
                                        borderRadius: BorderRadius.all(Radius.circular(6)),
                                      ),
                                      height: 50,
                                      child: InkWell(
                                        onTap: () {
                                          navigateToNextScreen(context);
                                        },
                                        child: Image.asset('images/googlew.png'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15, left: 40),
                                    child: Container(
                                      width: 50,
                                      decoration: const BoxDecoration(
                                        color: Color.fromARGB(255, 43, 58, 85),
                                        borderRadius: BorderRadius.all(Radius.circular(6)),
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          navigateToNextScreen(context);
                                        },
                                        child: Image.asset('images/facebook.png'),

                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text("Already Have An Account?", style: TextStyle(color: Color.fromARGB(255, 43, 58, 85), fontWeight: FontWeight.w700)),
                                    InkWell(
                                      onTap: () {
                                        GotoLogin(context);
                                      },
                                      child: const Text(
                                        '  Login',
                                        style: TextStyle(color: Color.fromARGB(255, 206, 119, 119), fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )

    );
  }
}
