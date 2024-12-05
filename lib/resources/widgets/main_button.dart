import '../helpers/all_imports.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    this.title,
    this.titleWidget,
    required this.onPressed,
    this.backgroundColor,
    this.color,
    this.buttonWidth,
    this.borderSide,
    this.elevation,
    this.padding,
  });

  final String? title;
  final Widget? titleWidget;
  final Function() onPressed;
  final Color? backgroundColor;
  final Color? color;
  final double? buttonWidth;
  final BorderSide? borderSide;
  final double? elevation;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: borderSide ?? BorderSide.none,
          ),
          elevation: elevation,
          surfaceTintColor: Colors.transparent,
          backgroundColor: backgroundColor ?? theme.colorScheme.primary,
          minimumSize: Size(width * 0.75, 46.0),
          maximumSize: Size(width, 46.0),
          fixedSize: buttonWidth == null ? Size(width, 46.0) : null,
        ),
        onPressed: onPressed,
        child: titleWidget ??
            ScaleText(
              title!,
              overflow: TextOverflow.visible,
              style: TextStyle(
                fontSize: 16.0,
                color: color ?? customTheme.white,
              ),
            ),
      ),
    );
  }
}
