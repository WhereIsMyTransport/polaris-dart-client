//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

class SearchResultCandidate {
  /// Returns a new [SearchResultCandidate] instance.
  SearchResultCandidate({
    this.candidateType,
    this.place,
    this.prediction,
  });

  /// Discriminator for the type of candidate returned, either a 'prediction' or a 'place'
  SearchResultCandidateCandidateTypeEnum candidateType;

  PlaceDetails place;

  Prediction prediction;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchResultCandidate &&
     other.candidateType == candidateType &&
     other.place == place &&
     other.prediction == prediction;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (candidateType == null ? 0 : candidateType.hashCode) +
    (place == null ? 0 : place.hashCode) +
    (prediction == null ? 0 : prediction.hashCode);

  @override
  String toString() => 'SearchResultCandidate[candidateType=$candidateType, place=$place, prediction=$prediction]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (candidateType != null) {
      json[r'candidateType'] = candidateType;
    }
    if (place != null) {
      json[r'place'] = place;
    }
    if (prediction != null) {
      json[r'prediction'] = prediction;
    }
    return json;
  }

  /// Returns a new [SearchResultCandidate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchResultCandidate fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SearchResultCandidate(
        candidateType: SearchResultCandidateCandidateTypeEnum.fromJson(json[r'candidateType']),
        place: PlaceDetails.fromJson(json[r'place']),
        prediction: Prediction.fromJson(json[r'prediction']),
      );
    }
    return null;
  }

  static List<SearchResultCandidate> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SearchResultCandidate.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SearchResultCandidate>[];

  static Map<String, SearchResultCandidate> mapFromJson(dynamic json) {
    final map = <String, SearchResultCandidate>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SearchResultCandidate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SearchResultCandidate-objects as value to a dart map
  static Map<String, List<SearchResultCandidate>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SearchResultCandidate>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SearchResultCandidate.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// Discriminator for the type of candidate returned, either a 'prediction' or a 'place'
class SearchResultCandidateCandidateTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SearchResultCandidateCandidateTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const place = SearchResultCandidateCandidateTypeEnum._(r'place');
  static const prediction = SearchResultCandidateCandidateTypeEnum._(r'prediction');

  /// List of all possible values in this [enum][SearchResultCandidateCandidateTypeEnum].
  static const values = <SearchResultCandidateCandidateTypeEnum>[
    place,
    prediction,
  ];

  static SearchResultCandidateCandidateTypeEnum fromJson(dynamic value) =>
    SearchResultCandidateCandidateTypeEnumTypeTransformer().decode(value);

  static List<SearchResultCandidateCandidateTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SearchResultCandidateCandidateTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SearchResultCandidateCandidateTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [SearchResultCandidateCandidateTypeEnum] to String,
/// and [decode] dynamic data back to [SearchResultCandidateCandidateTypeEnum].
class SearchResultCandidateCandidateTypeEnumTypeTransformer {
  factory SearchResultCandidateCandidateTypeEnumTypeTransformer() => _instance ??= const SearchResultCandidateCandidateTypeEnumTypeTransformer._();

  const SearchResultCandidateCandidateTypeEnumTypeTransformer._();

  String encode(SearchResultCandidateCandidateTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SearchResultCandidateCandidateTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SearchResultCandidateCandidateTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'place': return SearchResultCandidateCandidateTypeEnum.place;
        case r'prediction': return SearchResultCandidateCandidateTypeEnum.prediction;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SearchResultCandidateCandidateTypeEnumTypeTransformer] instance.
  static SearchResultCandidateCandidateTypeEnumTypeTransformer _instance;
}


