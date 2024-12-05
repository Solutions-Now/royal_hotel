import '../../../resources/helpers/all_imports.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final ForgetPasswordController _forgetPasswordController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<ForgetPasswordController>(
          builder: (controller) {
            return Stack(
              children: <Widget>[
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
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
                          ],
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 16.0, bottom: 8.0),
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxHeight: Get.height * 0.40,
                                      ),
                                      child: SvgPicture.asset(
                                        ImagesManager.forgetPasswordSvg,
                                      ),
                                      // child: Image.asset(
                                      //   ImagesManager.forgetPassword,
                                      // ),
                                    ),
                                  ),
                                  ScaleText(
                                    localizations.sendResetLinkToEmail,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                    style: theme.textTheme.titleLarge!.copyWith(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.normal,
                                      color: customTheme.white,
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Form(
                                      key: _forgetPasswordController
                                          .forgotPasswordGlobalKey,
                                      child: Column(
                                        children: [
                                          UnderlineTextField(
                                            label: localizations.email,
                                            suffixIcon: Icon(
                                              Icons.email_outlined,
                                              color: theme.colorScheme.primary,
                                            ),
                                            textInputType:
                                                TextInputType.emailAddress,
                                            controller:
                                                controller.emailController,
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(6.0),
                                            ),
                                          ),
                                          const SizedBox(height: 32.0),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 32.0,
                                            ),
                                            child: MainButton(
                                              onPressed: controller.submit,
                                              title:
                                                  localizations.sendResetLink,
                                              color: theme.colorScheme.primary,
                                              backgroundColor:
                                                  customTheme.white,
                                              // isOutlined: false,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
