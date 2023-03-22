import 'package:explore_beyound/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class testing extends StatefulWidget {
  const testing({Key? key}) : super(key: key);

  @override
  State<testing> createState() => _testingState();
}

class _testingState extends State<testing> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: width,
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Logout",
                textAlign: TextAlign.left,
                style: GoogleFonts.urbanist(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Are you sure you wanna logout",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.urbanist(
                      fontSize: 16,
                      color: Colors.grey.withOpacity(0.5),
                      fontWeight: FontWeight.w500),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width:150,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(vertical: 10),
                        child: Center(
                          child: Text(
                            "Confirm Logout",
                            style: GoogleFonts.urbanist(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      width:150,
                      decoration: BoxDecoration(
                        color: AppColors.appBackground,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10),
                        child: Center(
                          child: Text(
                            "Save",
                            style: GoogleFonts.urbanist(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
