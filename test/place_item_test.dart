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

// tests for PlaceItem
void main() {
  final instance = PlaceItem();

  group('test PlaceItem', () {
    // Contains the text describing the place, whether it be a street address, landmark or other point of interest.
    // String displayText
    test('to test the property `displayText`', () async {
      // TODO
    });

    // Longer, more detailed address of the _place_. There is no guarantee as to the format and parts (i.e. neighbourhood, street name etc)  contained therein - indeed the contents will be refined as we get to better understand our audience and their preferences. 
    // String addressText
    test('to test the property `addressText`', () async {
      // TODO
    });

    // The absolute URI of an icon image which represents the place in some way.
    // String iconUrl
    test('to test the property `iconUrl`', () async {
      // TODO
    });

    // GeoPosition position
    test('to test the property `position`', () async {
      // TODO
    });

    // Distance, in meters, to this item and the device. Currently this is the _straight line_ distance, i.e. no account is being made  for reachability from the device's current location. _Optional_ since we may not always have the device's location to calculate this value. 
    // num distanceAway
    test('to test the property `distanceAway`', () async {
      // TODO
    });

    // Geocoder sourceGeocoder
    test('to test the property `sourceGeocoder`', () async {
      // TODO
    });

    // Numeric value, indicating how well this item was deemed to match against the search term, where 100 denotes a _perfect_ match. 
    // num score
    test('to test the property `score`', () async {
      // TODO
    });


  });

}
