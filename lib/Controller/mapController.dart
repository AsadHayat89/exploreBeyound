import 'package:explore_beyound/Controller/mainController.dart';
import 'package:get/get.dart';

class MapController extends GetxController{
  final otherController = Get.find<MainController>();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    otherController.changeState(false);
    //   otherController.update();
  }
}