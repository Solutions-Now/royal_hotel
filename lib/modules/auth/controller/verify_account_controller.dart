import 'package:royal_hotel/resources/helpers/all_imports.dart';

class VerifyAccountController extends GetxController {
  final GlobalKey<FormState> verifyAccountGlobalKey = GlobalKey<FormState>();

  // final AuthRepository authRepository = AuthApi();

  late TextEditingController codeController;

  @override
  void onInit() {
    codeController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    codeController.dispose();
    super.onClose();
  }

  Future<void> verifyAccount(int userId) async {
    if (!verifyAccountGlobalKey.currentState!.validate()) return;
    try {
      Components().showLoading();
      // await authRepository.verifyAccount(codeController.text, userId);
      Components().dismissLoading();
      Get.back(result: true);
    } catch (e) {
      Components().dismissLoading();
      ExceptionManager().showException(e.toString());
    }
  }
}
