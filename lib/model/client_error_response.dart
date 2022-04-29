part of openapi.api;

class ClientErrorResponse {
  /* Message describing the reason(s) the service deems the request from the client as invalid. */
  String message = null;
  ClientErrorResponse();

  @override
  String toString() {
    return 'ClientErrorResponse[message=$message, ]';
  }

  ClientErrorResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (message != null) json['message'] = message;
    return json;
  }

  static List<ClientErrorResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? <ClientErrorResponse>[]
        : json.map((value) => ClientErrorResponse.fromJson(value)).toList();
  }

  static Map<String, ClientErrorResponse> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ClientErrorResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ClientErrorResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ClientErrorResponse-objects as value to a dart map
  static Map<String, List<ClientErrorResponse>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<ClientErrorResponse>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = ClientErrorResponse.listFromJson(value);
      });
    }
    return map;
  }
}
