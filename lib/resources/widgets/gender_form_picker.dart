import 'package:royal_hotel/resources/helpers/all_imports.dart';

class GenderFormPicker extends StatelessWidget {
  GenderFormPicker({
    super.key,
    this.controller,
    this.label,
    this.prefixIcon,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    required this.selectedGender,
    this.onSelect,
    this.borderRadius,
  });

  final TextEditingController? controller;
  final String? label;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final void Function(String?)? onChanged;
  final void Function(String?)? onFieldSubmitted;
  final BorderRadius? borderRadius;

  /// 1: Male, 2: Female
  final int? selectedGender;
  final void Function(int?)? onSelect;

  final FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        TextFormField(
          controller: controller,
          focusNode: focusNode,
          validator: validator,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          enabled: false,
          style: theme.textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.normal,
          ),
          readOnly: true,
          decoration: InputDecoration(
            labelText: localizations.gender,
            filled: true,
            fillColor: customTheme.textField,
            labelStyle: theme.textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.normal,
            ),
            errorStyle: theme.textTheme.titleMedium!.copyWith(
              color: customTheme.error,
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: customTheme.error,
              ),
              borderRadius: borderRadius ?? BorderRadius.circular(0),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: customTheme.textField,
              ),
              borderRadius: borderRadius ?? BorderRadius.circular(0),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: customTheme.textField,
              ),
              borderRadius: borderRadius ?? BorderRadius.circular(0),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: customTheme.textField,
              ),
              borderRadius: borderRadius ?? BorderRadius.circular(0),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Padding(
            padding: EdgeInsets.only(
              right: !Components().isRTL() ? 8.0 : 0.0,
              left: Components().isRTL() ? 8.0 : 0.0,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _GenderTypeButton(
                  value: ConstantsManager.genderMaleValue,
                  icon: Icons.man_outlined,
                  color: selectedGender == null
                      ? customTheme.grey
                      : selectedGender == ConstantsManager.genderMaleValue
                          ? customTheme.blue
                          : customTheme.grey,
                  text: localizations.male,
                  onTap: (int? value) {
                    if (onSelect == null) return;
                    onSelect!(ConstantsManager.genderMaleValue);
                  },
                ),
                const SizedBox(width: 8.0),
                _GenderTypeButton(
                  value: ConstantsManager.genderFemaleValue,
                  icon: Icons.woman_outlined,
                  color: selectedGender == null
                      ? customTheme.grey
                      : selectedGender == ConstantsManager.genderFemaleValue
                          ? customTheme.pink
                          : customTheme.grey,
                  text: localizations.female,
                  onTap: (int? value) {
                    if (onSelect == null) return;
                    onSelect!(ConstantsManager.genderFemaleValue);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _GenderTypeButton extends StatelessWidget {
  const _GenderTypeButton({
    required this.value,
    required this.text,
    required this.onTap,
    required this.color,
    required this.icon,
  });

  final int value;
  final String text;
  final void Function(int?)? onTap;
  final Color color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!(value);
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 4.0,
          vertical: 8.0,
        ),
        decoration: BoxDecoration(
          color: customTheme.textField,
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
            color: color,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: color,
              size: 18.0,
            ),
            Text(
              text,
              style: theme.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.normal,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
