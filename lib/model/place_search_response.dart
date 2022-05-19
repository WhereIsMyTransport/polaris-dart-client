//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

class PlaceSearchResponse {
  /// Returns a new [PlaceSearchResponse] instance.
  PlaceSearchResponse({
    @required this.status,
    @required this.requestId,
    this.errorMessage,
    this.data,
  });

  PlaceSearchResponseStatusEnum status;

  /// The UUID v4 of the request, this response was generated for
  String requestId;

  /// An explanation of what in the request caused the request to fail. Only returned when the status is set to 'error'
  String errorMessage;

  PlaceSearchResponseAllOfData data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlaceSearchResponse &&
     other.status == status &&
     other.requestId == requestId &&
     other.errorMessage == errorMessage &&
     other.data == data;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (status == null ? 0 : status.hashCode) +
    (requestId == null ? 0 : requestId.hashCode) +
    (errorMessage == null ? 0 : errorMessage.hashCode) +
    (data == null ? 0 : data.hashCode);

  @override
  String toString() => 'PlaceSearchResponse[status=$status, requestId=$requestId, errorMessage=$errorMessage, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = status;
      json[r'requestId'] = requestId;
    if (errorMessage != null) {
      json[r'error_message'] = errorMessage;
    }
    if (data != null) {
      json[r'data'] = data;
    }
    return json;
  }

  /// Returns a new [PlaceSearchResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlaceSearchResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PlaceSearchResponse(
        status: PlaceSearchResponseStatusEnum.fromJson(json[r'status']),
        requestId: mapValueOfType<String>(json, r'requestId'),
        errorMessage: mapValueOfType<String>(json, r'error_message'),
        data: PlaceSearchResponseAllOfData.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<PlaceSearchResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PlaceSearchResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PlaceSearchResponse>[];

  static Map<String, PlaceSearchResponse> mapFromJson(dynamic json) {
    final map = <String, PlaceSearchResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PlaceSearchResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PlaceSearchResponse-objects as value to a dart map
  static Map<String, List<PlaceSearchResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PlaceSearchResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PlaceSearchResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class PlaceSearchResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PlaceSearchResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const success = PlaceSearchResponseStatusEnum._(r'success');
  static const successNoData = PlaceSearchResponseStatusEnum._(r'success_no_data');
  static const error = PlaceSearchResponseStatusEnum._(r'error');

  /// List of all possible values in this [enum][PlaceSearchResponseStatusEnum].
  static const values = <PlaceSearchResponseStatusEnum>[
    success,
    successNoData,
    error,
  ];

  static PlaceSearchResponseStatusEnum fromJson(dynamic value) =>
    PlaceSearchResponseStatusEnumTypeTransformer().decode(value);

  static List<PlaceSearchResponseStatusEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PlaceSearchResponseStatusEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PlaceSearchResponseStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [PlaceSearchResponseStatusEnum] to String,
/// and [decode] dynamic data back to [PlaceSearchResponseStatusEnum].
class PlaceSearchResponseStatusEnumTypeTransformer {
  factory PlaceSearchResponseStatusEnumTypeTransformer() => _instance ??= const PlaceSearchResponseStatusEnumTypeTransformer._();

  const PlaceSearchResponseStatusEnumTypeTransformer._();

  String encode(PlaceSearchResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PlaceSearchResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PlaceSearchResponseStatusEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'success': return PlaceSearchResponseStatusEnum.success;
        case r'success_no_data': return PlaceSearchResponseStatusEnum.successNoData;
        case r'error': return PlaceSearchResponseStatusEnum.error;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PlaceSearchResponseStatusEnumTypeTransformer] instance.
  static PlaceSearchResponseStatusEnumTypeTransformer _instance;
}


