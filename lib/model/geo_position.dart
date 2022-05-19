//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

class GeoPosition {
  /// Returns a new [GeoPosition] instance.
  GeoPosition({
    @required this.latitude,
    @required this.longitude,
  });

  /// A latitude value, in the range [-90, 90].
  num latitude;

  /// A longitude value, in the range [-180, 180].
  num longitude;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GeoPosition &&
     other.latitude == latitude &&
     other.longitude == longitude;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GeoPosition fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GeoPosition(
        latitude: json[r'latitude'] == null
          ? null
          : num.parse(json[r'latitude'].toString()),
        longitude: json[r'longitude'] == null
          ? null
          : num.parse(json[r'longitude'].toString()),
      );
    }
    return null;
  }

  static List<GeoPosition> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GeoPosition.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GeoPosition>[];

  static Map<String, GeoPosition> mapFromJson(dynamic json) {
    final map = <String, GeoPosition>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GeoPosition.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GeoPosition-objects as value to a dart map
  static Map<String, List<GeoPosition>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GeoPosition>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GeoPosition.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

