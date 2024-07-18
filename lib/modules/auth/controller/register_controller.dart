import '../../../resources/helpers/all_imports.dart';

class RegisterController extends GetxController {
  final GlobalKey<FormState> registerGlobalKey = GlobalKey<FormState>();
  AuthType authType = AuthType.login;
  late TextEditingController userNameController;
  late TextEditingController emailController;
  late TextEditingController phoneNumberController;
  late TextEditingController birthDayController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  bool hidePassword = true;
  bool confirmPassword = true;

  @override
  void onInit() {
    userNameController = TextEditingController();
    emailController = TextEditingController();
    phoneNumberController = TextEditingController();
    birthDayController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    userNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    birthDayController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  void changeHidePassword() {
    hidePassword = !hidePassword;
    update();
  }

  void changeConfirmPassword() {
    confirmPassword = !confirmPassword;
    update();
  }

  // void changeAuthType() {
  //   authType = authType == AuthType.login ? AuthType.signUp : AuthType.login;
  //   update();
  // }

  Future<void> submit() async {
    Get.offAllNamed(Routes.navigationRoute);
  }

  String selectedCountryFlag = '🇯🇴';
  set setSelectedCountryFlag(String value) {
    selectedCountryFlag = value;
    update();
  }

  String selectedPhoneCode = '962';
  set setSelectedPhoneCode(String value) {
    selectedPhoneCode = value;
    update();
  }

  String selectedCountryCode = 'JO';
  set setSelectedCountryCode(String value) {
    selectedCountryCode = value;
    update();
  }

  DateTime? birthDay;
  set setBirthDay(DateTime? newValue) {
    birthDay = newValue;
    birthDayController.text = DateFormat('dd/MM/yyyy').format(birthDay!);
    update();
  }

  int? genderType;
  set setGenderType(int? newValue) {
    genderType = newValue;
    update();
  }
}
