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

// tests for Prediction
void main() {
  final instance = Prediction();

  group('test Prediction', () {
    // A unique identifier for this candidate result, in the context of this search session and its current state 
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Contains the text describing the place, whether it be a street address, landmark or other point of interest. 
    // String displayText
    test('to test the property `displayText`', () async {
      // TODO
    });

    // A short name identifying the geocoder Polaris obtained the location/place information from. Open to extension. Clients MUST not base logic on the values herein. 
    // String geocoder
    test('to test the property `geocoder`', () async {
      // TODO
    });

    // If the caller provided a location, this contains the _straight line_ distance between that coordinate and that of the place in meters.  Note: This calculation assumes that these locations are reachable. _Optional_ since a location may not have been provided in the request. 
    // int distanceAway
    test('to test the property `distanceAway`', () async {
      // TODO
    });

    // String agencyId
    test('to test the property `agencyId`', () async {
      // TODO
    });


  });

}
