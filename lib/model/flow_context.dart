//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

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
  // ignore: unnecessary_parenthesis
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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlowContext fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FlowContext(
        path: mapValueOfType<String>(json, r'path'),
        instanceId: mapValueOfType<String>(json, r'instanceId'),
      );
    }
    return null;
  }

  static List<FlowContext> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FlowContext.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FlowContext>[];

  static Map<String, FlowContext> mapFromJson(dynamic json) {
    final map = <String, FlowContext>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FlowContext.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FlowContext-objects as value to a dart map
  static Map<String, List<FlowContext>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FlowContext>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FlowContext.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

