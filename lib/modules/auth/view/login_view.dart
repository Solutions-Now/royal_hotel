import '../../../resources/helpers/all_imports.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return UpgradeDialog(
      child: SafeArea(
        child: Scaffold(
          body: GetBuilder<LogInController>(
            builder: (controller) {
              return Stack(
                children: <Widget>[
                  Container(
                    width: Get.width,
                    height: Get.height * 0.75,
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
                          0.25,
                          1,
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
                    padding: const EdgeInsets.only(top: 64),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        IconsManager.appIconWithoutBackgroung,
                        width: Get.width,
                        height: 150,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: SingleChildScrollView(
                          child: Form(
                            key: controller.logInGlobalKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: Components().isRTL()
                                      ? Alignment.centerRight
                                      : Alignment.centerLeft,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ScaleText(
                                        localizations.login,
                                        overflow: TextOverflow.visible,
                                        style: theme.textTheme.titleLarge!
                                            .copyWith(
                                          letterSpacing: 1,
                                          fontSize: 24,
                                          color: customTheme.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                UnderlineTextField(
                                  label: localizations.email,
                                  textInputType: TextInputType.emailAddress,
                                  controller: controller.emailController,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(6.0),
                                    topRight: Radius.circular(6.0),
                                  ),
                                ),
                                UnderlineTextField(
                                  label: localizations.password,
                                  textInputType: TextInputType.visiblePassword,
                                  controller: controller.passwordController,
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
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.toNamed(Routes.forgotPasswordRoute);
                                      },
                                      child: ScaleText(
                                        localizations.forgetPassword,
                                        overflow: TextOverflow.visible,
                                        style: theme.textTheme.titleMedium!
                                            .copyWith(
                                          color: customTheme.white,
                                          decoration: TextDecoration.underline,
                                          decorationColor: customTheme.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 64,
                                  ),
                                  child: MainButton(
                                    onPressed: controller.submit,
                                    title: localizations.login,
                                    color: theme.colorScheme.primary,
                                    backgroundColor: customTheme.white,
                                    // isOutlined: false,
                                  ),
                                ),
                                const SizedBox(height: 32),
                                Row(
                                  children: [
                                    ScaleText(
                                      '${localizations.dontHaveAccount} ',
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          theme.textTheme.titleMedium!.copyWith(
                                        color: customTheme.white,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.toNamed(Routes.registerRoute);
                                      },
                                      child: ScaleText(
                                        localizations.signUp,
                                        overflow: TextOverflow.visible,
                                        style: theme.textTheme.titleMedium!
                                            .copyWith(
                                          color: customTheme.white,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline,
                                          decorationColor: customTheme.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
