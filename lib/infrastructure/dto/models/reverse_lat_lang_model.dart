class LatLangResultModel {
  final String lat;
  final String lon;
  final String category;
  final String addresstype;
  final String name;
  final String displayName;
  final Address address;

  LatLangResultModel({
    required this.lat,
    required this.lon,
    required this.category,
    required this.addresstype,
    required this.name,
    required this.displayName,
    required this.address,
  });

  factory LatLangResultModel.fromJson(Map<String, dynamic> json) => LatLangResultModel(
        lat: json["lat"],
        lon: json["lon"],
        category: json["category"],
        addresstype: json["addresstype"],
        name: json["name"],
        displayName: json["display_name"],
        address: Address.fromJson(json["address"]),
      );
}

class Address {
  final String? amenity;
  final String? houseNumber;
  final String? road;
  final String? neighbourhood;
  final String? county;
  final String? city;
  final String? iso31662Lvl4;
  final String? postcode;
  final String? country;
  final String? countryCode;

  Address({
    this.amenity,
    this.houseNumber,
    this.road,
    this.neighbourhood,
    this.county,
    this.city,
    this.iso31662Lvl4,
    this.postcode,
    this.country,
    this.countryCode,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        amenity: json["amenity"],
        houseNumber: json["house_number"],
        road: json["road"],
        neighbourhood: json["neighbourhood"],
        county: json["county"],
        city: json["city"],
        iso31662Lvl4: json["ISO3166-2-lvl4"],
        postcode: json["postcode"],
        country: json["country"],
        countryCode: json["country_code"],
      );
}
