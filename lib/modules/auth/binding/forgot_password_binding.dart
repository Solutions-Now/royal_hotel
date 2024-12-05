import 'package:royal_hotel/resources/helpers/all_imports.dart';

class ForgetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ForgetPasswordController(),
    );
  }
}
