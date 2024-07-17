import '../../../resources/helpers/all_imports.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key});

  final SplashController splashController = Get.find();

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(height: 128),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: width * 0.75,
                  maxHeight: width * 0.75,
                ),
                child: Image.asset(
                  IconsManager.appIconWithoutBackgroung,
                ),
              ),
              const SizedBox(height: 32),
              Text(
                localizations.appName,
                style: TextStyle(
                  color: theme.colorScheme.secondary,
                  fontSize: 30,
                ),
              ),
              // const SizedBox(height: 128),
            ],
          ),
        ),
      ),
    );
  }
}
