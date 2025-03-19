import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;
  increamentCounter() {
    counter.value++;
    print(counter.value);
  }
}
