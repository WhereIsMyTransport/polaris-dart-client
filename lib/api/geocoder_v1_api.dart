part of openapi.api;



class GeocoderV1Api {
  final ApiClient apiClient;

  GeocoderV1Api([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Perform forward geocoding based on provided search string and other parameters. with HTTP info returned
  ///
  /// Internally leverages one or more providers to generate a list of results that best match the provided  search parameters. 
  Future<Response> searchForwardWithHttpInfo(ForwardGeocodingRequest forwardGeocodingRequest) async {
    Object postBody = forwardGeocodingRequest;

    // verify required params are set
    if(forwardGeocodingRequest == null) {
     throw ApiException(400, "Missing required param: forwardGeocodingRequest");
    }

    // create path and map variables
    String path = "/v1/geocoding/forward".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Perform forward geocoding based on provided search string and other parameters.
  ///
  /// Internally leverages one or more providers to generate a list of results that best match the provided  search parameters. 
  Future<ForwardGeocodingResponse> searchForward(ForwardGeocodingRequest forwardGeocodingRequest) async {
    Response response = await searchForwardWithHttpInfo(forwardGeocodingRequest);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ForwardGeocodingResponse') as ForwardGeocodingResponse;
    } else {
      return null;
    }
  }

  /// Performs reverse geocoding, i.e. converts a (longitude, lattitude) pair into one or more name(s). with HTTP info returned
  ///
  /// 
  Future<Response> searchReverseWithHttpInfo(ReverseGeocodingRequest reverseGeocodingRequest) async {
    Object postBody = reverseGeocodingRequest;

    // verify required params are set
    if(reverseGeocodingRequest == null) {
     throw ApiException(400, "Missing required param: reverseGeocodingRequest");
    }

    // create path and map variables
    String path = "/v1/geocoding/reverse".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Performs reverse geocoding, i.e. converts a (longitude, lattitude) pair into one or more name(s).
  ///
  /// 
  Future<ReverseGeocodingResponse> searchReverse(ReverseGeocodingRequest reverseGeocodingRequest) async {
    Response response = await searchReverseWithHttpInfo(reverseGeocodingRequest);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ReverseGeocodingResponse') as ReverseGeocodingResponse;
    } else {
      return null;
    }
  }

}
