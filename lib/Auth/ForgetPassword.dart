import 'package:explore_beyound/Auth/SignUp.dart';
import 'package:explore_beyound/MyNavigationBar.dart';
import 'package:explore_beyound/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ForgetPassword extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<ForgetPassword> {
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
                        "Forgot Password?",
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
                padding: EdgeInsets.only(top: 10,left: 20,right: 20),
                child: Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpPage()));
                      },
                      child: Text(
                        "We will send you an email with a link to reset your password, please enter the email associated with your account above.",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.urbanist(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.7),
                            fontWeight: FontWeight.w300),
                      ),
                    )),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyNavigationBar()));
                },
                child: Padding(
                  padding:EdgeInsets.only(top: 20,left: 20,right: 20),
                  child: Container(
                    height: 50,
                    width: width,
                    decoration: BoxDecoration(
                      color: AppColors.appBackground,
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Center(
                        child: Text(
                          "Send recovery Email",
                          style: GoogleFonts.urbanist(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 20,right: 20),
                child: Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Return to Login",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.urbanist(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
