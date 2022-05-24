//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

class ClientErrorResponse {
  /// Returns a new [ClientErrorResponse] instance.
  ClientErrorResponse({
    this.message,
  });

  /// Message describing the reason(s) the service deems the request from the client as invalid.
  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClientErrorResponse &&
     other.message == message;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (message == null ? 0 : message.hashCode);

  @override
  String toString() => 'ClientErrorResponse[message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  /// Returns a new [ClientErrorResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClientErrorResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ClientErrorResponse(
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<ClientErrorResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ClientErrorResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ClientErrorResponse>[];

  static Map<String, ClientErrorResponse> mapFromJson(dynamic json) {
    final map = <String, ClientErrorResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ClientErrorResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ClientErrorResponse-objects as value to a dart map
  static Map<String, List<ClientErrorResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ClientErrorResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ClientErrorResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

