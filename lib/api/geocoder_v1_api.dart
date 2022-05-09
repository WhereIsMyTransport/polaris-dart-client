//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GeocoderV1Api {
  GeocoderV1Api([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Perform forward geocoding based on provided search string and other parameters.
  ///
  /// Internally leverages one or more providers to generate a list of results that best match the provided  search parameters. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ForwardGeocodingRequest] forwardGeocodingRequest (required):
  Future<Response> searchForwardWithHttpInfo(ForwardGeocodingRequest forwardGeocodingRequest) async {
    // Verify required params are set.
    if (forwardGeocodingRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: forwardGeocodingRequest');
    }

    final path = r'/v1/geocoding/forward';

    Object postBody = forwardGeocodingRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Perform forward geocoding based on provided search string and other parameters.
  ///
  /// Internally leverages one or more providers to generate a list of results that best match the provided  search parameters. 
  ///
  /// Parameters:
  ///
  /// * [ForwardGeocodingRequest] forwardGeocodingRequest (required):
  Future<ForwardGeocodingResponse> searchForward(ForwardGeocodingRequest forwardGeocodingRequest) async {
    final response = await searchForwardWithHttpInfo(forwardGeocodingRequest);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ForwardGeocodingResponse',) as ForwardGeocodingResponse;
        }
    return Future<ForwardGeocodingResponse>.value(null);
  }

  /// Performs reverse geocoding, i.e. converts a (longitude, lattitude) pair into one or more name(s).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ReverseGeocodingRequest] reverseGeocodingRequest (required):
  Future<Response> searchReverseWithHttpInfo(ReverseGeocodingRequest reverseGeocodingRequest) async {
    // Verify required params are set.
    if (reverseGeocodingRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: reverseGeocodingRequest');
    }

    final path = r'/v1/geocoding/reverse';

    Object postBody = reverseGeocodingRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Performs reverse geocoding, i.e. converts a (longitude, lattitude) pair into one or more name(s).
  ///
  /// Parameters:
  ///
  /// * [ReverseGeocodingRequest] reverseGeocodingRequest (required):
  Future<ReverseGeocodingResponse> searchReverse(ReverseGeocodingRequest reverseGeocodingRequest) async {
    final response = await searchReverseWithHttpInfo(reverseGeocodingRequest);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReverseGeocodingResponse',) as ReverseGeocodingResponse;
        }
    return Future<ReverseGeocodingResponse>.value(null);
  }
}
