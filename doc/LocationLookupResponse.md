# polaris_client.model.LocationLookupResponse

## Load the model package
```dart
import 'package:polaris_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** |  | 
**requestId** | **String** | The UUID v4 of the request, this response was generated for | 
**errorMessage** | **String** | An explanation of what in the request caused the request to fail. Only returned when the status is set to 'error' | [optional] 
**data** | [**PlaceDetails**](PlaceDetails.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


