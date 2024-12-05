import 'package:royal_hotel/resources/helpers/all_imports.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({
    super.key,
    required this.countryFlag,
    this.label,
    this.hint,
    this.controller,
    this.onSelect,
    this.textInputAction,
    this.focusNode,
    this.validator,
    this.borderSideColor,
    this.padding,
    this.haveStartPadding,
  });

  final String countryFlag;
  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final void Function(String? countryCode, String? countryName,
      String? phoneCode, String? flagEmoji)? onSelect;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final Color? borderSideColor;
  final EdgeInsetsGeometry? padding;
  final bool? haveStartPadding;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MainTextField(
            controller: controller,
            label: label ?? localizations.phoneNumber,
            focusNode: focusNode,
            validator: validator,
            textInputAction: textInputAction,
            keyboardType: TextInputType.phone,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        const SizedBox(width: 8.0),
        OutlinedButton(
          onPressed: () {
            showCountryPicker(
              context: context,
              exclude: [
                'IL',
              ],
              favorite: [
                'JO',
                'SA',
              ],
              onSelect: (Country country) {
                if (onSelect == null) return;
                onSelect!(country.countryCode, country.nameLocalized,
                    country.phoneCode, country.flagEmoji);
              },
            );
          },
          style: OutlinedButton.styleFrom(
            fixedSize: const Size.fromHeight(52.5),
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 8.0),
            backgroundColor: customTheme.textField,
            side: BorderSide(
              color: borderSideColor ?? theme.colorScheme.primary,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
          ),
          child: ScaleText(
            countryFlag,
            style: theme.textTheme.titleLarge!.copyWith(
              fontSize: 20.0,
            ),
          ),
        ),
        // haveStartPadding == true
        //     ? const SizedBox(width: 8.0)
        //     : const SizedBox.shrink(),
      ],
    );
  }
}
