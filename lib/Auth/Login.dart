import 'package:explore_beyound/Auth/ForgetPassword.dart';
import 'package:explore_beyound/Auth/SignUp.dart';
import 'package:explore_beyound/MyNavigationBar.dart';
import 'package:explore_beyound/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // final _formKey = GlobalKey<FormState>();
  // final _emailController = TextEditingController();
  // final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: Container(
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
                        "Welcome Back",
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
                      color: Colors.white.withOpacity(0.5),
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
                        hintStyle: GoogleFonts.urbanist(color: Colors.white.withOpacity(0.7))),
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
                      color: Colors.white.withOpacity(0.5),
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
                    cursorColor: Colors.white.withOpacity(0.5),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        hintText: 'Enter your password',
                        hintStyle: GoogleFonts.urbanist(color: Colors.white.withOpacity(0.7))),
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
                child: Container(
                    width: width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  ForgetPassword()));

                          },
                          child: Text(
                            "Forget Password?",
                            style: GoogleFonts.urbanist(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyNavigationBar()));
                          },
                          child: Container(
                            height: 50,
                            width: 168,
                            decoration: BoxDecoration(
                              color: AppColors.appBackground,
                              borderRadius: BorderRadius.circular(20),

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
                      ],
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpPage()));
                      },
                      child: Text(
                  "Don't have account\ncreate one her",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.urbanist(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.7),
                        fontWeight: FontWeight.w300),
                ),
                    )),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
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
