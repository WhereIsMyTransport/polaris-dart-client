part of openapi.api;

class GeoPosition {
  /* A latitude value, in the range [-90, 90]. */
  num latitude = null;

  /* A longitude value, in the range [-180, 180]. */
  num longitude = null;

  GeoPosition();

  @override
  String toString() {
    return 'GeoPosition[latitude=$latitude, longitude=$longitude, ]';
  }

  GeoPosition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (latitude != null) json['latitude'] = latitude;
    if (longitude != null) json['longitude'] = longitude;
    return json;
  }

  static List<GeoPosition> listFromJson(List<dynamic> json) {
    return json == null
        ? <GeoPosition>[]
        : json.map((value) => GeoPosition.fromJson(value)).toList();
  }

  static Map<String, GeoPosition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GeoPosition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = GeoPosition.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GeoPosition-objects as value to a dart map
  static Map<String, List<GeoPosition>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<GeoPosition>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = GeoPosition.listFromJson(value);
      });
    }
    return map;
  }
}
