# polaris_client.api.GeocoderV2Api

## Load the API package
```dart
import 'package:polaris_client/api.dart';
```

All URIs are relative to *https://polaris-prod-mex.rumbo.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**lookupLocation**](GeocoderV2Api.md#lookuplocation) | **POST** /v2/location-lookup | Performs reverse geocoding, i.e. looks up place details from a pair of longitude & latitude coordinates. 
[**lookupPrediction**](GeocoderV2Api.md#lookupprediction) | **POST** /v2/prediction-lookup | Looks up the details for search prediction, where these are not included in the search results. 
[**searchPlace**](GeocoderV2Api.md#searchplace) | **POST** /v2/place-search | Starts, or continues a place search session. 


# **lookupLocation**
> LocationLookupResponse lookupLocation(locationLookupRequest)

Performs reverse geocoding, i.e. looks up place details from a pair of longitude & latitude coordinates. 

### Example
```dart
import 'package:polaris_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GeocoderV2Api();
final locationLookupRequest = LocationLookupRequest(); // LocationLookupRequest | 

try {
    final result = api_instance.lookupLocation(locationLookupRequest);
    print(result);
} catch (e) {
    print('Exception when calling GeocoderV2Api->lookupLocation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationLookupRequest** | [**LocationLookupRequest**](LocationLookupRequest.md)|  | 

### Return type

[**LocationLookupResponse**](LocationLookupResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lookupPrediction**
> PredictionLookupResponse lookupPrediction(predictionLookupRequest)

Looks up the details for search prediction, where these are not included in the search results. 

### Example
```dart
import 'package:polaris_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GeocoderV2Api();
final predictionLookupRequest = PredictionLookupRequest(); // PredictionLookupRequest | 

try {
    final result = api_instance.lookupPrediction(predictionLookupRequest);
    print(result);
} catch (e) {
    print('Exception when calling GeocoderV2Api->lookupPrediction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **predictionLookupRequest** | [**PredictionLookupRequest**](PredictionLookupRequest.md)|  | 

### Return type

[**PredictionLookupResponse**](PredictionLookupResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchPlace**
> PlaceSearchResponse searchPlace(placeSearchRequest)

Starts, or continues a place search session. 

### Example
```dart
import 'package:polaris_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GeocoderV2Api();
final placeSearchRequest = PlaceSearchRequest(); // PlaceSearchRequest | 

try {
    final result = api_instance.searchPlace(placeSearchRequest);
    print(result);
} catch (e) {
    print('Exception when calling GeocoderV2Api->searchPlace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **placeSearchRequest** | [**PlaceSearchRequest**](PlaceSearchRequest.md)|  | 

### Return type

[**PlaceSearchResponse**](PlaceSearchResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

