//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CommonGeocodingRequest {
  /// Returns a new [CommonGeocodingRequest] instance.
  CommonGeocodingRequest({
    @required this.device,
  });

  DeviceContext device;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CommonGeocodingRequest &&
     other.device == device;

  @override
  int get hashCode =>
    (device == null ? 0 : device.hashCode);

  @override
  String toString() => 'CommonGeocodingRequest[device=$device]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'device'] = device;
    return json;
  }

  /// Returns a new [CommonGeocodingRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CommonGeocodingRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CommonGeocodingRequest(
        device: DeviceContext.fromJson(json[r'device']),
    );

  static List<CommonGeocodingRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CommonGeocodingRequest>[]
      : json.map((dynamic value) => CommonGeocodingRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, CommonGeocodingRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CommonGeocodingRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = CommonGeocodingRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CommonGeocodingRequest-objects as value to a dart map
  static Map<String, List<CommonGeocodingRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CommonGeocodingRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = CommonGeocodingRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

