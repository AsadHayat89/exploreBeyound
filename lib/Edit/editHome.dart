import 'package:explore_beyound/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controller/mainController.dart';

class EditHome extends StatefulWidget {
  const EditHome({Key? key}) : super(key: key);

  @override
  State<EditHome> createState() => _EditHomeState();
}

class _EditHomeState extends State<EditHome> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 1,
                            ),
                            // image: DecorationImage(
                            //   image: AssetImage('assets/logo.png'),
                            //   fit: BoxFit.contain,
                            // ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 7,right: 2),
                            child: Image.asset("assets/logo.png"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Asad Hayat",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.urbanist(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "asadhayat2007@gmail.com",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.urbanist(
                                    fontSize: 12,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Switch to Light Mode",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.urbanist(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        Switch(
                          value: isSwitched,
                          onChanged: (bool newValue) {
                            setState(() {
                              isSwitched = newValue;
                            });
                          },
                          // define a function to handle switch changes
                          activeColor: Colors.black,
                          // set the color of the switch when it is turned on
                          activeTrackColor: Colors.black38.withOpacity(0.5),
                          inactiveTrackColor: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: 1,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                    child: GestureDetector(
                      onTap: (){
                        showModalBottomSheet(

                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context) => Wrap(
                              children: <Widget>[getBottomContainer()],),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Edit Profile",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.urbanist(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width,
                    height: 1,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Payment Information",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.urbanist(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: 1,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet(

                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) => Wrap(
                          children: <Widget>[getBottomContainerPassword()],),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Change Password",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.urbanist(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width,
                    height: 1,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet(

                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) => Wrap(
                          children: <Widget>[getBottomContainerRequest()],),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Request Feature",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.urbanist(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width,
                    height: 1,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet(

                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) => Wrap(
                          children: <Widget>[getBottomContainerLocation()],),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Submit Location",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.urbanist(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width,
                    height: 1,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subscription",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.urbanist(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: 1,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Location",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.urbanist(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: 1,
                    color: Colors.white.withOpacity(0.5),
                  ),

                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                showModalBottomSheet(

                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (BuildContext context) => Wrap(
                    children: <Widget>[getBottomContainerLogout()],),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Text(
                      "LogOut",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container getBottomContainer(){
    return Container(
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

        children: [
          Container(
            width: 50,
            height: 1,
            color: Colors.white,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Text(
                    "Edit Profile",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.urbanist(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 1,
                        ),
                        // image: DecorationImage(
                        //   image: AssetImage('assets/logo.png'),
                        //   fit: BoxFit.contain,
                        // ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 7,right: 2),
                        child: Image.asset("assets/logo.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Text(
                          "Change Profile",
                          style: TextStyle(color: Colors.white),
                        ),
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
                            labelText: 'UserName',
                            labelStyle:GoogleFonts.urbanist(color: Colors.white.withOpacity(0.7)),
                            hintText: 'Enter your UserName',
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
                            labelText: 'Email',
                            labelStyle:GoogleFonts.urbanist(color: Colors.white.withOpacity(0.7)),
                            hintText: 'Enter your Email',
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
                            labelText: 'Bio',
                            labelStyle:GoogleFonts.urbanist(color: Colors.white.withOpacity(0.7)),
                            hintText: 'Enter your Bio',
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
                    padding: EdgeInsets.only(top: 60),
                    child: Container(

                      decoration: BoxDecoration(
                        color: AppColors.appBackground,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child: Text(
                          "Submit Request",
                          style: GoogleFonts.urbanist(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
  Container getBottomContainerLocation(){
    return Container(
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

        children: [
          Container(
            width: 50,
            height: 1,
            color: Colors.white,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 50,left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Submit a Location",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.urbanist(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding:EdgeInsets.only(top: 5),
                    child: Text(
                      "Found a hidden gem that you would like to feature?",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.urbanist(
                          fontSize: 14,
                          color: Colors.grey.withOpacity(0.5),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 20),
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
                            hintText: 'Name of location',
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
                    padding: EdgeInsets.only(top: 20, right: 20),
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
                            hintText: 'Enter your Category',
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
                    padding: EdgeInsets.only(top: 20, right: 20),
                    child: Container(
                      height: 130,
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
                            hintText: 'Enter your Description',
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
                    padding: EdgeInsets.only(top: 60),
                    child: Center(
                      child: Container(

                        decoration: BoxDecoration(
                          color: AppColors.appBackground,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          child: Text(
                            "Submit Request",
                            style: GoogleFonts.urbanist(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
  Container getBottomContainerPassword(){
    return Container(
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

        children: [
          Container(
            width: 50,
            height: 1,
            color: Colors.white,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 50,left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Change Password",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.urbanist(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40, right: 20),
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
                            hintText: 'current Password',
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
                    padding: EdgeInsets.only(top: 20, right: 20),
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
                            hintText: 'New Password',
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
                    padding: EdgeInsets.only(top: 20, right: 20),
                    child: Container(
                      height: 130,
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
                            hintText: 'Repeat Password',
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
                    padding: EdgeInsets.only(top: 60),
                    child: Center(
                      child: Container(

                        decoration: BoxDecoration(
                          color: AppColors.appBackground,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          child: Text(
                            "Change Password",
                            style: GoogleFonts.urbanist(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
  Container getBottomContainerRequest(){
    return Container(
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

        children: [
          Container(
            width: 50,
            height: 1,
            color: Colors.white,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 50,left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text
                    (
                    "Request a Feature",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.urbanist(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "What do you want to see from Explore Beyond?",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.urbanist(
                          fontSize: 14,
                          color: Colors.grey.withOpacity(0.5),
                          fontWeight: FontWeight.w500),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 20),
                    child: Container(
                      height: 130,
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
                            hintText: 'Enter Your Request here....',
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
                    padding: EdgeInsets.only(top: 60),
                    child: Center(
                      child: Container(

                        decoration: BoxDecoration(
                          color: AppColors.appBackground,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          child: Text(
                            "Submit Request",
                            style: GoogleFonts.urbanist(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
  Container getBottomContainerSave(){
    return Container(
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

        children: [
          Container(
            width: 50,
            height: 1,
            color: Colors.white,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 50,left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text
                    (
                    "Change Profile Picture",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.urbanist(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),

                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, right: 20),
                      child: Container(
                        width: 200,
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
                        child: Padding(
                          padding:  EdgeInsets.symmetric(vertical: 30),
                          child: Column(
                            children: [
                              Icon(Icons.camera_alt_outlined,color: AppColors.appBackground,size: 56,),
                              Text(
                                "Upload a new profile picture",
                                style: GoogleFonts.urbanist(
                                    fontSize: 12,
                                    color: Colors.grey.withOpacity(0.5),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Center(
                      child: Container(

                        decoration: BoxDecoration(
                          color: AppColors.appBackground,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                          child: Text(
                            "Save",
                            style: GoogleFonts.urbanist(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
  Container getBottomContainerImageProfile(){
    return Container(
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

        children: [
          Container(
            width: 50,
            height: 1,
            color: Colors.white,
          ),
          Container
            (
            child: Padding(
              padding: EdgeInsets.only(top: 50,left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text
                    (
                    "Change Profile Picture",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.urbanist(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),

                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, right: 20),
                      child: Container(
                        width: 200,
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
                        child: Padding(
                          padding:  EdgeInsets.symmetric(vertical: 30),
                          child: Column(
                            children: [
                              Icon(Icons.camera_alt_outlined,color: AppColors.appBackground,size: 56,),
                              Text(
                                "Upload a new profile picture",
                                style: GoogleFonts.urbanist(
                                    fontSize: 12,
                                    color: Colors.grey.withOpacity(0.5),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Center(
                      child: Container(

                        decoration: BoxDecoration(
                          color: AppColors.appBackground,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                          child: Text(
                            "Save",
                            style: GoogleFonts.urbanist(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
  Container getBottomContainerLogout(){
    return Container(
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

        children: [
          Container(
            width: 50,
            height: 1,
            color: Colors.white,
          ),
          Container(
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
                                "Cancel",
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
          )
        ],
      ),

    );
  }
}
