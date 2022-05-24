//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

/// Language code as per ISO 639-1.
class LanguageCode {
  /// Instantiate a new enum with the provided [value].
  const LanguageCode._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const af = LanguageCode._(r'af');
  static const en = LanguageCode._(r'en');
  static const es = LanguageCode._(r'es');
  static const th = LanguageCode._(r'th');

  /// List of all possible values in this [enum][LanguageCode].
  static const values = <LanguageCode>[
    af,
    en,
    es,
    th,
  ];

  static LanguageCode fromJson(dynamic value) =>
    LanguageCodeTypeTransformer().decode(value);

  static List<LanguageCode> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(LanguageCode.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <LanguageCode>[];
}

/// Transformation class that can [encode] an instance of [LanguageCode] to String,
/// and [decode] dynamic data back to [LanguageCode].
class LanguageCodeTypeTransformer {
  factory LanguageCodeTypeTransformer() => _instance ??= const LanguageCodeTypeTransformer._();

  const LanguageCodeTypeTransformer._();

  String encode(LanguageCode data) => data.value;

  /// Decodes a [dynamic value][data] to a LanguageCode.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LanguageCode decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'af': return LanguageCode.af;
        case r'en': return LanguageCode.en;
        case r'es': return LanguageCode.es;
        case r'th': return LanguageCode.th;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LanguageCodeTypeTransformer] instance.
  static LanguageCodeTypeTransformer _instance;
}

