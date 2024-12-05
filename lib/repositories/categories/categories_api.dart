import '../../resources/helpers/all_imports.dart';

class CategoriesApi extends CategoriesRepository {
  @override
  List<CategoriesModel> getCategories() {
    final categoriesList = <CategoriesModel>[
      CategoriesModel(
        nameEn: 'Outlets',
        nameAr: 'المحلات',
        services: [
          ServicesModel(
            nameEn: 'Restaurants',
            nameAr: 'المطاعم',
            image: ImagesManager.restaurants,
          ),
          ServicesModel(
            nameEn: 'Landry Shops',
            nameAr: 'محلات الغسيل',
            image: ImagesManager.landryShops,
          ),
        ],
      ),
      CategoriesModel(
        nameEn: 'Resrvations',
        nameAr: 'الحجوزات',
        services: [
          ServicesModel(
            nameEn: 'Rooms',
            nameAr: 'الغرف',
            image: ImagesManager.rooms,
          ),
          ServicesModel(
            nameEn: 'Meeting & Events',
            nameAr: 'الاجتماعات والفعاليات',
            image: ImagesManager.meetingAndEvents,
          ),
        ],
      ),
      CategoriesModel(
        nameEn: 'Spa & Fitness',
        nameAr: 'السبا واللياقة',
        services: [
          ServicesModel(
            nameEn: 'Spa & Fitness',
            nameAr: 'السبا واللياقة',
            image: ImagesManager.spaAndFitness,
          ),
        ],
      ),
    ];
    return categoriesList;
  }
}
