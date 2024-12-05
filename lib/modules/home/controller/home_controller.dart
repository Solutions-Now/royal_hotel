import 'package:royal_hotel/resources/helpers/all_imports.dart';

class HomeController extends GetxController {
  final AdvertisementsRepository advertisementsRepository = AdvertisementsApi();
  final CategoriesRepository categoriesRepository = CategoriesApi();
  List<AdvertisementsModel> advertisementsList = [];
  List<CategoriesModel> categoriesList = [];
  bool isLoading = true;

  @override
  void onInit() {
    getAdvertisements();
    getCategories();
    super.onInit();
  }

  void getAdvertisements() {
    try {
      isLoading = true;
      advertisementsList = advertisementsRepository.getAdvertisements();
      isLoading = false;
    } catch (e) {
      isLoading = false;
      print('error $e');
    }
  }

  void getCategories() {
    try {
      isLoading = true;
      categoriesList = categoriesRepository.getCategories();
      isLoading = false;
    } catch (e) {
      isLoading = false;
      print('error $e');
    }
  }
}
