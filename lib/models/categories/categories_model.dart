class CategoriesModel {
  String? nameEn;
  String? nameAr;
  List<ServicesModel>? services;

  CategoriesModel({
    this.nameEn,
    this.nameAr,
    this.services,
  });

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    nameEn = json['nameEn'];
    nameAr = json['nameAr'];
    services = json['services'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nameEn'] = nameEn;
    data['nameAr'] = nameAr;
    data['services'] = services;
    return data;
  }
}

class ServicesModel {
  String? nameEn;
  String? nameAr;
  String? image;

  ServicesModel({
    required this.nameEn,
    required this.nameAr,
    required this.image,
  });

  ServicesModel.fromJson(Map<String, dynamic> json) {
    nameEn = json['nameEn'];
    nameAr = json['nameAr'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nameEn'] = nameEn;
    data['nameAr'] = nameAr;
    data['image'] = image;
    return data;
  }
}
