//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

class PlaceDetails {
  /// Returns a new [PlaceDetails] instance.
  PlaceDetails({
    @required this.displayText,
    this.addressText,
    @required this.position,
    this.distanceAway,
    @required this.geocoder,
  });

  /// Contains the text describing the place, whether it be a street address, landmark or other point of interest. 
  String displayText;

  /// Longer, more detailed address of the _place_. There is no guarantee as to the format and parts (i.e.  neighbourhood, street name etc) contained therein. 
  String addressText;

  Coordinates position;

  /// If the caller provided a location, this contains the _straight line_ distance between that coordinate and that of the place in meters.  Note: This calculation assumes that these locations are reachable. _Optional_ since a location may not have been provided in the request. 
  // minimum: 0
  int distanceAway;

  /// A short name identifying the geocoder Polaris obtained the location/place information from. Open to extension. Clients MUST not base logic on the values herein. 
  String geocoder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlaceDetails &&
     other.displayText == displayText &&
     other.addressText == addressText &&
     other.position == position &&
     other.distanceAway == distanceAway &&
     other.geocoder == geocoder;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (displayText == null ? 0 : displayText.hashCode) +
    (addressText == null ? 0 : addressText.hashCode) +
    (position == null ? 0 : position.hashCode) +
    (distanceAway == null ? 0 : distanceAway.hashCode) +
    (geocoder == null ? 0 : geocoder.hashCode);

  @override
  String toString() => 'PlaceDetails[displayText=$displayText, addressText=$addressText, position=$position, distanceAway=$distanceAway, geocoder=$geocoder]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'displayText'] = displayText;
    if (addressText != null) {
      json[r'addressText'] = addressText;
    }
      json[r'position'] = position;
    if (distanceAway != null) {
      json[r'distanceAway'] = distanceAway;
    }
      json[r'geocoder'] = geocoder;
    return json;
  }

  /// Returns a new [PlaceDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlaceDetails fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PlaceDetails(
        displayText: mapValueOfType<String>(json, r'displayText'),
        addressText: mapValueOfType<String>(json, r'addressText'),
        position: Coordinates.fromJson(json[r'position']),
        distanceAway: mapValueOfType<int>(json, r'distanceAway'),
        geocoder: mapValueOfType<String>(json, r'geocoder'),
      );
    }
    return null;
  }

  static List<PlaceDetails> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PlaceDetails.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PlaceDetails>[];

  static Map<String, PlaceDetails> mapFromJson(dynamic json) {
    final map = <String, PlaceDetails>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PlaceDetails.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PlaceDetails-objects as value to a dart map
  static Map<String, List<PlaceDetails>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PlaceDetails>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PlaceDetails.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

