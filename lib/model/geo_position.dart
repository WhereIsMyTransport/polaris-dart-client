//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GeoPosition {
  /// Returns a new [GeoPosition] instance.
  GeoPosition({
    @required this.latitude,
    @required this.longitude,
  });

  /// A latitude value, in the range [-90, 90].
  num latitude;

  /// A longitue value, in the range [-180, 180].
  num longitude;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GeoPosition &&
     other.latitude == latitude &&
     other.longitude == longitude;

  @override
  int get hashCode =>
    (latitude == null ? 0 : latitude.hashCode) +
    (longitude == null ? 0 : longitude.hashCode);

  @override
  String toString() => 'GeoPosition[latitude=$latitude, longitude=$longitude]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'latitude'] = latitude;
      json[r'longitude'] = longitude;
    return json;
  }

  /// Returns a new [GeoPosition] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GeoPosition fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GeoPosition(
        latitude: json[r'latitude'] == null ?
          null :
          json[r'latitude'].toDouble(),
        longitude: json[r'longitude'] == null ?
          null :
          json[r'longitude'].toDouble(),
    );

  static List<GeoPosition> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GeoPosition>[]
      : json.map((dynamic value) => GeoPosition.fromJson(value)).toList(growable: true == growable);

  static Map<String, GeoPosition> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GeoPosition>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GeoPosition.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GeoPosition-objects as value to a dart map
  static Map<String, List<GeoPosition>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GeoPosition>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GeoPosition.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

