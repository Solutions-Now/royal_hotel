import 'package:royal_hotel/resources/helpers/all_imports.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => RegisterController(),
    );
  }
}
