//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

class PredictionLookupResponse {
  /// Returns a new [PredictionLookupResponse] instance.
  PredictionLookupResponse({
    @required this.status,
    @required this.requestId,
    this.errorMessage,
    this.data,
  });

  PredictionLookupResponseStatusEnum status;

  /// The UUID v4 of the request, this response was generated for
  String requestId;

  /// An explanation of what in the request caused the request to fail. Only returned when the status is set to 'error'
  String errorMessage;

  PlaceDetails data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PredictionLookupResponse &&
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
  String toString() => 'PredictionLookupResponse[status=$status, requestId=$requestId, errorMessage=$errorMessage, data=$data]';

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

  /// Returns a new [PredictionLookupResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PredictionLookupResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PredictionLookupResponse(
        status: PredictionLookupResponseStatusEnum.fromJson(json[r'status']),
        requestId: mapValueOfType<String>(json, r'requestId'),
        errorMessage: mapValueOfType<String>(json, r'error_message'),
        data: PlaceDetails.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<PredictionLookupResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PredictionLookupResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PredictionLookupResponse>[];

  static Map<String, PredictionLookupResponse> mapFromJson(dynamic json) {
    final map = <String, PredictionLookupResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PredictionLookupResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PredictionLookupResponse-objects as value to a dart map
  static Map<String, List<PredictionLookupResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PredictionLookupResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PredictionLookupResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class PredictionLookupResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PredictionLookupResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const success = PredictionLookupResponseStatusEnum._(r'success');
  static const successNoData = PredictionLookupResponseStatusEnum._(r'success_no_data');
  static const error = PredictionLookupResponseStatusEnum._(r'error');

  /// List of all possible values in this [enum][PredictionLookupResponseStatusEnum].
  static const values = <PredictionLookupResponseStatusEnum>[
    success,
    successNoData,
    error,
  ];

  static PredictionLookupResponseStatusEnum fromJson(dynamic value) =>
    PredictionLookupResponseStatusEnumTypeTransformer().decode(value);

  static List<PredictionLookupResponseStatusEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PredictionLookupResponseStatusEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PredictionLookupResponseStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [PredictionLookupResponseStatusEnum] to String,
/// and [decode] dynamic data back to [PredictionLookupResponseStatusEnum].
class PredictionLookupResponseStatusEnumTypeTransformer {
  factory PredictionLookupResponseStatusEnumTypeTransformer() => _instance ??= const PredictionLookupResponseStatusEnumTypeTransformer._();

  const PredictionLookupResponseStatusEnumTypeTransformer._();

  String encode(PredictionLookupResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PredictionLookupResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PredictionLookupResponseStatusEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'success': return PredictionLookupResponseStatusEnum.success;
        case r'success_no_data': return PredictionLookupResponseStatusEnum.successNoData;
        case r'error': return PredictionLookupResponseStatusEnum.error;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PredictionLookupResponseStatusEnumTypeTransformer] instance.
  static PredictionLookupResponseStatusEnumTypeTransformer _instance;
}


