import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DuaaController extends GetxController {
  RxInt _counter = 0.obs;

  RxInt get counter => _counter;

  void increaseCounter() {
    _counter++;
    update();
  }

  void increaseCounterBy5() {
    _counter = _counter + 5;
    update();
  }

  void decreaseCounter() {
    if (_counter > 0) {
      _counter--;
      update();
    }
  }

  void decreaseCounterBy5() {
    if (_counter > 4) {
      _counter = _counter - 5;
      update();
    }
  }

  void resetCounter() {
    _counter.value = 0;
    update();
  }
}
