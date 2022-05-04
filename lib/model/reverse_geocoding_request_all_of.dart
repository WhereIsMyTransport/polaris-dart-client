//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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
    (location == null ? 0 : location.hashCode);

  @override
  String toString() => 'ReverseGeocodingRequestAllOf[location=$location]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'location'] = location;
    return json;
  }

  /// Returns a new [ReverseGeocodingRequestAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReverseGeocodingRequestAllOf fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ReverseGeocodingRequestAllOf(
        location: GeoPosition.fromJson(json[r'location']),
    );

  static List<ReverseGeocodingRequestAllOf> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ReverseGeocodingRequestAllOf>[]
      : json.map((dynamic value) => ReverseGeocodingRequestAllOf.fromJson(value)).toList(growable: true == growable);

  static Map<String, ReverseGeocodingRequestAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ReverseGeocodingRequestAllOf>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ReverseGeocodingRequestAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReverseGeocodingRequestAllOf-objects as value to a dart map
  static Map<String, List<ReverseGeocodingRequestAllOf>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ReverseGeocodingRequestAllOf>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ReverseGeocodingRequestAllOf.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

