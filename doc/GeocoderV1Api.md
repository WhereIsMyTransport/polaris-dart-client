# openapi.api.GeocoderV1Api

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://polaris.whereismytransport.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchForward**](GeocoderV1Api.md#searchForward) | **POST** /v1/geocoding/forward | Perform forward geocoding based on provided search string and other parameters.
[**searchReverse**](GeocoderV1Api.md#searchReverse) | **POST** /v1/geocoding/reverse | Performs reverse geocoding, i.e. converts a (longitude, lattitude) pair into one or more name(s).


# **searchForward**
> ForwardGeocodingResponse searchForward(forwardGeocodingRequest)

Perform forward geocoding based on provided search string and other parameters.

Internally leverages one or more providers to generate a list of results that best match the provided  search parameters. 

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = GeocoderV1Api();
var forwardGeocodingRequest = ForwardGeocodingRequest(); // ForwardGeocodingRequest | 

try { 
    var result = api_instance.searchForward(forwardGeocodingRequest);
    print(result);
} catch (e) {
    print("Exception when calling GeocoderV1Api->searchForward: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forwardGeocodingRequest** | [**ForwardGeocodingRequest**](ForwardGeocodingRequest.md)|  | 

### Return type

[**ForwardGeocodingResponse**](ForwardGeocodingResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchReverse**
> ReverseGeocodingResponse searchReverse(reverseGeocodingRequest)

Performs reverse geocoding, i.e. converts a (longitude, lattitude) pair into one or more name(s).

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = GeocoderV1Api();
var reverseGeocodingRequest = ReverseGeocodingRequest(); // ReverseGeocodingRequest | 

try { 
    var result = api_instance.searchReverse(reverseGeocodingRequest);
    print(result);
} catch (e) {
    print("Exception when calling GeocoderV1Api->searchReverse: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reverseGeocodingRequest** | [**ReverseGeocodingRequest**](ReverseGeocodingRequest.md)|  | 

### Return type

[**ReverseGeocodingResponse**](ReverseGeocodingResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

