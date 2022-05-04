//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MapViewContext {
  /// Returns a new [MapViewContext] instance.
  MapViewContext({
    @required this.topLeft,
    @required this.bottomRight,
  });

  GeoPosition topLeft;

  GeoPosition bottomRight;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MapViewContext &&
     other.topLeft == topLeft &&
     other.bottomRight == bottomRight;

  @override
  int get hashCode =>
    (topLeft == null ? 0 : topLeft.hashCode) +
    (bottomRight == null ? 0 : bottomRight.hashCode);

  @override
  String toString() => 'MapViewContext[topLeft=$topLeft, bottomRight=$bottomRight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'topLeft'] = topLeft;
      json[r'bottomRight'] = bottomRight;
    return json;
  }

  /// Returns a new [MapViewContext] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MapViewContext fromJson(Map<String, dynamic> json) => json == null
    ? null
    : MapViewContext(
        topLeft: GeoPosition.fromJson(json[r'topLeft']),
        bottomRight: GeoPosition.fromJson(json[r'bottomRight']),
    );

  static List<MapViewContext> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <MapViewContext>[]
      : json.map((dynamic value) => MapViewContext.fromJson(value)).toList(growable: true == growable);

  static Map<String, MapViewContext> mapFromJson(Map<String, dynamic> json) {
    final map = <String, MapViewContext>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = MapViewContext.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MapViewContext-objects as value to a dart map
  static Map<String, List<MapViewContext>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MapViewContext>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = MapViewContext.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

