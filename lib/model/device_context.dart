//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeviceContext {
  /// Returns a new [DeviceContext] instance.
  DeviceContext({
    @required this.epoch,
    this.location,
    @required this.language,
    this.tenantId,
  });

  /// Time as per the device, in UTC (i.e. not relative to some local timezone). Stated as the number of seconds since 1 Jan 1970.
  num epoch;

  GeoPosition location;

  LanguageCode language;

  /// Identity tenant used by the client. This is used to identify the city (CDMX or Bangkok)
  String tenantId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeviceContext &&
     other.epoch == epoch &&
     other.location == location &&
     other.language == language &&
     other.tenantId == tenantId;

  @override
  int get hashCode =>
    (epoch == null ? 0 : epoch.hashCode) +
    (location == null ? 0 : location.hashCode) +
    (language == null ? 0 : language.hashCode) +
    (tenantId == null ? 0 : tenantId.hashCode);

  @override
  String toString() => 'DeviceContext[epoch=$epoch, location=$location, language=$language, tenantId=$tenantId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'epoch'] = epoch;
    if (location != null) {
      json[r'location'] = location;
    }
      json[r'language'] = language;
    if (tenantId != null) {
      json[r'tenantId'] = tenantId;
    }
    return json;
  }

  /// Returns a new [DeviceContext] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeviceContext fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DeviceContext(
        epoch: json[r'epoch'] == null ?
          null :
          json[r'epoch'].toDouble(),
        location: GeoPosition.fromJson(json[r'location']),
        language: LanguageCode.fromJson(json[r'language']),
        tenantId: json[r'tenantId'],
    );

  static List<DeviceContext> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DeviceContext>[]
      : json.map((dynamic value) => DeviceContext.fromJson(value)).toList(growable: true == growable);

  static Map<String, DeviceContext> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DeviceContext>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = DeviceContext.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DeviceContext-objects as value to a dart map
  static Map<String, List<DeviceContext>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DeviceContext>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = DeviceContext.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

