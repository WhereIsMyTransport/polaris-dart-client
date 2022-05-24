//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

class LocationLookupRequestAllOf {
  /// Returns a new [LocationLookupRequestAllOf] instance.
  LocationLookupRequestAllOf({
    this.callerLocation,
    @required this.language,
  });

  CallerLocationInfo callerLocation;

  /// The ISO 639-1 code of the input and (preferred) output language. Note: The service does not currently distinguish between regional differences in languages, as captured by the IETF Language Tag standard At the time of writing the supported values were: en, es and th References: - https://en.wikipedia.org/wiki/IETF_language_tag - https://en.wikipedia.org/wiki/ISO_639 
  String language;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocationLookupRequestAllOf &&
     other.callerLocation == callerLocation &&
     other.language == language;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (callerLocation == null ? 0 : callerLocation.hashCode) +
    (language == null ? 0 : language.hashCode);

  @override
  String toString() => 'LocationLookupRequestAllOf[callerLocation=$callerLocation, language=$language]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (callerLocation != null) {
      json[r'callerLocation'] = callerLocation;
    }
      json[r'language'] = language;
    return json;
  }

  /// Returns a new [LocationLookupRequestAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocationLookupRequestAllOf fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return LocationLookupRequestAllOf(
        callerLocation: CallerLocationInfo.fromJson(json[r'callerLocation']),
        language: mapValueOfType<String>(json, r'language'),
      );
    }
    return null;
  }

  static List<LocationLookupRequestAllOf> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(LocationLookupRequestAllOf.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <LocationLookupRequestAllOf>[];

  static Map<String, LocationLookupRequestAllOf> mapFromJson(dynamic json) {
    final map = <String, LocationLookupRequestAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = LocationLookupRequestAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LocationLookupRequestAllOf-objects as value to a dart map
  static Map<String, List<LocationLookupRequestAllOf>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<LocationLookupRequestAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = LocationLookupRequestAllOf.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

