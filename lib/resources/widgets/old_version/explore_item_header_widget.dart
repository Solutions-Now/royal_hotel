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
          color: theme.colorScheme.primary,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Components().isRTL()
              ? Alignment.bottomLeft
              : Alignment.bottomRight,
          child: Container(
            // width: Get.width,
            // height: Get.height * 0.5,
            // color: theme.colorScheme.primary,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
        ),
      ],
    );
  }
}
