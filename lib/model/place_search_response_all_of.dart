//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

class PlaceSearchResponseAllOf {
  /// Returns a new [PlaceSearchResponseAllOf] instance.
  PlaceSearchResponseAllOf({
    this.data,
  });

  PlaceSearchResponseAllOfData data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlaceSearchResponseAllOf &&
     other.data == data;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (data == null ? 0 : data.hashCode);

  @override
  String toString() => 'PlaceSearchResponseAllOf[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (data != null) {
      json[r'data'] = data;
    }
    return json;
  }

  /// Returns a new [PlaceSearchResponseAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlaceSearchResponseAllOf fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PlaceSearchResponseAllOf(
        data: PlaceSearchResponseAllOfData.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<PlaceSearchResponseAllOf> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PlaceSearchResponseAllOf.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PlaceSearchResponseAllOf>[];

  static Map<String, PlaceSearchResponseAllOf> mapFromJson(dynamic json) {
    final map = <String, PlaceSearchResponseAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PlaceSearchResponseAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PlaceSearchResponseAllOf-objects as value to a dart map
  static Map<String, List<PlaceSearchResponseAllOf>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PlaceSearchResponseAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PlaceSearchResponseAllOf.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

