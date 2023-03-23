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
                      padding : EdgeInsets.fromLTRB(20, 70, 0, 0),
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
                                      text: isSignupScreen == 1 ? 'to EOS chat!' : "back",
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
                              isSignupScreen == 1 ? 'Signup to continue' : 'Signin to continue',
                              style: TextStyle(
                                letterSpacing: 1.0,
                                  fontSize: 14,
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
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                    height: isSignupScreen == 1 ? 320 : 280,
                    width: 460,//////////////////////////////////////
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17),
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
                                  isSignupScreen = 0;
                                });
                              },
                              child: Column(
                                children: [
                                  Text(
                                    'LOGIN',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: isSignupScreen == 0 ? FontWeight.bold : FontWeight.normal,
                                      color: isSignupScreen == 0 ? Palette.activeColor : Palette.textColor1,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    height: 2,
                                    width: 55,
                                    color: isSignupScreen == 0 ? Colors.green : Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  isSignupScreen = 1;
                                });
                              },
                              child: Column(
                                children: [
                                  Text(
                                    'SIGNUP',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: isSignupScreen == 1 ? FontWeight.bold : FontWeight.normal,
                                      color: isSignupScreen == 1 ? Palette.activeColor : Palette.textColor1,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    height: 2,
                                    width: 55,
                                    color: isSignupScreen == 1 ? Colors.green : Colors.white,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 15,),
                        Column(
                          children: [
                            isSignupScreen == 1 ? Container(
                              child: Form(
                                child: Stack(
                                  children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                        //icon: (Icons.login_outlined, color: Palette.iconColor,),
                                          prefixIcon: Icon(Icons.tag_faces, color: Palette.iconColor,),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Palette.textColor1),
                                            borderRadius: BorderRadius.circular(35),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Palette.textColor1),
                                            borderRadius: BorderRadius.circular(35),
                                          ),
                                          hintText: "User name",
                                          hintStyle: TextStyle(
                                            color: Palette.iconColor,
                                            fontSize: 13,
                                          )
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                                : Container(),
                            SizedBox(height: 5,),
                            Container(
                              child: Form(
                                child: Stack(
                                  children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                        //icon: (Icons.login_outlined, color: Palette.iconColor,),
                                          prefixIcon: Icon(Icons.email, color: Palette.iconColor,),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Palette.textColor1),
                                            borderRadius: BorderRadius.circular(35),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Palette.textColor1),
                                            borderRadius: BorderRadius.circular(35),
                                          ),
                                          hintText: "email",
                                          hintStyle: TextStyle(
                                            color: Palette.iconColor,
                                            fontSize: 13,
                                          )
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              child: Form(
                                child: Stack(
                                  children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                        //icon: (Icons.login_outlined, color: Palette.iconColor,),
                                          prefixIcon: Icon(Icons.lock, color: Palette.iconColor,),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Palette.textColor1),
                                            borderRadius: BorderRadius.circular(35),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Palette.textColor1),
                                            borderRadius: BorderRadius.circular(35),
                                          ),
                                          hintText: "password",
                                          hintStyle: TextStyle(
                                            color: Palette.iconColor,
                                            fontSize: 13,
                                          )
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )

                      ],
                    ),
                  )
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeIn,
                top: isSignupScreen == 1 ? 430 : 390,
                right : 0,
                left: 0,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.lightGreen, Colors.green],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                        ),
                        borderRadius: BorderRadius.circular((30)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1)
                          )
                        ]
                      ),
                      child: Icon(Icons.arrow_forward_rounded, color: Colors.white,),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 620,
                  right: 0,
                  left: 0,
                  child: Column(
                    children: [
                      Text( isSignupScreen == 1 ? "or Signup with" : "or Signin with",),
                      SizedBox(height: 10),
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        label: Text("Google"),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          minimumSize: Size(155, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          backgroundColor: Palette.googleColor
                        ),
                      )
                    ],
                  )
              )
            ],
          )
    );
  }
}




