import '../helpers/all_imports.dart';

class MainTextField extends StatelessWidget {
  const MainTextField({
    super.key,
    this.controller,
    this.hint,
    this.label,
    this.readOnly = false,
    this.keyboardType,
    this.prefixIcon,
    this.enabled = true,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    this.obscureText = false,
    this.textInputAction,
    this.focusNode,
    this.autofillHints,
    this.maxLength,
    this.padding = const EdgeInsets.symmetric(vertical: 8.0),
    this.minLines,
    this.maxLines = 1,
    this.suffixIcon,
    this.inputFormatters,
    this.borderRadius,
  });

  final TextEditingController? controller;
  final String? hint;
  final String? label;
  final bool readOnly;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool enabled;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final void Function(String?)? onChanged;
  final void Function(String?)? onFieldSubmitted;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final List<String>? autofillHints;
  final int? maxLength;
  final EdgeInsetsGeometry padding;
  final int? minLines;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    // final FocusNode defaultFocusNode = focusNode ?? FocusNode();
    return TextFormField(
      controller: controller,
      autofillHints: autofillHints,
      obscureText: obscureText,
      readOnly: readOnly,
      enabled: enabled,
      keyboardType: keyboardType,
      focusNode: focusNode,
      textInputAction: textInputAction,
      maxLength: maxLength,
      minLines: minLines,
      maxLines: maxLines,
      // style: TextStyle(
      //   fontSize: 14.0,
      //   fontWeight: FontWeight.w400,
      //   color: customTheme.black,
      // ),
      decoration: InputDecoration(
        fillColor: customTheme.textField,
        filled: true,
        labelText: label,
        labelStyle: theme.textTheme.titleLarge!.copyWith(
          fontWeight: FontWeight.normal,
        ),
        errorStyle: theme.textTheme.titleMedium!.copyWith(
          color: customTheme.error,
        ),
        hintText: hint,
        hintStyle: theme.textTheme.titleLarge!.copyWith(
          fontWeight: FontWeight.normal,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: prefixIcon,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 7.0),
        prefixIconColor: theme.colorScheme.primary,
        prefixIconConstraints: const BoxConstraints(
          maxHeight: 28.0,
          maxWidth: 32.0,
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.only(
            right: Components().isRTL() ? 0.0 : 8.0,
            left: Components().isRTL() ? 8.0 : 0.0,
          ),
          child: suffixIcon,
        ),
        suffixIconConstraints: const BoxConstraints(
          maxHeight: 24.0,
          maxWidth: 32.0,
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
        focusedBorder: UnderlineInputBorder(
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
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: customTheme.error,
          ),
        ),
      ),
      inputFormatters: inputFormatters,
      validator: validator,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
