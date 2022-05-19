//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library polaris;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/geocoder_v1_api.dart';
part 'api/geocoder_v2_api.dart';

part 'model/app_context.dart';
part 'model/caller_location_info.dart';
part 'model/client_error_response.dart';
part 'model/common_geocoding_request.dart';
part 'model/common_request.dart';
part 'model/common_response.dart';
part 'model/coordinates.dart';
part 'model/device_context.dart';
part 'model/flow_context.dart';
part 'model/forward_geocoding_request.dart';
part 'model/forward_geocoding_request_all_of.dart';
part 'model/forward_geocoding_response.dart';
part 'model/geo_position.dart';
part 'model/geocode_results.dart';
part 'model/geocoder.dart';
part 'model/language_code.dart';
part 'model/location_lookup_request.dart';
part 'model/location_lookup_request_all_of.dart';
part 'model/location_lookup_response.dart';
part 'model/map_view_context.dart';
part 'model/place_details.dart';
part 'model/place_item.dart';
part 'model/place_search_request.dart';
part 'model/place_search_request_all_of.dart';
part 'model/place_search_response.dart';
part 'model/place_search_response_all_of.dart';
part 'model/place_search_response_all_of_data.dart';
part 'model/prediction.dart';
part 'model/prediction_lookup_request.dart';
part 'model/prediction_lookup_request_all_of.dart';
part 'model/prediction_lookup_response.dart';
part 'model/prediction_lookup_response_all_of.dart';
part 'model/reverse_geocoding_request.dart';
part 'model/reverse_geocoding_request_all_of.dart';
part 'model/reverse_geocoding_response.dart';
part 'model/search_result_candidate.dart';
part 'model/service_base_response.dart';
part 'model/service_request.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
