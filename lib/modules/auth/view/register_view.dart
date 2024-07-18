import '../../../resources/helpers/all_imports.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MainAppBar(
          title: 'signUp',
          canBack: true,
        ),
        body: GetBuilder<RegisterController>(
          builder: (controller) {
            return Stack(
              children: [
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
                  height: Get.height,
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // const Spacer(),
                        // Image.asset(
                        //   IconsManager.appIconWithoutBackgroung,
                        //   width: Get.width,
                        //   height: 150,
                        // ),
                        Row(
                          children: [
                            Expanded(
                              child: MainButton(
                                onPressed: controller.submit,
                                padding: const EdgeInsets.all(0.0),
                                titleWidget: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ScaleText(
                                      'facebook',
                                      overflow: TextOverflow.visible,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Icon(
                                      Icons.facebook,
                                      color: Colors.white,
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
                                onPressed: controller.submit,
                                padding: const EdgeInsets.all(0.0),
                                titleWidget: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ScaleText(
                                      overflow: TextOverflow.visible,
                                      'google',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.mail_outline_rounded,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                // color: theme.colorScheme.primary,
                                backgroundColor: Colors.red,
                                // isOutlined: false,
                              ),
                            ),
                          ],
                        ),

                        // const Row(
                        //   mainAxisAlignment: MainAxisAlignment.end,
                        //   children: [
                        //     ScaleText(
                        //       'signUp',
                        //       style: TextStyle(
                        //         letterSpacing: 1,
                        //         fontSize: 30,
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.white,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        const SizedBox(height: 8),
                        UnderlineTextField(
                          label: 'email',
                          textInputType: TextInputType.emailAddress,
                          controller: controller.emailController,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                        ),
                        UnderlineTextField(
                          label: '',
                          textInputType: TextInputType.emailAddress,
                          controller: controller.emailController,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(0.0),
                          ),
                        ),
                        UnderlineTextField(
                          label: '',
                          textInputType: TextInputType.emailAddress,
                          controller: controller.emailController,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(0.0),
                          ),
                        ),
                        UnderlineTextField(
                          label: '',
                          textInputType: TextInputType.emailAddress,
                          controller: controller.emailController,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(0.0),
                          ),
                        ),
                        UnderlineTextField(
                          label: '',
                          textInputType: TextInputType.emailAddress,
                          controller: controller.emailController,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(0.0),
                          ),
                        ),
                        UnderlineTextField(
                          label: '',
                          textInputType: TextInputType.emailAddress,
                          controller: controller.emailController,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(0.0),
                          ),
                        ),
                        UnderlineTextField(
                          label: 'password',
                          textInputType: TextInputType.visiblePassword,
                          controller: controller.passwordController,
                          obscureText: true,
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
                            title: 'signUp',
                            color: theme.colorScheme.primary,
                            backgroundColor: Colors.white,
                            // isOutlined: false,
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Row(
                          children: [
                            const ScaleText(
                              'alreadyHaveAccount? ',
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.logInRoute);
                              },
                              child: const ScaleText(
                                'signIn',
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white,
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
              ],
            );
          },
        ),
      ),
    );
  }
}
