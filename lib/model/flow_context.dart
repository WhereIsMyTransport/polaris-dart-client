//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlowContext {
  /// Returns a new [FlowContext] instance.
  FlowContext({
    @required this.path,
    @required this.instanceId,
  });

  /// rumbo.onboarding.journey.origin.search
  String path;

  /// Generated UUID for a particular instance of the flow as identified by the *path* above.
  String instanceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FlowContext &&
     other.path == path &&
     other.instanceId == instanceId;

  @override
  int get hashCode =>
    (path == null ? 0 : path.hashCode) +
    (instanceId == null ? 0 : instanceId.hashCode);

  @override
  String toString() => 'FlowContext[path=$path, instanceId=$instanceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'path'] = path;
      json[r'instanceId'] = instanceId;
    return json;
  }

  /// Returns a new [FlowContext] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FlowContext fromJson(Map<String, dynamic> json) => json == null
    ? null
    : FlowContext(
        path: json[r'path'],
        instanceId: json[r'instanceId'],
    );

  static List<FlowContext> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <FlowContext>[]
      : json.map((dynamic value) => FlowContext.fromJson(value)).toList(growable: true == growable);

  static Map<String, FlowContext> mapFromJson(Map<String, dynamic> json) {
    final map = <String, FlowContext>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = FlowContext.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FlowContext-objects as value to a dart map
  static Map<String, List<FlowContext>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FlowContext>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = FlowContext.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

