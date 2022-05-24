# polaris_client.model.SearchResultCandidate

## Load the model package
```dart
import 'package:polaris_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**candidateType** | **String** | Discriminator for the type of candidate returned, either a 'prediction' or a 'place' | [optional] 
**place** | [**PlaceDetails**](PlaceDetails.md) |  | [optional] 
**prediction** | [**Prediction**](Prediction.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


