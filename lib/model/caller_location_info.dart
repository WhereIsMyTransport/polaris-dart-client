//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

class CallerLocationInfo {
  /// Returns a new [CallerLocationInfo] instance.
  CallerLocationInfo({
    @required this.available,
    this.coordinates,
  });

  /// True when the location is available, false otherwise.
  bool available;

  Coordinates coordinates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CallerLocationInfo &&
     other.available == available &&
     other.coordinates == coordinates;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (available == null ? 0 : available.hashCode) +
    (coordinates == null ? 0 : coordinates.hashCode);

  @override
  String toString() => 'CallerLocationInfo[available=$available, coordinates=$coordinates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'available'] = available;
    if (coordinates != null) {
      json[r'coordinates'] = coordinates;
    }
    return json;
  }

  /// Returns a new [CallerLocationInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CallerLocationInfo fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CallerLocationInfo(
        available: mapValueOfType<bool>(json, r'available'),
        coordinates: Coordinates.fromJson(json[r'coordinates']),
      );
    }
    return null;
  }

  static List<CallerLocationInfo> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CallerLocationInfo.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CallerLocationInfo>[];

  static Map<String, CallerLocationInfo> mapFromJson(dynamic json) {
    final map = <String, CallerLocationInfo>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CallerLocationInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CallerLocationInfo-objects as value to a dart map
  static Map<String, List<CallerLocationInfo>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CallerLocationInfo>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CallerLocationInfo.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

