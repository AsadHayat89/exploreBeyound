import 'package:explore_beyound/Controller/mainController.dart';
import 'package:explore_beyound/Home/Controller/listController.dart';
import 'package:explore_beyound/Home/LocationDetail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ListLocations extends StatefulWidget {
  const ListLocations({Key? key}) : super(key: key);

  @override
  State<ListLocations> createState() => _ListLocationsState();
}

class _ListLocationsState extends State<ListLocations> {
  List<String> items = ["0", "1", "2", "3", "5"];
  String _selectedItem = "0";
 // final otherController = Get.find<MainController>();
    var controller=Get.put(ListController());
  //  @override
 //  void initState() {
 //    // TODO: implement initState
 //    super.initState();
 //    otherController.changeState(true);
 //    print("contorller value: "+otherController.showbottom.isTrue.toString());
 //  }
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
              height: height/1.5,
              child: ListView.builder(
                itemCount: 10, // specify the number of items in the list
                itemBuilder: (BuildContext context, int index) {
                  // return a widget for each item in the list
                  return GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => LocationDetails()));

                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20,bottom: 20),
                      child: Container(
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.black,
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: width,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                                color: Colors.black,
                                image: DecorationImage(
                                  image: AssetImage('assets/bridge.jpg'),
                                  fit: BoxFit
                                      .cover, // specify how the image should be positioned and scaled
                                ),
                              ),
                              //child: Image.asset("assets/bridge.jpg",fit: BoxFit.fill,)
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
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
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                      Icon(
                                        Icons.favorite_border,
                                        color: Colors.grey.withOpacity(0.5),
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
                                        "Address",
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
                  );
                },
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
}
