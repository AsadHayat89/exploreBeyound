import 'package:explore_beyound/Controller/mainController.dart';
import 'package:get/get.dart';

class ListController extends GetxController{
  final otherController = Get.find<MainController>();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    otherController.changeState(true);
    //   otherController.update();
  }
}