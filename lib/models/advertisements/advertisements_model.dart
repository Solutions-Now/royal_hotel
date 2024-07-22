class AdvertisementsModel {
  String? titleEn;
  String? titleAr;
  String? descriptionEn;
  String? descriptionAr;
  String? image;

  AdvertisementsModel({
    this.titleEn,
    this.titleAr,
    this.descriptionEn,
    this.descriptionAr,
    this.image,
  });

  AdvertisementsModel.fromJson(Map<String, dynamic> json) {
    titleEn = json['titleEn'];
    titleAr = json['titleAr'];
    descriptionEn = json['descriptionEn'];
    descriptionAr = json['descriptionAr'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['titleEn'] = titleEn;
    data['titleAr'] = titleAr;
    data['descriptionEn'] = descriptionEn;
    data['descriptionAr'] = descriptionAr;
    data['image'] = image;
    return data;
  }
}
