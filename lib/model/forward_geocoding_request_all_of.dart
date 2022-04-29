part of openapi.api;

class ForwardGeocodingRequestAllOf {
  /* Freeform search text. */
  String searchText = null;

  MapViewContext mapView = null;
  ForwardGeocodingRequestAllOf();

  @override
  String toString() {
    return 'ForwardGeocodingRequestAllOf[searchText=$searchText, mapView=$mapView, ]';
  }

  ForwardGeocodingRequestAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    searchText = json['searchText'];
    mapView = (json['mapView'] == null)
        ? null
        : MapViewContext.fromJson(json['mapView']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (searchText != null) json['searchText'] = searchText;
    if (mapView != null) json['mapView'] = mapView;
    return json;
  }

  static List<ForwardGeocodingRequestAllOf> listFromJson(List<dynamic> json) {
    return json == null
        ? <ForwardGeocodingRequestAllOf>[]
        : json
            .map((value) => ForwardGeocodingRequestAllOf.fromJson(value))
            .toList();
  }

  static Map<String, ForwardGeocodingRequestAllOf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ForwardGeocodingRequestAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ForwardGeocodingRequestAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ForwardGeocodingRequestAllOf-objects as value to a dart map
  static Map<String, List<ForwardGeocodingRequestAllOf>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<ForwardGeocodingRequestAllOf>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = ForwardGeocodingRequestAllOf.listFromJson(value);
      });
    }
    return map;
  }
}
