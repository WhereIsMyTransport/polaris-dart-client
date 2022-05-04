//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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
  /// [json] if it's non-null, null if [json] is null.
  static ClientErrorResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ClientErrorResponse(
        message: json[r'message'],
    );

  static List<ClientErrorResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ClientErrorResponse>[]
      : json.map((dynamic value) => ClientErrorResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, ClientErrorResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ClientErrorResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ClientErrorResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ClientErrorResponse-objects as value to a dart map
  static Map<String, List<ClientErrorResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ClientErrorResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ClientErrorResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

