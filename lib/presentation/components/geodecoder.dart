import 'package:yandex_geocoder/yandex_geocoder.dart';

class GeocoderService {
  final YandexGeocoder geocoder;

  GeocoderService({required String apiKey}) : geocoder = YandexGeocoder(apiKey: "dc40f6be-0f3d-4889-ba75-fcb1adac0b7c");

  Future convertToAddress({required double latitude, required double longitude}) async {
    List<String> district = [];
    Map<dynamic, dynamic> address = {
      "country": "",
      "province": "",
      "locality": "",
      "district": district,
      "area": '',
      "street": '',
      "metro": '',
      "hydro": '',
      "house": "",
      "unknown": "",
    };

    final GeocodeResponse geocodeFromPoint = await geocoder.getGeocode(GeocodeRequest(
      geocode: PointGeocode(latitude: latitude, longitude: longitude),
      lang: Lang.ru,
    ));
    dynamic a = geocodeFromPoint.firstAddress?.components;
    geocodeFromPoint.firstAddress?.components?.forEach((element) {
      if (element.kind == KindResponse) {
        address['country'] = element.name;
      } else if (element.kind == KindResponse.province) {
        address['province'] = element.name;
      } else if (element.kind == KindResponse.locality) {
        address['locality'] = element.name;
      } else if (element.kind == KindResponse.area) {
        address['area'] = element.name;
      } else if (element.kind == KindResponse.metro) {
        address['metro'] = element.name;
      } else if (element.kind == KindResponse.hydro) {
        address['hydro'] = element.name;
      } else if (element.kind == KindResponse.district) {
        district.add(element.name ?? '');
        address['district'] = district;
      } else if (element.kind == KindResponse.street) {
        address['street'] = element.name;
      } else if (element.kind == KindResponse.house) {
        address['house'] = element.name;
      } else if (element.kind == KindResponse.unknown) {
        address['unknown'] = element.name;
      }
    });
    print("line $a");
    print("line $address");
    return address;
  }

  Future<GeocodeResponse> convertToPoint({required String address}) async {
    final GeocodeResponse geocodeFromAddress = await geocoder.getGeocode(GeocodeRequest(
      geocode: AddressGeocode(address: address),
      lang: Lang.ru,
    ));
    return geocodeFromAddress;
  }
}
