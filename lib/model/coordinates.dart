//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

class Coordinates {
  /// Returns a new [Coordinates] instance.
  Coordinates({
    @required this.lat,
    @required this.lon,
  });

  /// A latitude value, in the range [-90, 90].
  // minimum: -90
  // maximum: 90
  num lat;

  /// A longitude value, in the range [-180, 180].
  // minimum: -180
  // maximum: 180
  num lon;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Coordinates &&
     other.lat == lat &&
     other.lon == lon;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (lat == null ? 0 : lat.hashCode) +
    (lon == null ? 0 : lon.hashCode);

  @override
  String toString() => 'Coordinates[lat=$lat, lon=$lon]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'lat'] = lat;
      json[r'lon'] = lon;
    return json;
  }

  /// Returns a new [Coordinates] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Coordinates fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Coordinates(
        lat: json[r'lat'] == null
          ? null
          : num.parse(json[r'lat'].toString()),
        lon: json[r'lon'] == null
          ? null
          : num.parse(json[r'lon'].toString()),
      );
    }
    return null;
  }

  static List<Coordinates> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Coordinates.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Coordinates>[];

  static Map<String, Coordinates> mapFromJson(dynamic json) {
    final map = <String, Coordinates>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Coordinates.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Coordinates-objects as value to a dart map
  static Map<String, List<Coordinates>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Coordinates>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Coordinates.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

