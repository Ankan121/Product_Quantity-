import 'package:get/get.dart';
import 'package:produck_quantity/quentity_count.dart';


class Controller_Bin extends Bindings{
  @override
  void dependencies() {
    Get.put<Quentity_Count>(Quentity_Count());
  }

}