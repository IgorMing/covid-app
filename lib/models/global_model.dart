class Global {
  final int confirmedCases;
  final int deaths;
  final int recovered;

  Global({this.confirmedCases, this.deaths, this.recovered});

  factory Global.fromJson(Map<String, dynamic> json) {
    return Global(
      confirmedCases: json["TotalConfirmed"],
      deaths: json["TotalDeaths"],
      recovered: json["TotalRecovered"],
    );
  }
}
