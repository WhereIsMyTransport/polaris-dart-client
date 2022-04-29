part of openapi.api;

class DeviceContext {
  /* Time as per the device, in UTC (i.e. not relative to some local timezone). Stated as the number of seconds since 1 Jan 1970. */
  num epoch = null;

  GeoPosition location = null;

  LanguageCode language = null;

  String tenantId = null;

  DeviceContext();

  @override
  String toString() {
    return 'DeviceContext[epoch=$epoch, location=$location, language=$language, tenantId=$tenantId]';
  }

  DeviceContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    epoch = json['epoch'];
    location = (json['location'] == null)
        ? null
        : GeoPosition.fromJson(json['location']);
    language = (json['language'] == null)
        ? null
        : LanguageCode.fromJson(json['language']);
    tenantId = json['tenantId'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (epoch != null) json['epoch'] = epoch;
    if (location != null) json['location'] = location;
    if (language != null) json['language'] = language;
    if (tenantId != null) json['tenantId'] = tenantId;
    return json;
  }

  static List<DeviceContext> listFromJson(List<dynamic> json) {
    return json == null
        ? <DeviceContext>[]
        : json.map((value) => DeviceContext.fromJson(value)).toList();
  }

  static Map<String, DeviceContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeviceContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DeviceContext.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DeviceContext-objects as value to a dart map
  static Map<String, List<DeviceContext>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<DeviceContext>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = DeviceContext.listFromJson(value);
      });
    }
    return map;
  }
}
