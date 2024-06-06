class Country {
  final String money;
  final String continent;
  final String size;
  final String language;
  final String population;
  final String capital;
  final String coord;
  final String name;
  final String fullName;
  final String urlImage;

  Country({
    required this.name,
    required this.fullName,
    required this.urlImage,
    required this.money,
    required this.continent,
    required this.size,
    required this.language,
    required this.population,
    required this.capital,
    required this.coord,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      money: json['money'],
      continent: json['continent'],
      size: json['size'],
      language: json['language'],
      population: json['population'],
      capital: json['capital'],
      coord: json['coord'],
      name: json['name'],
      fullName: json['fullName'],
      urlImage: json['urlImage'],
    );
  }
}
