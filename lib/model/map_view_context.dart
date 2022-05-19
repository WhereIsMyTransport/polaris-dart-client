//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

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
  // ignore: unnecessary_parenthesis
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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MapViewContext fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MapViewContext(
        topLeft: GeoPosition.fromJson(json[r'topLeft']),
        bottomRight: GeoPosition.fromJson(json[r'bottomRight']),
      );
    }
    return null;
  }

  static List<MapViewContext> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MapViewContext.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MapViewContext>[];

  static Map<String, MapViewContext> mapFromJson(dynamic json) {
    final map = <String, MapViewContext>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MapViewContext.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MapViewContext-objects as value to a dart map
  static Map<String, List<MapViewContext>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MapViewContext>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MapViewContext.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

