part of openapi.api;

class Geocoder {
  /// The underlying value of this enum member.
  final String value;

  const Geocoder._internal(this.value);

  /// Denotes the geocoder where the item was sourced from.
  static const Geocoder mapbox_ = const Geocoder._internal("mapbox");

  /// Denotes the geocoder where the item was sourced from.
  static const Geocoder stops_ = const Geocoder._internal("stops");

  /// Denotes the geocoder where the item was sourced from.
  static const Geocoder landmarks_ = const Geocoder._internal("landmarks");

  static Geocoder fromJson(String value) {
    return new GeocoderTypeTransformer().decode(value);
  }

  static List<Geocoder> listFromJson(List<dynamic> json) {
    return json == null
        ? <Geocoder>[]
        : json.map((value) => Geocoder.fromJson(value)).toList();
  }
}

class GeocoderTypeTransformer {
  dynamic encode(Geocoder data) {
    return data.value;
  }

  Geocoder decode(dynamic data) {
    switch (data) {
      case "mapbox":
        return Geocoder.mapbox_;
      case "stops":
        return Geocoder.stops_;
      case "landmarks":
        return Geocoder.landmarks_;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }
}
