class Country {
  final String code;
  final String slug;
  final String name;

  Country({this.name, this.slug, this.code});

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      code: json['CountryCode'],
      slug: json['Slug'],
      name: json['Country'],
    );
  }
}
