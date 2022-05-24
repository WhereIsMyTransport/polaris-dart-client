//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;

/// Denotes the geocoder where the item was sourced from.
class Geocoder {
  /// Instantiate a new enum with the provided [value].
  const Geocoder._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const mapbox = Geocoder._(r'mapbox');
  static const stops = Geocoder._(r'stops');
  static const landmarks = Geocoder._(r'landmarks');

  /// List of all possible values in this [enum][Geocoder].
  static const values = <Geocoder>[
    mapbox,
    stops,
    landmarks,
  ];

  static Geocoder fromJson(dynamic value) =>
    GeocoderTypeTransformer().decode(value);

  static List<Geocoder> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Geocoder.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Geocoder>[];
}

/// Transformation class that can [encode] an instance of [Geocoder] to String,
/// and [decode] dynamic data back to [Geocoder].
class GeocoderTypeTransformer {
  factory GeocoderTypeTransformer() => _instance ??= const GeocoderTypeTransformer._();

  const GeocoderTypeTransformer._();

  String encode(Geocoder data) => data.value;

  /// Decodes a [dynamic value][data] to a Geocoder.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Geocoder decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'mapbox': return Geocoder.mapbox;
        case r'stops': return Geocoder.stops;
        case r'landmarks': return Geocoder.landmarks;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GeocoderTypeTransformer] instance.
  static GeocoderTypeTransformer _instance;
}

