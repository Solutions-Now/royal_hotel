import '../../../resources/helpers/all_imports.dart';

class RegisterController extends GetxController {
  AuthType authType = AuthType.login;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void changeAuthType() {
    authType = authType == AuthType.login ? AuthType.signUp : AuthType.login;
    update();
  }

  Future<void> submit() async {
    Get.offAllNamed(Routes.navigationRoute);
  }
}
