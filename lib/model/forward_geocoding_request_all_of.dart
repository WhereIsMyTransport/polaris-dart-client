//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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
  /// [json] if it's non-null, null if [json] is null.
  static ForwardGeocodingRequestAllOf fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ForwardGeocodingRequestAllOf(
        searchText: json[r'searchText'],
        mapView: MapViewContext.fromJson(json[r'mapView']),
    );

  static List<ForwardGeocodingRequestAllOf> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ForwardGeocodingRequestAllOf>[]
      : json.map((dynamic value) => ForwardGeocodingRequestAllOf.fromJson(value)).toList(growable: true == growable);

  static Map<String, ForwardGeocodingRequestAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ForwardGeocodingRequestAllOf>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ForwardGeocodingRequestAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ForwardGeocodingRequestAllOf-objects as value to a dart map
  static Map<String, List<ForwardGeocodingRequestAllOf>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ForwardGeocodingRequestAllOf>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ForwardGeocodingRequestAllOf.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

