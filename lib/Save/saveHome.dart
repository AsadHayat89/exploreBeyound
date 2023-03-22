import 'package:explore_beyound/Home/listLocations.dart';
import 'package:explore_beyound/Map.dart';
import 'package:explore_beyound/Save/addlocation.dart';
import 'package:explore_beyound/Save/controller/saveHomeController.dart';
import 'package:explore_beyound/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class SavedHomew extends StatelessWidget {
   SavedHomew({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    var Controller=Get.put(saveHomeController());
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Obx(
        ()=> SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50,left: 20,right: 20),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Saved Locations",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.urbanist(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10,left: 20,right: 20),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
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
                padding: EdgeInsets.only(top: 40),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Controller.selectdata(0);
                        },
                        child: Container(
                          width: width/2,
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  "Saved",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.urbanist(
                                      fontSize: 22,
                                      color: Controller.seleted.value==0?AppColors.appBackground:Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                if(Controller.seleted.value==0)
                                  Padding(
                                    padding: EdgeInsets.only(top: 1),
                                    child: Container(
                                      width: 50,
                                      height: 2,
                                      color: Controller.seleted.value==0?AppColors.appBackground:Colors.white,
                                    ),
                                  )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Controller.selectdata(1);
                        },
                        child: Container(
                          width: width/2,
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  "Visted",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.urbanist(
                                      fontSize: 22,
                                      color: Controller.seleted.value==1?AppColors.appBackground:Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                if(Controller.seleted.value!=0)
                                  Padding(
                                    padding: EdgeInsets.only(top: 1),
                                    child: Container(
                                      width: 50,
                                      height: 2,
                                      color: Controller.seleted.value!=0?AppColors.appBackground:Colors.white,
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
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Container(
                  width: width,
                  height:height/1.3,
                  child: Controller.seleted.value==0?AddLocaiton():ListLocations(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
