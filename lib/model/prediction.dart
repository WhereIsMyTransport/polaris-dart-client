//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

class Prediction {
  /// Returns a new [Prediction] instance.
  Prediction({
    @required this.id,
    @required this.displayText,
    @required this.geocoder,
    this.distanceAway,
  });

  /// A unique identifier for this candidate result, in the context of this search session and its current state 
  String id;

  /// Contains the text describing the place, whether it be a street address, landmark or other point of interest. 
  String displayText;

  /// A short name identifying the geocoder Polaris obtained the location/place information from. Open to extension. Clients MUST not base logic on the values herein. 
  String geocoder;

  /// If the caller provided a location, this contains the _straight line_ distance between that coordinate and that of the place in meters.  Note: This calculation assumes that these locations are reachable. _Optional_ since a location may not have been provided in the request. 
  // minimum: 0
  int distanceAway;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Prediction &&
     other.id == id &&
     other.displayText == displayText &&
     other.geocoder == geocoder &&
     other.distanceAway == distanceAway;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (displayText == null ? 0 : displayText.hashCode) +
    (geocoder == null ? 0 : geocoder.hashCode) +
    (distanceAway == null ? 0 : distanceAway.hashCode);

  @override
  String toString() => 'Prediction[id=$id, displayText=$displayText, geocoder=$geocoder, distanceAway=$distanceAway]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'displayText'] = displayText;
      json[r'geocoder'] = geocoder;
    if (distanceAway != null) {
      json[r'distanceAway'] = distanceAway;
    }
    return json;
  }

  /// Returns a new [Prediction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Prediction fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Prediction(
        id: mapValueOfType<String>(json, r'id'),
        displayText: mapValueOfType<String>(json, r'displayText'),
        geocoder: mapValueOfType<String>(json, r'geocoder'),
        distanceAway: mapValueOfType<int>(json, r'distanceAway'),
      );
    }
    return null;
  }

  static List<Prediction> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Prediction.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Prediction>[];

  static Map<String, Prediction> mapFromJson(dynamic json) {
    final map = <String, Prediction>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Prediction.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Prediction-objects as value to a dart map
  static Map<String, List<Prediction>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Prediction>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Prediction.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

