import 'package:get/get.dart';

class DetailScreenController extends GetxController {
  RxBool isFavourite = false.obs;

  void toggleFavourite() {
    isFavourite.value = !isFavourite.value;
  }
}
