//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of polaris;


class GeocoderV2Api {
  GeocoderV2Api([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs reverse geocoding, i.e. looks up place details from a pair of longitude & latitude coordinates. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LocationLookupRequest] locationLookupRequest (required):
  Future<Response> lookupLocationWithHttpInfo(LocationLookupRequest locationLookupRequest,) async {
    // Verify required params are set.
    if (locationLookupRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: locationLookupRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/v2/location-lookup';

    // ignore: prefer_final_locals
    Object postBody = locationLookupRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['bearerAuth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Performs reverse geocoding, i.e. looks up place details from a pair of longitude & latitude coordinates. 
  ///
  /// Parameters:
  ///
  /// * [LocationLookupRequest] locationLookupRequest (required):
  Future<LocationLookupResponse> lookupLocation(LocationLookupRequest locationLookupRequest,) async {
    final response = await lookupLocationWithHttpInfo(locationLookupRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LocationLookupResponse',) as LocationLookupResponse;
    
    }
    return Future<LocationLookupResponse>.value();
  }

  /// Looks up the details for search prediction, where these are not included in the search results. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PredictionLookupRequest] predictionLookupRequest (required):
  Future<Response> lookupPredictionWithHttpInfo(PredictionLookupRequest predictionLookupRequest,) async {
    // Verify required params are set.
    if (predictionLookupRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: predictionLookupRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/v2/prediction-lookup';

    // ignore: prefer_final_locals
    Object postBody = predictionLookupRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['bearerAuth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Looks up the details for search prediction, where these are not included in the search results. 
  ///
  /// Parameters:
  ///
  /// * [PredictionLookupRequest] predictionLookupRequest (required):
  Future<PredictionLookupResponse> lookupPrediction(PredictionLookupRequest predictionLookupRequest,) async {
    final response = await lookupPredictionWithHttpInfo(predictionLookupRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PredictionLookupResponse',) as PredictionLookupResponse;
    
    }
    return Future<PredictionLookupResponse>.value();
  }

  /// Starts, or continues a place search session. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PlaceSearchRequest] placeSearchRequest (required):
  Future<Response> searchPlaceWithHttpInfo(PlaceSearchRequest placeSearchRequest,) async {
    // Verify required params are set.
    if (placeSearchRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: placeSearchRequest');
    }

    // ignore: prefer_const_declarations
    final path = r'/v2/place-search';

    // ignore: prefer_final_locals
    Object postBody = placeSearchRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['bearerAuth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Starts, or continues a place search session. 
  ///
  /// Parameters:
  ///
  /// * [PlaceSearchRequest] placeSearchRequest (required):
  Future<PlaceSearchResponse> searchPlace(PlaceSearchRequest placeSearchRequest,) async {
    final response = await searchPlaceWithHttpInfo(placeSearchRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlaceSearchResponse',) as PlaceSearchResponse;
    
    }
    return Future<PlaceSearchResponse>.value();
  }
}
