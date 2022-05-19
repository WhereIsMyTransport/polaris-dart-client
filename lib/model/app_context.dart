//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

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
  // ignore: unnecessary_parenthesis
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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AppContext fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AppContext(
        version: mapValueOfType<String>(json, r'version'),
        deviceId: mapValueOfType<String>(json, r'deviceId'),
      );
    }
    return null;
  }

  static List<AppContext> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AppContext.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AppContext>[];

  static Map<String, AppContext> mapFromJson(dynamic json) {
    final map = <String, AppContext>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AppContext.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AppContext-objects as value to a dart map
  static Map<String, List<AppContext>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AppContext>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AppContext.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

