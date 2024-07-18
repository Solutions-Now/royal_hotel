import 'package:royal_hotel/resources/helpers/all_imports.dart';

class CodePins extends StatelessWidget {
  const CodePins({
    super.key,
    required this.controller,
    this.onCompleted,
  });
  final TextEditingController controller;
  final void Function(String)? onCompleted;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Pinput(
        controller: controller,
        length: 4,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        defaultPinTheme: PinTheme(
          width: 56,
          height: 56,
          textStyle: theme.textTheme.titleLarge!.copyWith(
            fontSize: 20,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: customTheme.black,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        // validator: ValidationsManager.validateOtpCode,
        onCompleted: onCompleted,
      ),
    );
  }
}
