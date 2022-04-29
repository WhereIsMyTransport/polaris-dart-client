part of openapi.api;

class AppContext {
  /* Application version string. Opaque to the service. Emitted in analytics. */
  String version = null;
  /* A unique identifier of the device making the call. Treated as an opaque string by the service. Emitted as part of analytics data. This value is generated when RUMBO installs (and can change if the app is uninstalled).            */
  String deviceId = null;
  AppContext();

  @override
  String toString() {
    return 'AppContext[version=$version, deviceId=$deviceId, ]';
  }

  AppContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    version = json['version'];
    deviceId = json['deviceId'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (version != null) json['version'] = version;
    if (deviceId != null) json['deviceId'] = deviceId;
    return json;
  }

  static List<AppContext> listFromJson(List<dynamic> json) {
    return json == null
        ? <AppContext>[]
        : json.map((value) => AppContext.fromJson(value)).toList();
  }

  static Map<String, AppContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AppContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = AppContext.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AppContext-objects as value to a dart map
  static Map<String, List<AppContext>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<AppContext>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = AppContext.listFromJson(value);
      });
    }
    return map;
  }
}
