class Country {
  final String abbreviation;
  final String id;
  final String name;

  Country({this.name, this.id, this.abbreviation});

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      abbreviation: json['ISO2'],
      id: json['Slug'],
      name: json['Country'],
    );
  }
}
