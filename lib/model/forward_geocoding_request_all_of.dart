//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

class ForwardGeocodingRequestAllOf {
  /// Returns a new [ForwardGeocodingRequestAllOf] instance.
  ForwardGeocodingRequestAllOf({
    @required this.searchText,
    this.mapView,
  });

  /// Freeform search text.
  String searchText;

  MapViewContext mapView;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ForwardGeocodingRequestAllOf &&
     other.searchText == searchText &&
     other.mapView == mapView;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (searchText == null ? 0 : searchText.hashCode) +
    (mapView == null ? 0 : mapView.hashCode);

  @override
  String toString() => 'ForwardGeocodingRequestAllOf[searchText=$searchText, mapView=$mapView]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'searchText'] = searchText;
    if (mapView != null) {
      json[r'mapView'] = mapView;
    }
    return json;
  }

  /// Returns a new [ForwardGeocodingRequestAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ForwardGeocodingRequestAllOf fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ForwardGeocodingRequestAllOf(
        searchText: mapValueOfType<String>(json, r'searchText'),
        mapView: MapViewContext.fromJson(json[r'mapView']),
      );
    }
    return null;
  }

  static List<ForwardGeocodingRequestAllOf> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ForwardGeocodingRequestAllOf.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ForwardGeocodingRequestAllOf>[];

  static Map<String, ForwardGeocodingRequestAllOf> mapFromJson(dynamic json) {
    final map = <String, ForwardGeocodingRequestAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ForwardGeocodingRequestAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ForwardGeocodingRequestAllOf-objects as value to a dart map
  static Map<String, List<ForwardGeocodingRequestAllOf>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ForwardGeocodingRequestAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ForwardGeocodingRequestAllOf.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

