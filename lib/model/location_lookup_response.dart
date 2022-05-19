//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

class LocationLookupResponse {
  /// Returns a new [LocationLookupResponse] instance.
  LocationLookupResponse({
    @required this.status,
    @required this.requestId,
    this.errorMessage,
    this.data,
  });

  LocationLookupResponseStatusEnum status;

  /// The UUID v4 of the request, this response was generated for
  String requestId;

  /// An explanation of what in the request caused the request to fail. Only returned when the status is set to 'error'
  String errorMessage;

  PlaceDetails data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocationLookupResponse &&
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
  String toString() => 'LocationLookupResponse[status=$status, requestId=$requestId, errorMessage=$errorMessage, data=$data]';

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

  /// Returns a new [LocationLookupResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocationLookupResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return LocationLookupResponse(
        status: LocationLookupResponseStatusEnum.fromJson(json[r'status']),
        requestId: mapValueOfType<String>(json, r'requestId'),
        errorMessage: mapValueOfType<String>(json, r'error_message'),
        data: PlaceDetails.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<LocationLookupResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(LocationLookupResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <LocationLookupResponse>[];

  static Map<String, LocationLookupResponse> mapFromJson(dynamic json) {
    final map = <String, LocationLookupResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = LocationLookupResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LocationLookupResponse-objects as value to a dart map
  static Map<String, List<LocationLookupResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<LocationLookupResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = LocationLookupResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class LocationLookupResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const LocationLookupResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const success = LocationLookupResponseStatusEnum._(r'success');
  static const successNoData = LocationLookupResponseStatusEnum._(r'success_no_data');
  static const error = LocationLookupResponseStatusEnum._(r'error');

  /// List of all possible values in this [enum][LocationLookupResponseStatusEnum].
  static const values = <LocationLookupResponseStatusEnum>[
    success,
    successNoData,
    error,
  ];

  static LocationLookupResponseStatusEnum fromJson(dynamic value) =>
    LocationLookupResponseStatusEnumTypeTransformer().decode(value);

  static List<LocationLookupResponseStatusEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(LocationLookupResponseStatusEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <LocationLookupResponseStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [LocationLookupResponseStatusEnum] to String,
/// and [decode] dynamic data back to [LocationLookupResponseStatusEnum].
class LocationLookupResponseStatusEnumTypeTransformer {
  factory LocationLookupResponseStatusEnumTypeTransformer() => _instance ??= const LocationLookupResponseStatusEnumTypeTransformer._();

  const LocationLookupResponseStatusEnumTypeTransformer._();

  String encode(LocationLookupResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LocationLookupResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LocationLookupResponseStatusEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'success': return LocationLookupResponseStatusEnum.success;
        case r'success_no_data': return LocationLookupResponseStatusEnum.successNoData;
        case r'error': return LocationLookupResponseStatusEnum.error;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LocationLookupResponseStatusEnumTypeTransformer] instance.
  static LocationLookupResponseStatusEnumTypeTransformer _instance;
}


