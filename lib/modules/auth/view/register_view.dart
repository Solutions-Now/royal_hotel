import '../../../resources/helpers/all_imports.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return UpgradeDialog(
      child: SafeArea(
        child: Scaffold(
          body: GetBuilder<RegisterController>(
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
                    width: double.infinity,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height,
                        maxWidth: MediaQuery.of(context).size.width,
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Spacer(),
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                IconsManager.appIconWithoutBackgroung,
                                width: Get.width,
                                height: 150,
                              ),
                            ),
                            const Spacer(
                              flex: 3,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ScaleText(
                                    'signIn',
                                    style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  ScaleText(
                                    'login Description',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            UnderlineTextField(
                              label: 'email',
                              textInputType: TextInputType.emailAddress,
                              controller: controller.emailController,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(6.0),
                                topRight: Radius.circular(6.0),
                              ),
                            ),
                            UnderlineTextField(
                              label: 'password',
                              textInputType: TextInputType.visiblePassword,
                              controller: controller.passwordController,
                              obscureText: true,
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
                                    // Get.toNamed("/forgotPassword");
                                  },
                                  child: const Text(
                                    'forgetPassword',
                                    style: TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // const Spacer(
                            //   flex: 1,
                            // ),
                            const SizedBox(
                              height: 16,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 64,
                                  ),
                                  child: MainButton(
                                    onPressed: controller.submit,
                                    title: 'logIn',
                                    color: theme.colorScheme.primary,
                                    backgroundColor: Colors.white,
                                    // isOutlined: false,
                                  ),
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                Align(
                                  // alignment: Alignment.centerRight,
                                  child: Row(
                                    children: [
                                      const Text(
                                        'dontHaveAccount? ',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // Get.toNamed("/forgotPassword");
                                        },
                                        child: const Text(
                                          'signUp',
                                          style: TextStyle(
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
