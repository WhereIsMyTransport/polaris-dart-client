//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

class PredictionLookupResponseAllOf {
  /// Returns a new [PredictionLookupResponseAllOf] instance.
  PredictionLookupResponseAllOf({
    this.data,
  });

  PlaceDetails data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PredictionLookupResponseAllOf &&
     other.data == data;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (data == null ? 0 : data.hashCode);

  @override
  String toString() => 'PredictionLookupResponseAllOf[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (data != null) {
      json[r'data'] = data;
    }
    return json;
  }

  /// Returns a new [PredictionLookupResponseAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PredictionLookupResponseAllOf fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PredictionLookupResponseAllOf(
        data: PlaceDetails.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<PredictionLookupResponseAllOf> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PredictionLookupResponseAllOf.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PredictionLookupResponseAllOf>[];

  static Map<String, PredictionLookupResponseAllOf> mapFromJson(dynamic json) {
    final map = <String, PredictionLookupResponseAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PredictionLookupResponseAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PredictionLookupResponseAllOf-objects as value to a dart map
  static Map<String, List<PredictionLookupResponseAllOf>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PredictionLookupResponseAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PredictionLookupResponseAllOf.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

