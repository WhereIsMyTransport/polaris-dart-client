# polaris_client.model.DeviceContext

## Load the model package
```dart
import 'package:polaris_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**epoch** | **num** | Time as per the device, in UTC (i.e. not relative to some local timezone). Stated as the number of seconds since 1 Jan 1970. | 
**location** | [**GeoPosition**](GeoPosition.md) |  | [optional] 
**language** | [**LanguageCode**](LanguageCode.md) |  | 
**tenantId** | **String** | Identity tenant used by the client. This is used to identify the city (CDMX or Bangkok) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


