//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PlaceItem {
  /// Returns a new [PlaceItem] instance.
  PlaceItem({
    @required this.displayText,
    @required this.addressText,
    this.iconUrl,
    @required this.position,
    this.distanceAway,
    this.sourceGeocoder,
    this.score,
  });

  /// Contains the text describing the place, whether it be a street address, landmark or other point of interest.
  String displayText;

  /// Longer, more detailed address of the _place_. There is no guarantee as to the format and parts (i.e. neighbourhood, street name etc)  contained therein - indeed the contents will be refined as we get to better understand our audience and their preferences. 
  String addressText;

  /// The absolute URI of an icon image which represents the place in some way.
  String iconUrl;

  GeoPosition position;

  /// Distance, in meters, to this item and the device. Currently this is the _straight line_ distance, i.e. no account is being made  for reachability from the device's current location. _Optional_ since we may not always have the device's location to calculate this value. 
  // minimum: 0
  num distanceAway;

  Geocoder sourceGeocoder;

  /// Numeric value, indicating how well this item was deemed to match against the search term, where 100 denotes a _perfect_ match. 
  // minimum: 0
  // maximum: 100
  num score;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlaceItem &&
     other.displayText == displayText &&
     other.addressText == addressText &&
     other.iconUrl == iconUrl &&
     other.position == position &&
     other.distanceAway == distanceAway &&
     other.sourceGeocoder == sourceGeocoder &&
     other.score == score;

  @override
  int get hashCode =>
    (displayText == null ? 0 : displayText.hashCode) +
    (addressText == null ? 0 : addressText.hashCode) +
    (iconUrl == null ? 0 : iconUrl.hashCode) +
    (position == null ? 0 : position.hashCode) +
    (distanceAway == null ? 0 : distanceAway.hashCode) +
    (sourceGeocoder == null ? 0 : sourceGeocoder.hashCode) +
    (score == null ? 0 : score.hashCode);

  @override
  String toString() => 'PlaceItem[displayText=$displayText, addressText=$addressText, iconUrl=$iconUrl, position=$position, distanceAway=$distanceAway, sourceGeocoder=$sourceGeocoder, score=$score]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'displayText'] = displayText;
      json[r'addressText'] = addressText;
    if (iconUrl != null) {
      json[r'iconUrl'] = iconUrl;
    }
      json[r'position'] = position;
    if (distanceAway != null) {
      json[r'distanceAway'] = distanceAway;
    }
    if (sourceGeocoder != null) {
      json[r'sourceGeocoder'] = sourceGeocoder;
    }
    if (score != null) {
      json[r'score'] = score;
    }
    return json;
  }

  /// Returns a new [PlaceItem] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceItem fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PlaceItem(
        displayText: json[r'displayText'],
        addressText: json[r'addressText'],
        iconUrl: json[r'iconUrl'],
        position: GeoPosition.fromJson(json[r'position']),
        distanceAway: json[r'distanceAway'] == null ?
          null :
          json[r'distanceAway'].toDouble(),
        sourceGeocoder: Geocoder.fromJson(json[r'sourceGeocoder']),
        score: json[r'score'] == null ?
          null :
          json[r'score'].toDouble(),
    );

  static List<PlaceItem> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PlaceItem>[]
      : json.map((dynamic value) => PlaceItem.fromJson(value)).toList(growable: true == growable);

  static Map<String, PlaceItem> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PlaceItem>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = PlaceItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PlaceItem-objects as value to a dart map
  static Map<String, List<PlaceItem>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PlaceItem>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = PlaceItem.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

