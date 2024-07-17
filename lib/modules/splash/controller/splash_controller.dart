import '../../../resources/helpers/all_imports.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      timer();
    });
    super.onInit();
  }

  bool isDone = false;
  void timer() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        isDone = true;
        update();
        checkConnection();
      },
    );
  }

  Future<void> checkConnection() async {
    final bool result = await Components().checkConnection();
    if (result == true && isDone == true) {
      Get.offAllNamed(Routes.logInRoute);
    } else {
      Get.offAllNamed(Routes.connectionErrorRoute);
    }
  }
}
