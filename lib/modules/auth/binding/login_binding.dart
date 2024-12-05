import 'package:royal_hotel/resources/helpers/all_imports.dart';

class LogInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LogInController(),
    );
  }
}
