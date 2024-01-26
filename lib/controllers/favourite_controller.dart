import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxBool isFavourite = false.obs;

  void toggleFavourite() {
    isFavourite.value = !isFavourite.value;
  }
}
