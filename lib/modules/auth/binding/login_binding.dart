import '../../../resources/helpers/all_imports.dart';

class LogInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LogInController(),
    );
  }
}
