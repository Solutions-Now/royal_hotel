import '../../../resources/helpers/all_imports.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<RegisterController>(
          builder: (controller) {
            return Stack(
              children: [
                Container(
                  width: Get.width,
                  height: Get.height * 0.80,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImagesManager.loginBackground),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: Get.width,
                  height: Get.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      stops: const [
                        0.23,
                        0.50,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        theme.colorScheme.primary,
                        theme.colorScheme.primary.withOpacity(0.25),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 64.0,
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      IconsManager.appIconWithoutBackgroung,
                      height: 100,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  child: Form(
                    key: controller.registerGlobalKey,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                padding: const EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: customTheme.white,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            ScaleText(
                              localizations.signUp,
                              overflow: TextOverflow.visible,
                              style: theme.textTheme.titleLarge!.copyWith(
                                color: customTheme.white,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: MainButton(
                                          onPressed: () {},
                                          padding: const EdgeInsets.all(0.0),
                                          titleWidget: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              ScaleText(
                                                localizations.facebook,
                                                overflow: TextOverflow.visible,
                                                style: theme
                                                    .textTheme.titleLarge!
                                                    .copyWith(
                                                  color: customTheme.white,
                                                  letterSpacing: 1,
                                                ),
                                              ),
                                              const SizedBox(width: 8.0),
                                              Icon(
                                                Icons.facebook,
                                                color: customTheme.white,
                                              ),
                                            ],
                                          ),
                                          // color: theme.colorScheme.primary,
                                          backgroundColor: Colors.blue,
                                          // isOutlined: false,
                                        ),
                                      ),
                                      const SizedBox(width: 16.0),
                                      Expanded(
                                        child: MainButton(
                                          onPressed: () {},
                                          padding: const EdgeInsets.all(0.0),
                                          titleWidget: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              ScaleText(
                                                overflow: TextOverflow.visible,
                                                localizations.google,
                                                style: theme
                                                    .textTheme.titleLarge!
                                                    .copyWith(
                                                  color: customTheme.white,
                                                  letterSpacing: 1,
                                                ),
                                              ),
                                              Icon(
                                                Icons.mail_outline_rounded,
                                                color: customTheme.white,
                                              ),
                                            ],
                                          ),
                                          backgroundColor: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  ScaleText(
                                    localizations.orSignUpWithEmail,
                                    overflow: TextOverflow.visible,
                                    style: theme.textTheme.titleLarge!.copyWith(
                                      color: customTheme.white,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  UnderlineTextField(
                                    label: localizations.username,
                                    textInputType: TextInputType.name,
                                    controller: controller.userNameController,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0),
                                    ),
                                  ),
                                  UnderlineTextField(
                                    label: localizations.email,
                                    textInputType: TextInputType.emailAddress,
                                    controller: controller.emailController,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(0.0),
                                    ),
                                  ),
                                  PhoneTextField(
                                    countryFlag: controller.selectedCountryFlag,
                                    controller:
                                        controller.phoneNumberController,
                                    haveStartPadding: true,
                                    onSelect: (
                                      String? countryCode,
                                      String? countryName,
                                      String? phoneCode,
                                      String? flagEmoji,
                                    ) {
                                      controller.setSelectedCountryCode =
                                          countryCode!;
                                      controller.setSelectedPhoneCode =
                                          phoneCode!;
                                      controller.setSelectedCountryFlag =
                                          flagEmoji!;
                                    },
                                  ),
                                  const SizedBox(height: 8.0),
                                  GenderFormPicker(
                                    selectedGender: controller.genderType,
                                    onSelect: (int? value) {
                                      controller.setGenderType = value;
                                    },
                                  ),
                                  const SizedBox(height: 8.0),
                                  DateFormPicker(
                                    label: localizations.birthDay,
                                    controller: controller.birthDayController,
                                    onSelected: (DateTime? date) {
                                      controller.setBirthDay = date;
                                    },
                                  ),
                                  UnderlineTextField(
                                    label: localizations.password,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    controller: controller.passwordController,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(0.0),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        controller.hidePassword
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: theme.colorScheme.primary,
                                      ),
                                      onPressed: controller.changeHidePassword,
                                    ),
                                    obscureText: controller.hidePassword,
                                  ),
                                  UnderlineTextField(
                                    label: localizations.confirmPassword,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    controller:
                                        controller.confirmPasswordController,
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        controller.hidePassword
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: theme.colorScheme.primary,
                                      ),
                                      onPressed:
                                          controller.changeConfirmPassword,
                                    ),
                                    obscureText: controller.confirmPassword,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(8.0),
                                      bottomRight: Radius.circular(8.0),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 64,
                                    ),
                                    child: MainButton(
                                      onPressed: controller.submit,
                                      title: localizations.signUp,
                                      color: theme.colorScheme.primary,
                                      backgroundColor: customTheme.white,
                                      // isOutlined: false,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Row(
                                    children: [
                                      ScaleText(
                                        '${localizations.alreadyHaveAccount} ',
                                        overflow: TextOverflow.visible,
                                        style: theme.textTheme.titleMedium!
                                            .copyWith(
                                          color: customTheme.white,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Get.toNamed(Routes.logInRoute);
                                        },
                                        child: ScaleText(
                                          localizations.login,
                                          overflow: TextOverflow.visible,
                                          style: theme.textTheme.titleMedium!
                                              .copyWith(
                                            color: customTheme.white,
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: customTheme.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
