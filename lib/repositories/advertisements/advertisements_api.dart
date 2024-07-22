import '../../resources/helpers/all_imports.dart';

class AdvertisementsApi extends AdvertisementsRepository {
  @override
  List<AdvertisementsModel> getAdvertisements() {
    final advertisementsList = <AdvertisementsModel>[
      AdvertisementsModel(
        titleEn: 'First Ad',
        titleAr: 'اعلان اول',
        descriptionEn: 'First Ad Description',
        descriptionAr: 'وصف الاعلان الاول',
        image: ImagesManager.ads1,
      ),
      AdvertisementsModel(
        titleEn: 'Second Ad',
        titleAr: 'اعلان ثاني',
        descriptionEn: 'Second Ad Description',
        descriptionAr: 'وصف الاعلان الثاني',
        image: ImagesManager.ads2,
      ),
      AdvertisementsModel(
        titleEn: 'Third Ad',
        titleAr: 'اعلان ثالث',
        descriptionEn: 'Third Ad Description',
        descriptionAr: 'وصف الاعلان الثالث',
        image: ImagesManager.ads3,
      ),
      AdvertisementsModel(
        titleEn: 'Fourth Ad',
        titleAr: 'اعلان رابع',
        descriptionEn: 'Fourth Ad Description',
        descriptionAr: 'وصف الاعلان الرابع',
        image: ImagesManager.ads4,
      ),
    ];
    return advertisementsList;
  }
}
