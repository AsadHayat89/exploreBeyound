import 'dart:async';

import 'package:explore_beyound/Controller/mapController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'Controller/mainController.dart';



class TrackingShop extends StatefulWidget {
  const TrackingShop({Key? key}) : super(key: key);

  static const LatLng _center = const LatLng(45.521563, -122.677433);

  @override
  State<TrackingShop> createState() => _TrackingShopState();
}

class _TrackingShopState extends State<TrackingShop> {
  Completer<GoogleMapController> _controller = Completer();

  var mapController=Get.put(MapController());

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   otherController.changeState(false);
  //   otherController.update();
  //   print("contorller value: "+otherController.showbottom.isTrue.toString());
  // }
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  Marker marker = Marker(
    markerId: MarkerId('Marker1'),
    position: LatLng(37.4220, -122.0841),
    infoWindow: InfoWindow(
      title: 'Marker Title',
      snippet: 'Marker Description',

    ),

  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        home: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
                onMapCreated: _onMapCreated,
                myLocationButtonEnabled: false,
                zoomControlsEnabled: false,
                mapType: MapType.normal,
                markers: Set<Marker>.of([marker]),
                initialCameraPosition: CameraPosition(
                  target: LatLng(37.4220, -122.0841),
                  zoom: 11.0,
                )),

          ],
        ),
      ),
    );
  }
}
