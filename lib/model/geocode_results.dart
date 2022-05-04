//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GeocodeResults {
  /// Returns a new [GeocodeResults] instance.
  GeocodeResults({
    this.results = const [],
  });

  List<PlaceItem> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GeocodeResults &&
     other.results == results;

  @override
  int get hashCode =>
    (results == null ? 0 : results.hashCode);

  @override
  String toString() => 'GeocodeResults[results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = results;
    return json;
  }

  /// Returns a new [GeocodeResults] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GeocodeResults fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GeocodeResults(
        results: PlaceItem.listFromJson(json[r'results']),
    );

  static List<GeocodeResults> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GeocodeResults>[]
      : json.map((dynamic value) => GeocodeResults.fromJson(value)).toList(growable: true == growable);

  static Map<String, GeocodeResults> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GeocodeResults>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GeocodeResults.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GeocodeResults-objects as value to a dart map
  static Map<String, List<GeocodeResults>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GeocodeResults>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GeocodeResults.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

