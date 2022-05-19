//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:polaris_client/api.dart';
import 'package:test/test.dart';

// tests for PlaceDetails
void main() {
  final instance = PlaceDetails();

  group('test PlaceDetails', () {
    // Contains the text describing the place, whether it be a street address, landmark or other point of interest. 
    // String displayText
    test('to test the property `displayText`', () async {
      // TODO
    });

    // Longer, more detailed address of the _place_. There is no guarantee as to the format and parts (i.e.  neighbourhood, street name etc) contained therein. 
    // String addressText
    test('to test the property `addressText`', () async {
      // TODO
    });

    // Coordinates position
    test('to test the property `position`', () async {
      // TODO
    });

    // If the caller provided a location, this contains the _straight line_ distance between that coordinate and that of the place in meters.  Note: This calculation assumes that these locations are reachable. _Optional_ since a location may not have been provided in the request. 
    // int distanceAway
    test('to test the property `distanceAway`', () async {
      // TODO
    });

    // A short name identifying the geocoder Polaris obtained the location/place information from. Open to extension. Clients MUST not base logic on the values herein. 
    // String geocoder
    test('to test the property `geocoder`', () async {
      // TODO
    });


  });

}
