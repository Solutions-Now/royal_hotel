import '../../../resources/helpers/all_imports.dart';

class ForgetPasswordController extends GetxController {
  final GlobalKey<FormState> forgotPasswordGlobalKey = GlobalKey<FormState>();
  AuthType authType = AuthType.login;
  late TextEditingController emailController;
  bool hidePassword = true;

  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }

  Future<void> submit() async {
    Get.offAllNamed(Routes.verifyAccountRoute);
  }
}
