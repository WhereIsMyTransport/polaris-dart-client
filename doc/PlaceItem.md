# openapi.model.PlaceItem

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayText** | **String** | Contains the text describing the place, whether it be a street address, landmark or other point of interest. | [default to null]
**addressText** | **String** | Longer, more detailed address of the _place_. There is no guarantee as to the format and parts (i.e. neighbourhood, street name etc)  contained therein - indeed the contents will be refined as we get to better understand our audience and their preferences.  | [default to null]
**iconUrl** | **String** | The absolute URI of an icon image which represents the place in some way. | [optional] [default to null]
**position** | [**GeoPosition**](GeoPosition.md) |  | [default to null]
**distanceAway** | **num** | Distance, in meters, to this item and the device. Currently this is the _straight line_ distance, i.e. no account is being made  for reachability from the device&#39;s current location. _Optional_ since we may not always have the device&#39;s location to calculate this value.  | [optional] [default to null]
**sourceGeocoder** | [**Geocoder**](Geocoder.md) |  | [optional] [default to null]
**score** | **num** | Numeric value, indicating how well this item was deemed to match against the search term, where 100 denotes a _perfect_ match.  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


