class CountryModel {
  final String code;
  final String slug;
  final String name;

  CountryModel({this.name, this.slug, this.code});

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      code: json['CountryCode'],
      slug: json['Slug'],
      name: json['Country'],
    );
  }
}
