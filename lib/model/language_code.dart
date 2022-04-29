part of openapi.api;

class LanguageCode {
  /// The underlying value of this enum member.
  final String value;

  const LanguageCode._internal(this.value);

  /// Language code as per ISO 639-1.
  static const LanguageCode af_ = const LanguageCode._internal('af');

  /// Language code as per ISO 639-1.
  static const LanguageCode en_ = const LanguageCode._internal('en');

  /// Language code as per ISO 639-1.
  static const LanguageCode es_ = const LanguageCode._internal('es');

  /// Language code as per ISO 639-1.
  static const LanguageCode th_ = const LanguageCode._internal('th');

  static LanguageCode fromJson(String value) {
    return new LanguageCodeTypeTransformer().decode(value);
  }

  static List<LanguageCode> listFromJson(List<dynamic> json) {
    return json == null
        ? <LanguageCode>[]
        : json.map((value) => LanguageCode.fromJson(value)).toList();
  }

  String toJson() => value;
}

class LanguageCodeTypeTransformer {
  dynamic encode(LanguageCode data) {
    return data.value;
  }

  LanguageCode decode(dynamic data) {
    switch (data) {
      case 'af':
        return LanguageCode.af_;
      case 'en':
        return LanguageCode.en_;
      case 'es':
        return LanguageCode.es_;
      case 'th':
        return LanguageCode.th_;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }
}
