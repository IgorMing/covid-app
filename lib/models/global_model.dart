class GlobalModel {
  final int confirmedCases;
  final int deaths;
  final int recovered;

  GlobalModel({this.confirmedCases, this.deaths, this.recovered});

  factory GlobalModel.fromJson(Map<String, dynamic> json) {
    return GlobalModel(
      confirmedCases: json["TotalConfirmed"],
      deaths: json["TotalDeaths"],
      recovered: json["TotalRecovered"],
    );
  }
}
