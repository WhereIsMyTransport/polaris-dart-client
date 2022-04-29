part of openapi.api;

class FlowContext {
  /* rumbo.onboarding.journey.origin.search */
  String path = null;
  /* Generated UUID for a particular instance of the flow as identified by the *path* above. */
  String instanceId = null;
  FlowContext();

  @override
  String toString() {
    return 'FlowContext[path=$path, instanceId=$instanceId, ]';
  }

  FlowContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    path = json['path'];
    instanceId = json['instanceId'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (path != null) json['path'] = path;
    if (instanceId != null) json['instanceId'] = instanceId;
    return json;
  }

  static List<FlowContext> listFromJson(List<dynamic> json) {
    return json == null
        ? <FlowContext>[]
        : json.map((value) => FlowContext.fromJson(value)).toList();
  }

  static Map<String, FlowContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FlowContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FlowContext.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FlowContext-objects as value to a dart map
  static Map<String, List<FlowContext>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<FlowContext>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = FlowContext.listFromJson(value);
      });
    }
    return map;
  }
}
