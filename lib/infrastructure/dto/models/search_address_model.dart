class SearchAddressResultModel {
  final int placeId;
  final String licence;
  final String osmType;
  final int osmId;
  final String lat;
  final String lon;
  final String category;
  final String type;
  final int placeRank;
  final double importance;
  final String addresstype;
  final String name;
  final String displayName;
  final Address address;
  final List<String> boundingbox;

  SearchAddressResultModel({
    required this.placeId,
    required this.licence,
    required this.osmType,
    required this.osmId,
    required this.lat,
    required this.lon,
    required this.category,
    required this.type,
    required this.placeRank,
    required this.importance,
    required this.addresstype,
    required this.name,
    required this.displayName,
    required this.address,
    required this.boundingbox,
  });

  factory SearchAddressResultModel.fromJson(Map<String, dynamic> json) => SearchAddressResultModel(
        placeId: json["place_id"],
        licence: json["licence"],
        osmType: json["osm_type"],
        osmId: json["osm_id"],
        lat: json["lat"],
        lon: json["lon"],
        category: json["category"],
        type: json["type"],
        placeRank: json["place_rank"],
        importance: json["importance"]?.toDouble(),
        addresstype: json["addresstype"],
        name: json["name"],
        displayName: json["display_name"],
        address: Address.fromJson(json["address"]),
        boundingbox: List<String>.from(json["boundingbox"].map((x) => x)),
      );
}

class Address {
  final String? historic;
  final String? landuse;
  final String? road;
  final String? village;
  final String? neighbourhood;
  final String? city;
  final String? county;
  final String? state;
  final String? iso31662Lvl4;
  final String? postcode;
  final String? country;
  final String? countryCode;
  final String? aeroway;
  final String? houseNumber;

  Address({
    this.historic,
    this.landuse,
    this.road,
    this.village,
    this.neighbourhood,
    this.city,
    this.county,
    this.state,
    this.iso31662Lvl4,
    this.postcode,
    this.country,
    this.countryCode,
    this.aeroway,
    this.houseNumber,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        historic: json["historic"],
        landuse: json["landuse"],
        road: json["road"],
        village: json["village"],
        neighbourhood: json["neighbourhood"],
        city: json["city"],
        county: json["county"],
        state: json["state"],
        iso31662Lvl4: json["ISO3166-2-lvl4"],
        postcode: json["postcode"],
        country: json["country"],
        countryCode: json["country_code"],
        aeroway: json["aeroway"],
        houseNumber: json["house_number"],
      );
}
