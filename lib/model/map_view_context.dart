part of openapi.api;

class MapViewContext {
  GeoPosition topLeft = null;

  GeoPosition bottomRight = null;
  MapViewContext();

  @override
  String toString() {
    return 'MapViewContext[topLeft=$topLeft, bottomRight=$bottomRight, ]';
  }

  MapViewContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    topLeft = (json['topLeft'] == null)
        ? null
        : GeoPosition.fromJson(json['topLeft']);
    bottomRight = (json['bottomRight'] == null)
        ? null
        : GeoPosition.fromJson(json['bottomRight']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (topLeft != null) json['topLeft'] = topLeft;
    if (bottomRight != null) json['bottomRight'] = bottomRight;
    return json;
  }

  static List<MapViewContext> listFromJson(List<dynamic> json) {
    return json == null
        ? <MapViewContext>[]
        : json.map((value) => MapViewContext.fromJson(value)).toList();
  }

  static Map<String, MapViewContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MapViewContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MapViewContext.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MapViewContext-objects as value to a dart map
  static Map<String, List<MapViewContext>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<MapViewContext>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = MapViewContext.listFromJson(value);
      });
    }
    return map;
  }
}
