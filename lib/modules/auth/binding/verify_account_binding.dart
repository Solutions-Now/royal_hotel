import '../../../resources/helpers/all_imports.dart';

class VerifyAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => VerifyAccountController(),
    );
  }
}
