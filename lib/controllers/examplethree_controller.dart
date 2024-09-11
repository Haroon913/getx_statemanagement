import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ExamplethreeController extends GetxController{

  RxBool notification =false.obs;

  setNotifications(bool value){
    notification.value=value;
  }
}