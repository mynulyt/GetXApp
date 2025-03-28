import 'package:get/get.dart';

class ChangeController extends GetxController {
  RxBool notification = false.obs;
  setNotification(bool value) {
    notification.value = value;
    print("True");
  }
}
