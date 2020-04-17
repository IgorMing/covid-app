class Country {
  final String iso;
  final String id;
  final String name;

  Country({this.name, this.id, this.iso});

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      iso: json['ISO2'],
      id: json['Slug'],
      name: json['Country'],
    );
  }
}
