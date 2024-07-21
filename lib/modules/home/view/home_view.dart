import 'package:card_swiper/card_swiper.dart';
import 'package:royal_hotel/resources/widgets/old_version/explore_item_header_widget.dart';

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
            return Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: Get.width,
                      height: Get.height * 0.5,
                      // color: theme.colorScheme.primary,
                      child: Swiper(
                        autoplay: true,
                        duration: 1000,
                        physics: const NeverScrollableScrollPhysics(),
                        // autoplayDelay: 5000,
                        outer: true,
                        itemBuilder: (BuildContext context, int index) {
                          return SwiperCardWidget(
                            title: controller.adsList[index]['title'],
                            description: controller.adsList[index]
                                ['description'],
                            image: controller.adsList[index]['image'],
                          );
                        },
                        itemCount: controller.adsList.length,
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
                // const SizedBox(height: 16.0),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'data',
                              style: theme.textTheme.titleLarge,
                            ),
                            const SizedBox(height: 8.0),
                            Container(
                              width: Get.width,
                              height: Get.height * 0.20,
                              decoration: BoxDecoration(
                                // color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(16.0),
                                image: DecorationImage(
                                  image: AssetImage(
                                    controller.adsList[index]['image'],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0,
                                ),
                                child: Text(
                                  'الفئة',
                                  style: theme.textTheme.titleLarge!.copyWith(
                                    color: customTheme.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ),
                            // Card(
                            //   color: theme.colorScheme.primary,
                            //   child: ListTile(
                            //     title: Text(
                            //       controller.adsList[index]['title'],
                            //     ),

                            //     leading: Image.asset(
                            //       controller.adsList[index]['image'],
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
