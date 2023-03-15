import 'package:flutter/material.dart';
import '../config/palette.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  int isSignupScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Palette.backgroundColor,
          body: Stack(
            children: [
              Positioned(
                top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Container(
                      padding : EdgeInsets.fromLTRB(20, 90, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Welcome ',
                                      style : TextStyle(
                                        letterSpacing: 1.0,
                                          fontSize: 25,
                                          color: Colors.white,
                                      ),
                                  ),
                                  TextSpan(
                                      text: 'to EOS chat',
                                      style: TextStyle(
                                        letterSpacing: 1.0,
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      )
                                  )
                                ]
                              ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                              'Signup to continue',
                              style: TextStyle(
                                letterSpacing: 1.0,
                                  fontSize: 10,
                                color: Colors.white
                              )
                          )
                        ],
                      ),
                    )
                  )
              ),
              Positioned(
                top: 150,
                  child: Container(
                    height: 280.0,
                    width: 460,//////////////////////////////////////
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 5,
                        )
                      ]
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  isSignupScreen = 1;
                                });
                              },
                              child: Column(
                                children: [
                                  Text(
                                    'LOGIN',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: isSignupScreen == 0 ? FontWeight.normal : FontWeight.bold,
                                      color: isSignupScreen == 0 ? Palette.textColor1 : Palette.activeColor
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    height: 2,
                                    width: 55,
                                    color: isSignupScreen == 0 ? Colors.white : Colors.green,
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  isSignupScreen = 0;
                                });
                              },
                              child: Column(
                                children: [
                                  Text(
                                    'SIGNUP',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: isSignupScreen == 1 ? FontWeight.normal : FontWeight.bold,
                                      color: isSignupScreen == 1 ? Palette.textColor1 : Palette.activeColor,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    height: 2,
                                    width: 55,
                                    color: isSignupScreen == 1 ? Colors.white : Colors.green,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          child: Form(
                            child: Stack(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    //icon: (Icons.login_outlined, color: Palette.iconColor,),
                                    prefixIcon: Icon(Icons.login_outlined, color: Palette.iconColor,),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Palette.textColor1),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Palette.textColor1),
                                      borderRadius: BorderRadius.circular(35),
                                    )
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              )
            ],
          )
    );
  }
}




