import 'package:royal_hotel/resources/helpers/all_imports.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
    required this.categoriesList,
  });

  final List<CategoriesModel> categoriesList;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: categoriesList.length,
      itemBuilder: (BuildContext context, int index) {
        final CategoriesModel categories = categoriesList[index];
        return Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Components().isRTL() ? categories.nameAr! : categories.nameEn!,
                style: theme.textTheme.titleLarge!.copyWith(
                  color: theme.colorScheme.primary,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: Get.height * 0.20,
                child: ListView.separated(
                  itemCount: categories.services!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    final ServicesModel services = categories.services![index];
                    return Container(
                      width: Get.width * 0.85,
                      height: Get.height * 0.20,
                      decoration: BoxDecoration(
                        // color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(16.0),
                        image: DecorationImage(
                          image: AssetImage(
                            services.image!,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary.withOpacity(0.75),
                            borderRadius: BorderRadius.only(
                              topLeft: Components().isRTL()
                                  ? const Radius.circular(0.0)
                                  : const Radius.circular(16.0),
                              topRight: Components().isRTL()
                                  ? const Radius.circular(16.0)
                                  : const Radius.circular(0.0),
                              bottomLeft: Components().isRTL()
                                  ? const Radius.circular(16.0)
                                  : const Radius.circular(0.0),
                              bottomRight: Components().isRTL()
                                  ? const Radius.circular(0.0)
                                  : const Radius.circular(16.0),
                            ),
                          ),
                          child: Text(
                            Components().isRTL()
                                ? services.nameAr!
                                : services.nameEn!,
                            style: theme.textTheme.titleLarge!.copyWith(
                              color: customTheme.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 8.0);
                  },
                ),
              ),
              // Container(
              //   width: Get.width,
              //   height: Get.height * 0.20,
              //   decoration: BoxDecoration(
              //     // color: theme.colorScheme.primary,
              //     borderRadius: BorderRadius.circular(16.0),
              //     image: DecorationImage(
              //       image: AssetImage(
              //         controller.adsList[index]['image'],
              //       ),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(
              //       horizontal: 16.0,
              //       vertical: 8.0,
              //     ),
              //     child: Text(
              //       'الفئة',
              //       style: theme.textTheme.titleLarge!.copyWith(
              //         color: customTheme.white,
              //         fontSize: 20.0,
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        );
      },
    );
  }
}
