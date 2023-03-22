import 'package:explore_beyound/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LocationDetails extends StatefulWidget {
  const LocationDetails({Key? key}) : super(key: key);

  @override
  State<LocationDetails> createState() => _LocationDetailsState();
}

class _LocationDetailsState extends State<LocationDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Container(
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 70,left: 20,right: 20),
                    child: Container(
                      width: width,
                      height: 240,
                      decoration: BoxDecoration(

                        color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage('assets/bridge.jpg'),
                          fit: BoxFit
                              .cover, // specify how the image should be positioned and scaled
                        ),
                      ),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap:(){
                              Navigator.of(context).pop();
                          },
                            child: Padding(
                              padding: EdgeInsets.only(left: 20,top: 10),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                  ),
                                  color: Colors.transparent.withOpacity(0.2),

                                ),
                                child: Icon(Icons.arrow_back,color: Colors.white,),
                              ),
                            ),
                          ),
                        ],


                      ),
                      //child: Image.asset("assets/bridge.jpg",fit: BoxFit.fill,)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Title",
                          style: GoogleFonts.urbanist(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.check,
                              color: AppColors.appBackground,
                            ),
                            Icon(
                              Icons.favorite,
                              color: AppColors.appBackground,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey.withOpacity(0.5),
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey.withOpacity(0.5),
                              size: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "2.2",
                              style: GoogleFonts.urbanist(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 15, left: 20, right: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Description",
                              style: GoogleFonts.urbanist(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "What other explorer says",
              textAlign: TextAlign.left,
              style: GoogleFonts.urbanist(
                  fontSize: 20,
                  color: Colors.grey.withOpacity(0.5),
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding:EdgeInsets.only(left: 15,right: 15,top: 10),
            child: Stack(
            alignment: AlignmentDirectional.bottomStart,
              clipBehavior: Clip.none,
             children: [
               Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(20.0),
                     topRight: Radius.circular(20.0),
                     bottomRight: Radius.circular(20.0),
                     bottomLeft: Radius.circular(20.0),
                   ),
                   color: Colors.black,

                 ),
                 child: Column(
                   children: [

                     Padding(
                       padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                               Icon(
                                 Icons.star,
                                 color: Colors.yellow,
                                 size: 18,
                               ),
                               Icon(
                                 Icons.star,
                                 color: Colors.yellow,
                                 size: 18,
                               ),
                               Icon(
                                 Icons.star,
                                 color: Colors.yellow,
                                 size: 18,
                               ),
                               Icon(
                                 Icons.star,
                                 color: Colors.grey.withOpacity(0.5),
                                 size: 18,
                               ),
                               Icon(
                                 Icons.star,
                                 color: Colors.grey.withOpacity(0.5),
                                 size: 18,
                               ),
                               SizedBox(
                                 width: 10,
                               ),
                               Text(
                                 "2.2",
                                 style: GoogleFonts.urbanist(
                                     fontSize: 18,
                                     color: Colors.white,
                                     fontWeight: FontWeight.w600),
                               ),
                             ],
                           ),
                           Container(
                             width: 50.0,
                             height: 50.0,
                             decoration: BoxDecoration(
                               color: Colors.white,
                               shape: BoxShape.circle,
                               image: DecorationImage(
                                 image: AssetImage('assets/logo.png'),
                                 fit: BoxFit.contain,
                               ),
                             ),
                           )
                         ],
                       ),
                     ),

                     Padding(
                       padding: EdgeInsets.only(
                           top: 10, left: 20, right: 20),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                               Text(
                                 "UserName",
                                 style: GoogleFonts.urbanist(
                                     fontSize: 16,
                                     color: Colors.white,
                                     fontWeight: FontWeight.w300),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                     Padding(
                       padding: EdgeInsets.only(
                           top: 15, left: 20, right: 20, bottom: 20),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                               Text(
                                 "Location Review",
                                 style: GoogleFonts.urbanist(
                                     fontSize: 14,
                                     color: Colors.grey.withOpacity(0.5),
                                     fontWeight: FontWeight.w500),
                               ),
                             ],
                           ),
                         ],
                       ),
                     )
                   ],
                 ),
               ),
               Positioned(
                 bottom: -10,
                 right: -10,
                 child: Container(
                   width: 50,
                   height: 50,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,

                     color: AppColors.appBackground,
                   ),
                   child: Icon(Icons.send,color: Colors.white,),

                 ),
               ),
             ],
            ),
          )
        ],
      ),
    );
  }
}
