part of openapi.api;

class GeocodeResults {
  List<PlaceItem> results = [];
  GeocodeResults();

  @override
  String toString() {
    return 'GeocodeResults[results=$results, ]';
  }

  GeocodeResults.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    results = (json['results'] == null)
        ? null
        : PlaceItem.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (results != null) json['results'] = results;
    return json;
  }

  static List<GeocodeResults> listFromJson(List<dynamic> json) {
    return json == null
        ? <GeocodeResults>[]
        : json.map((value) => GeocodeResults.fromJson(value)).toList();
  }

  static Map<String, GeocodeResults> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GeocodeResults>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = GeocodeResults.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GeocodeResults-objects as value to a dart map
  static Map<String, List<GeocodeResults>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<GeocodeResults>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = GeocodeResults.listFromJson(value);
      });
    }
    return map;
  }
}
