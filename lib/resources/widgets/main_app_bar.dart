import '../helpers/all_imports.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
    required this.title,
    this.canBack = false,
    this.hasDrawer = false,
    this.actions,
  });

  final String title;
  final bool canBack;
  final bool hasDrawer;
  final List<Widget>? actions;

  @override
  Size get preferredSize =>
      const Size.fromHeight(ConstantsManager.appbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: Components().systemUiOverlayStyle(),
      automaticallyImplyLeading: false,
      title: ScaleText(
        title,
        overflow: TextOverflow.visible,
        style: TextStyle(
          fontSize: 16.0,
          color: theme.colorScheme.primary,
        ),
      ),
      leading: canBack
          ? IconButton(
              onPressed: () {
                Get.back();
              },
              icon: RotatedBox(
                quarterTurns: Components().isRTL() ? 2 : 0,
                child: SvgPicture.asset(
                  IconsManager.backButtonSvg,
                  height: 22.0,
                  width: 22.0,
                  colorFilter: ColorFilter.mode(
                    theme.colorScheme.primary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            )
          : hasDrawer
              ? IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                )
              : null,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: theme.colorScheme.primary,
          height: 1.0,
        ),
      ),
      actions: actions,
    );
  }
}
