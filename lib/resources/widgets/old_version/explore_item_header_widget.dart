import 'package:royal_hotel/resources/helpers/all_imports.dart';

class SwiperCardWidget extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const SwiperCardWidget({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: Get.width,
          height: Get.height * 0.5,
          // decoration: ,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Components().isRTL()
              ? Alignment.bottomRight
              : Alignment.bottomLeft,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.75),
              borderRadius: BorderRadius.only(
                topLeft: Components().isRTL()
                    ? const Radius.circular(16.0)
                    : const Radius.circular(0.0),
                topRight: Components().isRTL()
                    ? const Radius.circular(0.0)
                    : const Radius.circular(16.0),
                bottomLeft: const Radius.circular(0.0),
                bottomRight: const Radius.circular(0.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleLarge!.copyWith(
                    color: customTheme.white,
                    fontSize: 24.0,
                  ),
                ),
                Text(
                  description,
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: customTheme.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
