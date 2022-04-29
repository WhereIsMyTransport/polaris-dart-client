part of openapi.api;

class CommonGeocodingRequest {
  DeviceContext device = null;
  CommonGeocodingRequest();

  @override
  String toString() {
    return 'CommonGeocodingRequest[device=$device, ]';
  }

  CommonGeocodingRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    device = (json['device'] == null)
        ? null
        : DeviceContext.fromJson(json['device']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (device != null) json['device'] = device;
    return json;
  }

  static List<CommonGeocodingRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? <CommonGeocodingRequest>[]
        : json.map((value) => CommonGeocodingRequest.fromJson(value)).toList();
  }

  static Map<String, CommonGeocodingRequest> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, CommonGeocodingRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CommonGeocodingRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CommonGeocodingRequest-objects as value to a dart map
  static Map<String, List<CommonGeocodingRequest>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<CommonGeocodingRequest>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = CommonGeocodingRequest.listFromJson(value);
      });
    }
    return map;
  }
}
