# polaris_client.model.Prediction

## Load the model package
```dart
import 'package:polaris_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | A unique identifier for this candidate result, in the context of this search session and its current state  | 
**displayText** | **String** | Contains the text describing the place, whether it be a street address, landmark or other point of interest.  | 
**geocoder** | **String** | A short name identifying the geocoder Polaris obtained the location/place information from. Open to extension. Clients MUST not base logic on the values herein.  | 
**distanceAway** | **int** | If the caller provided a location, this contains the _straight line_ distance between that coordinate and that of the place in meters.  Note: This calculation assumes that these locations are reachable. _Optional_ since a location may not have been provided in the request.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


