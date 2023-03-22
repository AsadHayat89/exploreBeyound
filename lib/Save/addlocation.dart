import 'package:explore_beyound/Controller/mainController.dart';
import 'package:explore_beyound/Home/Controller/listController.dart';
import 'package:explore_beyound/Home/LocationDetail.dart';
import 'package:explore_beyound/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddLocaiton extends StatelessWidget {
   AddLocaiton({Key? key}) : super(key: key);

  List<String> items = ["0", "1", "2", "3", "5"];

  String _selectedItem = "0";

  // final otherController = Get.find<MainController>();
  var controller=Get.put(ListController());

  //  @override
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  width: width/1.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    child: DropdownButton(
                      dropdownColor: Colors.black,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                      underline: SizedBox(),
                      isExpanded: true,
                      value: _selectedItem,
                      onChanged: (String? newValue) {
                        // setState(() {
                        _selectedItem = newValue!;
                        //});
                      },
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Category  " + items),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),

            Container(
              width: width,
              child: Column(
                children: [
                  Container(
                      height: 150,
                      width: 180,
                      child: Image.asset('assets/logo.png')),
                  Text(
                    "You've stumped us!",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.urbanist(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10,left: 30,right: 30,bottom: 15),
                    child: Text(
                      "We've got nothing! Do you know a special location that we do not have? Submit the location for other explorers!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.urbanist(
                          fontSize: 16,
                          color: Colors.grey.withOpacity(0.5),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) => getBottomContainer(),
                      );
                    },
                    child: Container(

                      decoration: BoxDecoration(
                        color: AppColors.appBackground,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child: Text(
                          "Submit Locaiton",
                          style: GoogleFonts.urbanist(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   width: width,
            //   height: height/1.6,
            //   color: Colors.red,
            //
            // ),
          ],
        ),
      ),
    );
  }

  Container getBottomContainer(){
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(
            30,
          ),
          topLeft: Radius.circular(
            30,
          ),
        ),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20,top: 20),
            child: GestureDetector(
              onTap: (){
               // Navigator.of(context).pop();
              },
              child: Text(
                "Welcome Explorer!",
                textAlign: TextAlign.left,
                style: GoogleFonts.urbanist(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10,left: 20),
            child: GestureDetector(
              onTap: (){
             //   Navigator.of(context).pop();
              },
              child: Text(
                "See all of your favourite locations in one place!",
                textAlign: TextAlign.left,
                style: GoogleFonts.urbanist(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10,left: 20,right: 20),
            child: Row(
              children: [

              ],
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 10,left: 20,right: 20),
              child: Container(
                height: 40,
                // set the container height
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
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
                        padding: const EdgeInsets.only(right: 8.0,left: 15),
                        child: Icon(Icons.apple,
                            color: Colors.white), // add Facebook logo icon
                      ),
                      SizedBox(width: 20,),
                      Text(
                        'Subscribe',
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

    );
  }
}
