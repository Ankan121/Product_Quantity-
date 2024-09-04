import 'package:get/get.dart';

class Quentity_Count extends GetxController{

  var conter = 1.obs ;

  void increment(){
    conter++;
  }

  void decrement(){
    if(conter>1){
      conter--;
    }
  }
}