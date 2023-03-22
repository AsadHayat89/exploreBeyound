import 'package:get/get.dart';

class MainController extends GetxController{
     RxBool showbottom=false.obs;
     RxInt selectedIndex = 0.obs;
     void changeState(bool v){
         showbottom.value=v;
         update();
     }
     void onItemTapped(int index) {
       if(index==2){
         print("result foudn");
       }
      selectedIndex.value=index;

     }
}