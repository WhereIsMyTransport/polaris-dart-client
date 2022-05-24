//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

class ReverseGeocodingRequestAllOf {
  /// Returns a new [ReverseGeocodingRequestAllOf] instance.
  ReverseGeocodingRequestAllOf({
    @required this.location,
  });

  GeoPosition location;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReverseGeocodingRequestAllOf &&
     other.location == location;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (location == null ? 0 : location.hashCode);

  @override
  String toString() => 'ReverseGeocodingRequestAllOf[location=$location]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'location'] = location;
    return json;
  }

  /// Returns a new [ReverseGeocodingRequestAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReverseGeocodingRequestAllOf fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ReverseGeocodingRequestAllOf(
        location: GeoPosition.fromJson(json[r'location']),
      );
    }
    return null;
  }

  static List<ReverseGeocodingRequestAllOf> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ReverseGeocodingRequestAllOf.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ReverseGeocodingRequestAllOf>[];

  static Map<String, ReverseGeocodingRequestAllOf> mapFromJson(dynamic json) {
    final map = <String, ReverseGeocodingRequestAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ReverseGeocodingRequestAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReverseGeocodingRequestAllOf-objects as value to a dart map
  static Map<String, List<ReverseGeocodingRequestAllOf>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ReverseGeocodingRequestAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ReverseGeocodingRequestAllOf.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

