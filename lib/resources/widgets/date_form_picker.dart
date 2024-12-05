import 'package:royal_hotel/resources/helpers/all_imports.dart';

class DateFormPicker extends StatelessWidget {
  const DateFormPicker({
    super.key,
    this.controller,
    this.label,
    this.prefixIcon,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    required this.onSelected,
    this.border,
    this.enabledBorder,
  });

  final TextEditingController? controller;
  final String? label;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final void Function(String?)? onChanged;
  final void Function(String?)? onFieldSubmitted;
  final void Function(DateTime dateTime) onSelected;
  final InputBorder? border;
  final InputBorder? enabledBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        FocusManager.instance.primaryFocus?.unfocus();
        DateTime? dateTime = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1930),
          lastDate: DateTime.now(),
        );
        onSelected(dateTime!);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: TextFormField(
          controller: controller,
          validator: validator,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          style: theme.textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.normal,
          ),
          readOnly: true,
          enabled: false,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: theme.textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.normal,
            ),
            filled: true,
            fillColor: customTheme.textField,
            errorStyle: theme.textTheme.titleMedium!.copyWith(
              color: customTheme.error,
            ),
            errorBorder: enabledBorder ??
                UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: theme.colorScheme.error,
                  ),
                  borderRadius: BorderRadius.circular(0),
                ),
            border: border ??
                UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: customTheme.grey,
                  ),
                  borderRadius: BorderRadius.circular(0),
                ),
            enabledBorder: border ??
                UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: customTheme.grey,
                  ),
                  borderRadius: BorderRadius.circular(0),
                ),
            disabledBorder: border ??
                UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: customTheme.grey,
                  ),
                  borderRadius: BorderRadius.circular(0),
                ),
            suffixIcon: Padding(
              padding: EdgeInsets.only(
                right: !Components().isRTL() ? 8.0 : 0.0,
                left: Components().isRTL() ? 8.0 : 0.0,
              ),
              child: UnconstrainedBox(
                child: Icon(
                  Icons.calendar_month_outlined,
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
