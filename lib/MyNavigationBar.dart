
import 'package:explore_beyound/Controller/mainController.dart';
import 'package:explore_beyound/Edit/editHome.dart';
import 'package:explore_beyound/Home/MapHome.dart';
import 'package:explore_beyound/Map.dart';
import 'package:explore_beyound/Save/saveHome.dart';
import 'package:explore_beyound/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class MyNavigationBar extends StatefulWidget {
  static  List<Widget> _widgetOptions = <Widget>[
    MapHome(),
    SavedHomew(),
    EditHome(),
  ];

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
//  var bottomNavBar=Get.put(BottomNavController());
   int _selectedIndex = 0;
   var Controller=Get.put(MainController());
  void _onItemTapped(int index) {
    if(index==2){
      Controller.showbottom.value=false;
    }
    if(index==1){
      Controller.showbottom.value=true;
    }
    setState(() {
      _selectedIndex=index;
    });

   // bottomNavBar.selectedIndex.value = index;

  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width ;
    double height = MediaQuery. of(context). size. height;
    return Scaffold(
      body:  MyNavigationBar._widgetOptions.elementAt(this._selectedIndex),
      bottomNavigationBar: Obx(
        ()=> Container(
          width: width,
          height: Controller.showbottom.isTrue?120:60,
          color: Colors.black,
          child: Column(
            children: [
              if(Controller.showbottom.value)
              Container(
                width: width,
                height: 60,
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.search,color: Colors.grey.withOpacity(0.5),),
                          SizedBox(width: 15,),
                          Container(
                            height: 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Address, City, Passcode",
                                  style: GoogleFonts.urbanist(
                                      fontSize: 12,
                                      color: Colors.grey.withOpacity(0.5),
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Search Field",
                                  style: GoogleFonts.urbanist(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                          onTap: (){
                            Controller.changeState(false);
                          },
                          child: Icon(Icons.manage_history_rounded,color: AppColors.appBackground,)),

                    ],
                  ),
                ),
              ),
              if(Controller.showbottom.isTrue)
              Container(
                width: width,
                height: 1,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: BottomNavigationBar(

                  showUnselectedLabels: true,
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        label: "Map",
                        icon: Icon(Icons.map,color: AppColors.appBackground),
                        // title: Text('Home'),
                        backgroundColor: Colors.black87),
                    BottomNavigationBarItem(
                      label: "Saved",
                      icon: Icon(Icons.favorite,color: AppColors.appBackground),

                      //testing

                      // title: Text('Profile'),
                      backgroundColor:Colors.black87,
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person,color: AppColors.appBackground),
                        label: "Profile",
                        // title: Text('Search'),
                        backgroundColor: Colors.black87),
                  ],
                  type: BottomNavigationBarType.shifting,
                  currentIndex: this._selectedIndex,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white,
                  iconSize: 25,

                  onTap: _onItemTapped,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

