//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AppContext {
  /// Returns a new [AppContext] instance.
  AppContext({
    @required this.version,
    @required this.deviceId,
  });

  /// Application version string. Opaque to the service. Emitted in analytics.
  String version;

  /// A unique identifier of the device making the call. Treated as an opaque string by the service. Emitted as part of analytics data. This value is generated when RUMBO installs (and can change if the app is uninstalled).           
  String deviceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AppContext &&
     other.version == version &&
     other.deviceId == deviceId;

  @override
  int get hashCode =>
    (version == null ? 0 : version.hashCode) +
    (deviceId == null ? 0 : deviceId.hashCode);

  @override
  String toString() => 'AppContext[version=$version, deviceId=$deviceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'version'] = version;
      json[r'deviceId'] = deviceId;
    return json;
  }

  /// Returns a new [AppContext] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AppContext fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AppContext(
        version: json[r'version'],
        deviceId: json[r'deviceId'],
    );

  static List<AppContext> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AppContext>[]
      : json.map((dynamic value) => AppContext.fromJson(value)).toList(growable: true == growable);

  static Map<String, AppContext> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AppContext>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = AppContext.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AppContext-objects as value to a dart map
  static Map<String, List<AppContext>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AppContext>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = AppContext.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

