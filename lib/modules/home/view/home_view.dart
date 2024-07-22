import '../../../resources/helpers/all_imports.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final HomeController homeController = Get.put(
    HomeController(),
  );

  @override
  Widget build(BuildContext context) {
    return UpgradeDialog(
      child: Scaffold(
        appBar: MainAppBar(
          title: localizations.home,
          hasDrawer: true,
        ),
        drawer: const DrawerHome(),
        body: GetBuilder<HomeController>(
          builder: (controller) {
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Stack(
                    children: [
                      SizedBox(
                        width: Get.width,
                        height: Get.height * 0.5,
                        child: Swiper(
                          autoplay: true,
                          duration: 1000,
                          physics: const NeverScrollableScrollPhysics(),
                          // autoplayDelay: 5000,
                          outer: true,
                          itemBuilder: (BuildContext context, int index) {
                            final AdvertisementsModel advertisementsList =
                                controller.advertisementsList[index];
                            return SwiperCardWidget(
                              title: Components().isRTL()
                                  ? advertisementsList.titleAr!
                                  : advertisementsList.titleEn!,
                              description: Components().isRTL()
                                  ? advertisementsList.descriptionAr!
                                  : advertisementsList.descriptionEn!,
                              image: advertisementsList.image!,
                            );
                          },
                          itemCount: controller.advertisementsList.length,
                          pagination: SwiperPagination(
                            // alignment: Alignment.center,
                            builder: DotSwiperPaginationBuilder(
                              size: 10.0,
                              activeSize: 12.0,
                              activeColor: theme.colorScheme.primary,
                              color: theme.colorScheme.secondary,
                              space: 5.0,
                            ),
                          ),
                          // control: SwiperControl(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: UnderlineTextField(
                          label: localizations.search,
                          suffixIcon: Icon(
                            Icons.search_rounded,
                            color: theme.colorScheme.primary,
                          ),
                          textInputType: TextInputType.emailAddress,
                          // controller: controller.emailController,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CategoryListWidget(
                  categoriesList: controller.categoriesList,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
