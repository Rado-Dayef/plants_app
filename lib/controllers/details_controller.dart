import 'package:plants_app/constants/app_imports.dart';

class DetailsController extends GetxController {
  PlantModel plantFromArguments = Get.arguments;
  RxInt count = RxInt(1);
  RxDouble totalPrice = RxDouble(0);

  @override
  void onInit() {
    totalPrice.value = plantFromArguments.price;
    super.onInit();
  }

  /// To increment the count with one.
  void onPlusOneToCount() {
    count.value++;
    totalPrice.value = count.value * plantFromArguments.price;
  }

  /// To decrement the count with one if its not equal one or less, But if the count equal one or less display toast to worn the user.
  void onMinusOneFromCount() {
    count.value == 1 ? AppDefaults.defaultToast(AppStrings.countCanNotBeLessThenOneToast) : count.value--;
    totalPrice.value = count.value * plantFromArguments.price;
  }
}