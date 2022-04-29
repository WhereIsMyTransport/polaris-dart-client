# openapi.model.ServiceContext

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **String** | Opaque (to the caller) version string of the Polaris service instance that handled the request. To be emitted as part of client side analytics. This takes away any guesswork in analytics data as to the version of the service that returned the results,  i.e. there is no need for another mechanism to communicate service releases to the analytics processing pipeline. This would also prove useful if we (ever) start performing A/B testing.  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


