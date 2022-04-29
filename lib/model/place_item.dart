part of openapi.api;

class PlaceItem {
  /* Contains the text describing the place, whether it be a street address, landmark or other point of interest. */
  String displayText = null;

  /* Longer, more detailed address of the _place_. There is no guarantee as to the format and parts (i.e. neighbourhood, street name etc)  contained therein - indeed the contents will be refined as we get to better understand our audience and their preferences.  */
  String addressText = null;

  /* The absolute URI of an icon image which represents the place in some way. */
  String iconUrl = null;

  GeoPosition position = null;

  /* Distance, in meters, to this item and the device. Currently this is the _straight line_ distance, i.e. no account is being made  for reachability from the device's current location. _Optional_ since we may not always have the device's location to calculate this value.  */
  num distanceAway = null;

  Geocoder sourceGeocoder = null;

  //enum sourceGeocoderEnum {  mapbox,  stops,  landmarks,  };{
  /* Numeric value, indicating how well this item was deemed to match against the search term, where 100 denotes a _perfect_ match.  */
  num score = null;

  num selectionTimeMs =
      -1; //time it took to select a place, since the last search
  num requestSize = -1; // number of items in the request.
  PlaceItem();

  @override
  String toString() {
    return 'PlaceItem[selectionTimeMs=$selectionTimeMs, displayText=$displayText, addressText=$addressText, iconUrl=$iconUrl, position=$position, distanceAway=$distanceAway, sourceGeocoder=$sourceGeocoder, score=$score, ]';
  }

  PlaceItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    displayText = json['displayText'];
    addressText = json['addressText'];
    iconUrl = json['iconUrl'];
    position = (json['position'] == null)
        ? null
        : GeoPosition.fromJson(json['position']);
    distanceAway = json['distanceAway'];
    sourceGeocoder = (json['sourceGeocoder'] == null)
        ? null
        : Geocoder.fromJson(json['sourceGeocoder']);
    score = json['score'];
  }

  factory PlaceItem.fromJsonString(String source) {
    final map = json.decode(source);
    final placeItem = PlaceItem.fromJson(map);

    return placeItem;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (displayText != null) json['displayText'] = displayText;
    if (addressText != null) json['addressText'] = addressText;
    if (iconUrl != null) json['iconUrl'] = iconUrl;
    if (position != null) json['position'] = position.toJson();
    json['distanceAway'] = distanceAway;
    if (sourceGeocoder != null) json['sourceGeocoder'] = sourceGeocoder.value;
    if (score != null) json['score'] = score;
    return json;
  }

  String toJsonString() {
    return json.encode(this.toJson());
  }

  static List<PlaceItem> listFromJson(List<dynamic> json) {
    return json == null
        ? <PlaceItem>[]
        : json.map((value) => PlaceItem.fromJson(value)).toList();
  }

  static Map<String, PlaceItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = PlaceItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PlaceItem-objects as value to a dart map
  static Map<String, List<PlaceItem>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<PlaceItem>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = PlaceItem.listFromJson(value);
      });
    }
    return map;
  }
}
