import '../../../resources/helpers/all_imports.dart';

class VerifyAccountView extends StatefulWidget {
  const VerifyAccountView({super.key});

  @override
  State<VerifyAccountView> createState() => _VerifyAccountViewState();
}

class _VerifyAccountViewState extends State<VerifyAccountView> {
  final VerifyAccountController _verifyAccountController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<VerifyAccountController>(
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
                                  Image.asset(
                                    ImagesManager.verifyAccount,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(height: 8.0),
                                  Center(
                                    child: ScaleText(
                                      localizations.weSentYouCode,
                                      style:
                                          theme.textTheme.titleLarge!.copyWith(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.normal,
                                        color: customTheme.white,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: ScaleText(
                                      localizations.codeWillExpireInFiveMinutes,
                                      style:
                                          theme.textTheme.titleLarge!.copyWith(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.normal,
                                        color: customTheme.white,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: ScaleText(
                                      'username',
                                      style:
                                          theme.textTheme.titleLarge!.copyWith(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.normal,
                                        color: customTheme.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16.0),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Column(
                                      children: [
                                        CodePins(
                                          controller: _verifyAccountController
                                              .codeController,
                                        ),
                                        const SizedBox(height: 32.0),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 32.0,
                                          ),
                                          child: MainButton(
                                            onPressed: () {
                                              _verifyAccountController
                                                  .verifyAccount(0);
                                            },
                                            title: localizations.send,
                                            color: theme.colorScheme.primary,
                                            backgroundColor: customTheme.white,
                                            // isOutlined: false,
                                          ),
                                        ),
                                        const SizedBox(height: 8.0),
                                      ],
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
    // return Scaffold(
    //   appBar: MainAppBar(
    //     title: localizations.verifyAccount,
    //     canBack: true,
    //   ),
    //   body: Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: Form(
    //       key: _verifyAccountController.formKey,
    //       child: SingleChildScrollView(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Image.asset(
    //               ImagesAssets.verifyAccount,
    //               fit: BoxFit.cover,
    //             ),
    //             const SizedBox(height: 8.0),
    //             Center(
    //               child: ScaleText(
    //                 localizations.weSentYouCode,
    //                 style: theme.textTheme.titleLarge!.copyWith(
    //                   fontSize: 18.0,
    //                   fontWeight: FontWeight.normal,
    //                 ),
    //               ),
    //             ),
    //             Center(
    //               child: ScaleText(
    //                 localizations.codeWillExpireInFiveMinutes,
    //                 style: theme.textTheme.titleLarge!.copyWith(
    //                   fontSize: 18.0,
    //                   fontWeight: FontWeight.normal,
    //                 ),
    //               ),
    //             ),
    //             Center(
    //               child: ScaleText(
    //                 username,
    //                 style: theme.textTheme.titleLarge!.copyWith(
    //                   fontSize: 18.0,
    //                   fontWeight: FontWeight.normal,
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(height: 8.0),
    //             Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 8.0),
    //               child: Column(
    //                 children: [
    //                   CodePins(
    //                     controller: _verifyAccountController.codeController,
    //                   ),
    //                   const SizedBox(height: 32.0),
    //                   MainButton(
    //                     title: localizations.send,
    //                     onPressed: () {
    //                       _verifyAccountController.verifyAccount(userId);
    //                     },
    //                   ),
    //                   const SizedBox(height: 8.0),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}