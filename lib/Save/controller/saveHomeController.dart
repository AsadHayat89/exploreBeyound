import 'package:explore_beyound/Controller/mainController.dart';
import 'package:get/get.dart';

class saveHomeController extends GetxController{
  RxInt seleted=0.obs;
  // final otherController = Get.find<MainController>();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    //   otherController.update();
  }
  void selectdata(int loc){
    // if(loc==0){
    //   otherController.changeState(true);
    // }
    // else{
    //   otherController.changeState(true);
    // }

    seleted.value=loc;
  }

}