part of openapi.api;

class ServiceContext {
  /* Opaque (to the caller) version string of the Polaris service instance that handled the request. To be emitted as part of client side analytics. This takes away any guesswork in analytics data as to the version of the service that returned the results,  i.e. there is no need for another mechanism to communicate service releases to the analytics processing pipeline. This would also prove useful if we (ever) start performing A/B testing.  */
  String version = null;
  ServiceContext();

  @override
  String toString() {
    return 'ServiceContext[version=$version, ]';
  }

  ServiceContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (version != null) json['version'] = version;
    return json;
  }

  static List<ServiceContext> listFromJson(List<dynamic> json) {
    return json == null
        ? <ServiceContext>[]
        : json.map((value) => ServiceContext.fromJson(value)).toList();
  }

  static Map<String, ServiceContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ServiceContext.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ServiceContext-objects as value to a dart map
  static Map<String, List<ServiceContext>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<ServiceContext>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = ServiceContext.listFromJson(value);
      });
    }
    return map;
  }
}
