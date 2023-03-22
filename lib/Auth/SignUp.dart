import 'package:explore_beyound/Auth/Login.dart';
import 'package:explore_beyound/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignUpPage> {
  // final _formKey = GlobalKey<FormState>();
  // final _emailController = TextEditingController();
  // final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black.withOpacity(0.9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100,bottom: 10,left: 20),
                child: Container(
                    height: 150,
                    width: 220,
                    child: Image.asset('assets/logo.png')),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                    width: width,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        "Welcome to\nExplore Beyound",
                        style: GoogleFonts.urbanist(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    //     controller: _passwordController,
                    obscureText: true,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        hintText: 'Enter your username',
                        hintStyle: GoogleFonts.urbanist(color: Colors.white)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    //       controller: _emailController,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        hintText: 'Enter your email',
                        hintStyle: GoogleFonts.urbanist(color: Colors.white)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    //     controller: _passwordController,
                    obscureText: true,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        hintText: 'Enter your password',
                        hintStyle: GoogleFonts.urbanist(color: Colors.white)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Padding(
                  padding:  EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 50,
                    width: width,
                    decoration: BoxDecoration(
                      color: AppColors.textColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(
                        child: Text(
                          "SignIn",
                          style: GoogleFonts.urbanist(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInPage()));
                      },
                      child: Text(
                        "Already have account\nLogin here",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.urbanist(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    width: width/1.5, // make the container full width
                    height: 50, // set the container height
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      // set the container background color
                      borderRadius: BorderRadius.circular(
                          5), // set the container border radius
                    ),
                    child: InkWell(
                      onTap: () async {
                        // handle Facebook login
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(Icons.facebook,
                                color: Colors.white), // add Facebook logo icon
                          ),
                          Text(
                            'Continue with Facebook',
                            style: GoogleFonts.urbanist(color: Colors.white, fontSize: 16),
                          ), // add text for button label
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    width: width/1.5, // make the container full width
                    height: 50, // set the container height
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // set the container background color
                      borderRadius: BorderRadius.circular(
                          5), // set the container border radius
                    ),
                    child: InkWell(
                      onTap: () async {
                        // handle Facebook login
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0,left: 15),
                            child: Icon(Icons.g_mobiledata,
                                color: Colors.black), // add Facebook logo icon
                          ),
                          Text(
                            'Login with Google',
                            style: GoogleFonts.urbanist(color: Colors.black, fontSize: 16),
                          ), // add text for button label
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    width: width/1.5, // make the container full width
                    height: 50, // set the container height
                    decoration: BoxDecoration(
                      color: Colors.black,
                      // set the container background color
                      borderRadius: BorderRadius.circular(
                          5), // set the container border radius
                    ),
                    child: InkWell(
                      onTap: () async {
                        // handle Facebook login
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0,left: 15),
                            child: Icon(Icons.apple,
                                color: Colors.white), // add Facebook logo icon
                          ),
                          Text(
                            'Login with Apple',
                            style: GoogleFonts.urbanist(color: Colors.white, fontSize: 16),
                          ), // add text for button label
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
