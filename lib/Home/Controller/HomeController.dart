import 'package:explore_beyound/Controller/mainController.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  RxInt seleted=0.obs;
  final otherController = Get.find<MainController>();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    //   otherController.update();
  }
  void selectdata(int loc){
    if(loc==0){
      otherController.changeState(false);
    }
    else{
      otherController.changeState(true);
    }

    seleted.value=loc;
  }

}