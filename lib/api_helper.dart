part of openapi.api;

/// Format the given parameter object into string.
String parameterToString(dynamic value) {
  if (value == null) {
    return '';
  } else if (value is DateTime) {
    return value.toUtc().toIso8601String();
  } else if (value is Geocoder) {
    return GeocoderTypeTransformer().encode(value).toString();
  } else if (value is LanguageCode) {
    return LanguageCodeTypeTransformer().encode(value).toString();
  } else {
    return value.toString();
  }
}

/// Returns the decoded body by utf-8 if application/json with the given headers.
/// Else, returns the decoded body by default algorithm of dart:http.
/// Because avoid to text garbling when header only contains "application/json" without "; charset=utf-8".
String _decodeBodyBytes(Response response) {
  var contentType = response.headers['content-type'];
  if (contentType != null && contentType.contains("application/json")) {
    return utf8.decode(response.bodyBytes);
  } else {
    return response.body;
  }
}
