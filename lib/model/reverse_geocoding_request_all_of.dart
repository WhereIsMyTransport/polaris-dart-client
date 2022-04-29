part of openapi.api;

class ReverseGeocodingRequestAllOf {
  GeoPosition location = null;
  ReverseGeocodingRequestAllOf();

  @override
  String toString() {
    return 'ReverseGeocodingRequestAllOf[location=$location, ]';
  }

  ReverseGeocodingRequestAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    location = (json['location'] == null)
        ? null
        : GeoPosition.fromJson(json['location']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (location != null) json['location'] = location;
    return json;
  }

  static List<ReverseGeocodingRequestAllOf> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReverseGeocodingRequestAllOf>[]
        : json
            .map((value) => ReverseGeocodingRequestAllOf.fromJson(value))
            .toList();
  }

  static Map<String, ReverseGeocodingRequestAllOf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReverseGeocodingRequestAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReverseGeocodingRequestAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReverseGeocodingRequestAllOf-objects as value to a dart map
  static Map<String, List<ReverseGeocodingRequestAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<ReverseGeocodingRequestAllOf>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = ReverseGeocodingRequestAllOf.listFromJson(value);
      });
    }
    return map;
  }
}
