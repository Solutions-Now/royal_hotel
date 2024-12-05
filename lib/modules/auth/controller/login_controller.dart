import '../../../resources/helpers/all_imports.dart';

class LogInController extends GetxController {
  final GlobalKey<FormState> logInGlobalKey = GlobalKey<FormState>();
  AuthType authType = AuthType.login;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool hidePassword = true;

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

  void changeHidePassword() {
    hidePassword = !hidePassword;
    update();
  }

  void changeAuthType() {
    authType = authType == AuthType.login ? AuthType.signUp : AuthType.login;
    update();
  }

  Future<void> submit() async {
    Get.offAllNamed(Routes.navigationRoute);
  }
}
