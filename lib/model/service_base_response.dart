//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

class ServiceBaseResponse {
  /// Returns a new [ServiceBaseResponse] instance.
  ServiceBaseResponse({
    @required this.status,
    @required this.requestId,
    this.errorMessage,
  });

  ServiceBaseResponseStatusEnum status;

  /// The UUID v4 of the request, this response was generated for
  String requestId;

  /// An explanation of what in the request caused the request to fail. Only returned when the status is set to 'error'
  String errorMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServiceBaseResponse &&
     other.status == status &&
     other.requestId == requestId &&
     other.errorMessage == errorMessage;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (status == null ? 0 : status.hashCode) +
    (requestId == null ? 0 : requestId.hashCode) +
    (errorMessage == null ? 0 : errorMessage.hashCode);

  @override
  String toString() => 'ServiceBaseResponse[status=$status, requestId=$requestId, errorMessage=$errorMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = status;
      json[r'requestId'] = requestId;
    if (errorMessage != null) {
      json[r'error_message'] = errorMessage;
    }
    return json;
  }

  /// Returns a new [ServiceBaseResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceBaseResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ServiceBaseResponse(
        status: ServiceBaseResponseStatusEnum.fromJson(json[r'status']),
        requestId: mapValueOfType<String>(json, r'requestId'),
        errorMessage: mapValueOfType<String>(json, r'error_message'),
      );
    }
    return null;
  }

  static List<ServiceBaseResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ServiceBaseResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ServiceBaseResponse>[];

  static Map<String, ServiceBaseResponse> mapFromJson(dynamic json) {
    final map = <String, ServiceBaseResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ServiceBaseResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ServiceBaseResponse-objects as value to a dart map
  static Map<String, List<ServiceBaseResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ServiceBaseResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ServiceBaseResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class ServiceBaseResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ServiceBaseResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const success = ServiceBaseResponseStatusEnum._(r'success');
  static const successNoData = ServiceBaseResponseStatusEnum._(r'success_no_data');
  static const error = ServiceBaseResponseStatusEnum._(r'error');

  /// List of all possible values in this [enum][ServiceBaseResponseStatusEnum].
  static const values = <ServiceBaseResponseStatusEnum>[
    success,
    successNoData,
    error,
  ];

  static ServiceBaseResponseStatusEnum fromJson(dynamic value) =>
    ServiceBaseResponseStatusEnumTypeTransformer().decode(value);

  static List<ServiceBaseResponseStatusEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ServiceBaseResponseStatusEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ServiceBaseResponseStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [ServiceBaseResponseStatusEnum] to String,
/// and [decode] dynamic data back to [ServiceBaseResponseStatusEnum].
class ServiceBaseResponseStatusEnumTypeTransformer {
  factory ServiceBaseResponseStatusEnumTypeTransformer() => _instance ??= const ServiceBaseResponseStatusEnumTypeTransformer._();

  const ServiceBaseResponseStatusEnumTypeTransformer._();

  String encode(ServiceBaseResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ServiceBaseResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ServiceBaseResponseStatusEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'success': return ServiceBaseResponseStatusEnum.success;
        case r'success_no_data': return ServiceBaseResponseStatusEnum.successNoData;
        case r'error': return ServiceBaseResponseStatusEnum.error;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ServiceBaseResponseStatusEnumTypeTransformer] instance.
  static ServiceBaseResponseStatusEnumTypeTransformer _instance;
}


