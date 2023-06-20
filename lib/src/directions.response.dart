// Copyright (c) 2021, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of 'directions.dart';

/// Directions responses contain the following root elements:
///
///  * `status` contains metadata on the request. See [DirectionsStatus].
///  * `geocodedWaypoints` contains an array with details about the
/// geocoding of origin, destination and waypoints. See
/// [GeocodedWaypoint].
///  * `routes` contains an array of routes from the origin to the
/// destination. See [DirectionsRoute]. Routes consist of nested Legs
/// and Steps.
///  * `availableTravelModes` contains an array of available travel modes.
/// This field is returned when a request specifies a travel mode and
/// gets no results. The array contains the available travel modes in
/// the countries of the given set of waypoints. This field is not
/// returned if one or more of the waypoints are via: waypoints.
///
///  * `errorMessages` contains more detailed information about the reasons
/// behind the given status code.
@freezed
class DirectionsResult with _$DirectionsResult {
  const factory DirectionsResult({
    /// When the Directions API returns results, it places them within a
    /// (JSON) routes array. Even if the service returns no results (such
    /// as if the origin and/or destination doesn't exist) it still
    /// returns an empty routes array. (XML responses consist of zero or
    /// more <route> elements.)
    ///
    /// Each element of the routes array contains a single result from
    /// the specified origin and destination. This route may consist of
    /// one or more legs depending on whether any waypoints were specified.
    /// As well, the route also contains copyright and warning information
    /// which must be displayed to the user in addition to the routing
    /// information.
    List<DirectionsRoute>? routes,

    /// Details about the geocoding of every waypoint, as well as origin
    /// and destination, can be found in the (JSON) geocoded_waypoints
    /// array. These can be used to infer why the service would return
    /// unexpected or no routes.
    ///
    /// Elements in the geocoded_waypoints array correspond, by their
    /// zero-based position, to the origin, the waypoints in the order
    /// they are specified, and the destination.
    List<GeocodedWaypoint>? geocodedWaypoints,

    /// The status field within the Directions response object contains
    /// the status of the request, and may contain debugging information
    /// to help you track down why the Directions service failed. The
    /// status field may contain the following values:
    ///  * [DirectionsStatus.ok] indicates the response contains a valid
    /// result.
    ///  * [DirectionsStatus.notFound] indicates at least one of the
    /// locations specified in the request's origin, destination, or
    /// waypoints could not be geocoded.
    ///  * [DirectionsStatus.zeroResults] indicates no route could be
    /// found between the origin and destination.
    ///  * [DirectionsStatus.maxWaypointExceeded] indicates that too
    /// many waypoints were provided in the request. For applications
    /// using the Directions API as a web service, or the [directions
    /// service in the Maps JavaScript API][maps_js_api], the maximum
    /// allowed number of waypoints is 25, plus the origin and destination.
    ///  * [DirectionsStatus.maxRouteLengthExceeded] indicates the
    /// requested route is too long and cannot be processed. This error
    /// occurs when more complex directions are returned. Try reducing
    /// the number of waypoints, turns, or instructions.
    ///  * [DirectionsStatus.invalidRequest] indicates that the provided
    /// request was invalid. Common causes of this status include an
    /// invalid parameter or parameter value.
    ///  * [DirectionsStatus.overDailyLimit] indicates any of the following:
    ///     * The API key is missing or invalid.
    ///     * Billing has not been enabled on your account.
    ///     * A self-imposed usage cap has been exceeded.
    ///     * The provided method of payment is no longer valid (for example,
    /// a credit card has expired).
    ///     * See the [Maps FAQ][faq] to learn how to fix this.
    ///  * [DirectionsStatus.overQueryLimit] indicates the service has
    /// received too many requests from your application within the
    /// allowed time period.
    ///  * [DirectionsStatus.requestDenied] indicates that the service
    /// denied use of the directions service by your application.
    ///  * [DirectionsStatus.unknownError] indicates a directions request
    /// could not be processed due to a server error. The request may
    /// succeed if you try again.
    ///
    /// [faq]: https://developers.google.com/maps/faq#over-limit-key-error
    /// [maps_js_api]: https://developers.google.com/maps/documentation/javascript/directions
    DirectionsStatus? status,

    /// When the status code is other than OK, there may be an additional
    /// `errorMessage` field within the Directions response object. This
    /// field contains more detailed information about the reasons behind
    /// the given status code.
    String? errorMessage,

    /// Contains an array of available travel modes. This field is returned
    /// when a request specifies a travel mode and gets no results. The array
    /// contains the available travel modes in the countries of the given set
    /// of waypoints. This field is not returned if one or more of the
    /// waypoints are via: waypoints. See details below.
    List<TravelMode>? availableTravelModes,
  }) = _DirectionsResult;

  factory DirectionsResult.fromJson(Map<String, dynamic> json) =>
      _$DirectionsResultFromJson(json);
}

/// When the Directions API returns results, it places them within a
/// (JSON) routes array. Even if the service returns no results (such
/// as if the origin and/or destination doesn't exist) it still
/// returns an empty routes array. (XML responses consist of zero or
/// more <route> elements.)
///
/// Each element of the routes array contains a single result from
/// the specified origin and destination. This route may consist of
/// one or more legs depending on whether any waypoints were specified.
/// As well, the route also contains copyright and warning information
/// which must be displayed to the user in addition to the routing
/// information.
///
/// Each route within the routes field may contain the following fields:
///
///  * `summary` contains a short textual description for the route,
/// suitable for naming and disambiguating the route from alternatives.
///  * `legs` contains an array which contains information about a
/// leg of the route, between two locations within the given route.
/// A separate leg will be present for each waypoint or destination
/// specified. (A route with no waypoints will contain exactly one
/// leg within the legs array.) Each leg consists of a series of
/// steps. (See [DirectionsLeg].)
///  * `waypointOrder` contains an array indicating the order of any
/// waypoints in the calculated route. This waypoints may be reordered
/// if the request was passed optimize:true within its waypoints parameter.
///  * `overviewPolyline` contains a single points object that holds
/// an [encoded polyline][enc_polyline] representation of the route.
/// This polyline is an approximate (smoothed) path of the resulting
/// directions.
///  * `bounds` contains the viewport bounding box of the
/// [overviewPolyline].
///  * `copyrights` contains the copyrights text to be displayed for
/// this route. You must handle and display this information yourself.
///  * `warnings` contains an array of warnings to be displayed when
/// showing these directions. You must handle and display these
/// warnings yourself.
///  * `fare`: If present, contains the total fare (that is, the total
/// ticket costs) on this route. This property is only returned for
/// transit requests and only for routes where fare information is
/// available for all transit legs. The information includes:
///   * `currency`: An [ISO 4217 currency code][iso4217] indicating the
/// currency that the amount is expressed in.
///   * `value`: The total fare amount, in the currency specified above.
///   * `text`: The total fare amount, formatted in the requested language.
///
/// **Note**: The Directions API only returns fare information for
/// requests that contain either an API key or a client ID and digital
/// signature.
///
/// [enc_polyline]: https://developers.google.com/maps/documentation/utilities/polylinealgorithm
/// [iso4217]: https://en.wikipedia.org/wiki/ISO_4217
@freezed
class DirectionsRoute with _$DirectionsRoute {
  const factory DirectionsRoute({
    /// Contains the viewport bounding box of the [overviewPolyline].
    GeoCoordBounds? bounds,

    /// Contains the copyrights text to be displayed for this route.
    /// You must handle and display this information yourself.
    String? copyrights,

    /// Contains an array which contains information about a
    /// leg of the route, between two locations within the given route.
    /// A separate leg will be present for each waypoint or destination
    /// specified. (A route with no waypoints will contain exactly one
    /// leg within the legs array.) Each leg consists of a series of
    /// steps. (See [DirectionsLeg].)
    List<DirectionsLeg>? legs,

    /// Contains a single points object that holds an
    /// [encoded polyline][enc_polyline] representation of the route.
    /// This polyline is an approximate (smoothed) path of the resulting
    /// directions.
    ///
    /// [enc_polyline]: https://developers.google.com/maps/documentation/utilities/polylinealgorithm
    OverviewPolyline? overviewPolyline,

    /// Contains a short textual description for the route, suitable for
    /// naming and disambiguating the route from alternatives.
    String? summary,

    /// Contains an array of warnings to be displayed when showing these
    /// directions. You must handle and display these warnings yourself.
    List<String>? warnings,

    /// Contains an array indicating the order of any waypoints in the
    /// calculated route. This waypoints may be reordered if the request
    /// was passed `optimize:true` within its waypoints parameter.
    List<num>? waypointOrder,

    /// Contains the total fare (that is, the total
    /// ticket costs) on this route. This property is only returned for
    /// transit requests and only for routes where fare information is
    /// available for all transit legs. The information includes:
    ///   * `currency`: An [ISO 4217 currency code][iso4217] indicating the
    /// currency that the amount is expressed in.
    ///   * `value`: The total fare amount, in the currency specified above.
    ///   * `text`: The total fare amount, formatted in the requested language.
    ///
    /// [iso4217]: https://en.wikipedia.org/wiki/ISO_4217
    Fare? fare,
  }) = _DirectionsRoute;

  factory DirectionsRoute.fromJson(Map<String, dynamic> json) =>
      _$DirectionsRouteFromJson(json);
}

/// Details about the geocoding of every waypoint, as well as origin
/// and destination, can be found in the (JSON) geocoded_waypoints
/// array. These can be used to infer why the service would return
/// unexpected or no routes.
///
/// Elements in the geocoded_waypoints array correspond, by their
/// zero-based position, to the origin, the waypoints in the order
/// they are specified, and the destination. Each element includes
/// the following details about the geocoding operation for the
/// corresponding waypoint:
///
/// [geocoderStatus] indicates the status code resulting from the
/// geocoding operation. This field may contain the following values.
///  * "OK" indicates that no errors occurred; the address was
/// successfully parsed and at least one geocode was returned.
///  * "ZERO_RESULTS" indicates that the geocode was successful
/// but returned no results. This may occur if the geocoder was
/// passed a non-existent address.
///
/// [partialMatch] indicates that the geocoder did not return an
/// exact match for the original request, though it was able to
/// match part of the requested address. You may wish to examine
/// the original request for misspellings and/or an incomplete
/// address.
///
/// Partial matches most often occur for street addresses
/// that do not exist within the locality you pass in the
/// request. Partial matches may also be returned when a
/// request matches two or more locations in the same locality.
/// For example, "21 Henr St, Bristol, UK" will return a
/// partial match for both Henry Street and Henrietta Street.
/// Note that if a request includes a misspelled address
/// component, the geocoding service may suggest an alternative
/// address. Suggestions triggered in this way will also be
/// marked as a partial match.
///
/// [placeId] is a unique identifier that can be used with other
/// Google APIs. For example, you can use the place_id from a
/// [Google Place Autocomplete response][autocomplete_response]
/// to calculate directions to a local business. See the
/// [Place ID overview][place_id_overview].
///
/// [autocomplete_response]: https://developers.google.com/places/web-service/autocomplete#place_autocomplete_responses
/// [place_id_overview]: https://developers.google.com/places/place-id
///
/// [types] indicates the address type of the geocoding result
/// used for calculating directions. The following types are
/// returned:
///  * [street_address] indicates a precise street address.
///  * [route] indicates a named route (such as "US 101").
///  * [intersection] indicates a major intersection, usually
/// of two major roads.
///  * [political] indicates a political entity. Usually, this
/// type indicates a polygon of some civil administration.
///  * [country] indicates the national political entity, and
/// is typically the highest order type returned by the Geocoder.
///  * [administrative_area_level_1] indicates a first-order
/// civil entity below the country level. Within the United
/// States, these administrative levels are states. Not all
/// nations exhibit these administrative levels. In most cases,
/// administrative_area_level_1 short names will closely match
/// ISO 3166-2 subdivisions and other widely circulated lists;
/// however this is not guaranteed as our geocoding results are
/// based on a variety of signals and location data.
///  * [administrative_area_level_2] indicates a second-order
/// civil entity below the country level. Within the United
/// States, these administrative levels are counties. Not all
/// nations exhibit these administrative levels.
///  * [administrative_area_level_3] indicates a third-order
/// civil entity below the country level. This type indicates
/// a minor civil division. Not all nations exhibit these
/// administrative levels.
///  * [administrative_area_level_4] indicates a fourth-order
/// civil entity below the country level. This type indicates
/// a minor civil division. Not all nations exhibit these
/// administrative levels.
///  * [administrative_area_level_5] indicates a fifth-order
/// civil entity below the country level. This type indicates
/// a minor civil division. Not all nations exhibit these
/// administrative levels.
///  * [colloquial_area] indicates a commonly-used alternative
/// name for the entity.
///  * [locality] indicates an incorporated city or town
/// political entity.
///  * [sublocality] indicates a first-order civil entity below
/// a locality. For some locations may receive one of the
/// additional types: sublocality_level_1 to sublocality_level_5.
/// Each sublocality level is a civil entity. Larger numbers
/// indicate a smaller geographic area.
///  * [neighborhood] indicates a named neighborhood
///  * [premise] indicates a named location, usually a building
/// or collection of buildings with a common name
///  * [subpremise] indicates a first-order entity below a named
/// location, usually a singular building within a collection of
/// buildings with a common name
///  * [postal_code] indicates a postal code as used to address
/// postal mail within the country.
///  * [natural_feature] indicates a prominent natural feature.
///  * [airport] indicates an airport.
///  * [park] indicates a named park.
///  * [point_of_interest] indicates a named point of interest.
/// Typically, these "POI"s are prominent local entities that don't
/// easily fit in another category, such as "Empire State Building"
/// or "Eiffel Tower".
///
/// An empty list of types indicates there are no known types for
/// the particular address component, for example, Lieu-dit in
/// France.
@freezed
class GeocodedWaypoint with _$GeocodedWaypoint {
  const factory GeocodedWaypoint({
    /// Indicates the status code resulting from the geocoding
    /// operation. This field may contain the following values.
    ///  * "OK" indicates that no errors occurred; the address was
    /// successfully parsed and at least one geocode was returned.
    ///  * "ZERO_RESULTS" indicates that the geocode was successful
    /// but returned no results. This may occur if the geocoder was
    /// passed a non-existent address.
    String? geocoderStatus,

    /// Indicates that the geocoder did not return an exact match
    /// for the original request, though it was able to match part
    /// of the requested address. You may wish to examine the
    /// original request for misspellings and/or an incomplete
    /// address.
    ///
    /// Partial matches most often occur for street addresses
    /// that do not exist within the locality you pass in the
    /// request. Partial matches may also be returned when a
    /// request matches two or more locations in the same locality.
    /// For example, "21 Henr St, Bristol, UK" will return a
    /// partial match for both Henry Street and Henrietta Street.
    /// Note that if a request includes a misspelled address
    /// component, the geocoding service may suggest an alternative
    /// address. Suggestions triggered in this way will also be
    /// marked as a partial match.
    bool? partialMatch,

    /// Is a unique identifier that can be used with other
    /// Google APIs. For example, you can use the place_id from a
    /// [Google Place Autocomplete response][autocomplete_response]
    /// to calculate directions to a local business. See the
    /// [Place ID overview][place_id_overview].
    ///
    /// [autocomplete_response]: https://developers.google.com/places/web-service/autocomplete#place_autocomplete_responses
    /// [place_id_overview]: https://developers.google.com/places/place-id
    String? placeId,

    /// Indicates the address type of the geocoding result
    /// used for calculating directions. The following types are
    /// returned:
    ///  * [street_address] indicates a precise street address.
    ///  * [route] indicates a named route (such as "US 101").
    ///  * [intersection] indicates a major intersection, usually
    /// of two major roads.
    ///  * [political] indicates a political entity. Usually, this
    /// type indicates a polygon of some civil administration.
    ///  * [country] indicates the national political entity, and
    /// is typically the highest order type returned by the Geocoder.
    ///  * [administrative_area_level_1] indicates a first-order
    /// civil entity below the country level. Within the United
    /// States, these administrative levels are states. Not all
    /// nations exhibit these administrative levels. In most cases,
    /// administrative_area_level_1 short names will closely match
    /// ISO 3166-2 subdivisions and other widely circulated lists;
    /// however this is not guaranteed as our geocoding results are
    /// based on a variety of signals and location data.
    ///  * [administrative_area_level_2] indicates a second-order
    /// civil entity below the country level. Within the United
    /// States, these administrative levels are counties. Not all
    /// nations exhibit these administrative levels.
    ///  * [administrative_area_level_3] indicates a third-order
    /// civil entity below the country level. This type indicates
    /// a minor civil division. Not all nations exhibit these
    /// administrative levels.
    ///  * [administrative_area_level_4] indicates a fourth-order
    /// civil entity below the country level. This type indicates
    /// a minor civil division. Not all nations exhibit these
    /// administrative levels.
    ///  * [administrative_area_level_5] indicates a fifth-order
    /// civil entity below the country level. This type indicates
    /// a minor civil division. Not all nations exhibit these
    /// administrative levels.
    ///  * [colloquial_area] indicates a commonly-used alternative
    /// name for the entity.
    ///  * [locality] indicates an incorporated city or town
    /// political entity.
    ///  * [sublocality] indicates a first-order civil entity below
    /// a locality. For some locations may receive one of the
    /// additional types: sublocality_level_1 to sublocality_level_5.
    /// Each sublocality level is a civil entity. Larger numbers
    /// indicate a smaller geographic area.
    ///  * [neighborhood] indicates a named neighborhood
    ///  * [premise] indicates a named location, usually a building
    /// or collection of buildings with a common name
    ///  * [subpremise] indicates a first-order entity below a named
    /// location, usually a singular building within a collection of
    /// buildings with a common name
    ///  * [postal_code] indicates a postal code as used to address
    /// postal mail within the country.
    ///  * [natural_feature] indicates a prominent natural feature.
    ///  * [airport] indicates an airport.
    ///  * [park] indicates a named park.
    ///  * [point_of_interest] indicates a named point of interest.
    /// Typically, these "POI"s are prominent local entities that don't
    /// easily fit in another category, such as "Empire State Building"
    /// or "Eiffel Tower".
    ///
    /// An empty list of types indicates there are no known types for
    /// the particular address component, for example, Lieu-dit in
    /// France.
    required List<String>? types,
  }) = _GeocodedWaypoint;

  factory GeocodedWaypoint.fromJson(Map<String, dynamic> json) =>
      _$GeocodedWaypointFromJson(json);
}

/// Each element in the legs array specifies a single leg of the
/// journey from the origin to the destination in the calculated
/// route. For routes that contain no waypoints, the route will
/// consist of a single "leg," but for routes that define one or
/// more waypoints, the route will consist of one or more legs,
/// corresponding to the specific legs of the journey.
///
/// Each leg within the legs field(s) may contain the following
/// fields:
///
///  * `steps` contains an array of steps denoting information
/// about each separate step of the leg of the journey.
/// (See [DirectionsStep])
///
///  * `distance` indicates the total distance covered by this
/// leg, as a field with the following elements:
///   * `value` indicates the distance in meters
///   * `text` contains a human-readable representation of the
/// distance, displayed in units as used at the origin (or as
/// overridden within the `units` parameter in the request).
/// (For example, miles and feet will be used for any origin
/// within the United States.) Note that regardless of what
/// unit system is displayed as text, the `distance.value`
/// field always contains a value expressed in meters.
///
///   These fields may be absent if the distance is unknown.
///
///
///  * `duration` indicates the total duration of this leg,
/// as a field with the following elements:
///   * `value` indicates the duration in seconds.
///   * `text` contains a human-readable representation of the
/// duration.
///
///   These fields may be absent if the duration is unknown.
///
///
///  * `durationInTraffic` indicates the total duration of this
/// leg. This value is an estimate of the time in traffic based on
/// current and historical traffic conditions. See the `trafficModel`
/// request parameter for the options you can use to request that
/// the returned value is optimistic, pessimistic, or a best-guess
/// estimate. The duration in traffic is returned only if all of
/// the following are true:
///
///   * The request includes a valid API key, or a valid Google Maps
///   * Platform Premium Plan client ID and signature.
///   * The request does not include stopover waypoints. If the
/// request includes waypoints, they must be prefixed with `via:`
/// to avoid stopovers.
///   * The request is specifically for driving directions—the
/// `mode` parameter is set to `driving`.
///   * The request includes a `departureTime` parameter.
///   * Traffic conditions are available for the requested route.
///
///   The `durationInTraffic` contains the following fields:
///   * `value` indicates the duration in seconds.
///   * `text` contains a human-readable representation of the duration.
///
///  * `arrivalTime` contains the estimated time of arrival for this
/// leg. This property is only returned for transit directions. The
/// result is returned as a [TimeZoneTextValue] object with three properties:
///   * `value` the time specified as a [DateTime] object.
///   * `text` the time specified as a [String]. The time is displayed
/// in the time zone of the transit stop.
///   * `timeZone` contains the time zone of this station. The value
/// is the name of the time zone as defined in the [IANA Time Zone
/// Database][iana], e.g. `"America/New_York"`.
///
///  * `departureTime` contains the estimated time of departure for
/// this leg, specified as a [TimeZoneTextValue] object. The departureTime
/// is only available for transit directions.
///
///  * `startLocation` contains the latitude/longitude coordinates
/// of the origin of this leg. Because the Directions API calculates
/// directions between locations by using the nearest transportation
/// option (usually a road) at the start and end points,
/// `startLocation` may be different than the provided origin of this
/// leg if, for example, a road is not near the origin.
///
///  * `endLocation` contains the latitude/longitude coordinates of
/// the given destination of this leg. Because the Directions API
/// calculates directions between locations by using the nearest
/// transportation option (usually a road) at the start and end points,
/// `endLocation` may be different than the provided destination of
/// this leg if, for example, a road is not near the destination.
///
///  * `startAddress` contains the human-readable address (typically
/// a street address) resulting from reverse geocoding the
/// `startLocation` of this leg.
///
///  * `endAddress` contains the human-readable address (typically a
/// street address) from reverse geocoding the `endLocation` of
/// this leg.
///
/// [iana]: http://www.iana.org/time-zones
@freezed
class DirectionsLeg with _$DirectionsLeg {
  const factory DirectionsLeg({
    /// Contains the estimated time of arrival for this leg. This property
    /// is only returned for transit directions. The result is returned as
    /// a [TimeZoneTextValue] object with three properties:
    ///   * `value` the time specified as a [DateTime] object.
    ///   * `text` the time specified as a string. The time is displayed
    /// in the time zone of the transit stop.
    ///   * `timeZone` contains the time zone of this station. The value
    /// is the name of the time zone as defined in the [IANA Time Zone
    /// Database][iana], e.g. `"America/New_York"`.
    TimeZoneTextValue? arrivalTime,

    /// Contains the estimated time of departure for
    /// this leg, specified as a [TimeZoneTextValue] object. The departureTime
    /// is only available for transit directions.
    TimeZoneTextValue? departureTime,

    /// Indicates the total distance covered by this leg, as a
    /// field with the following elements:
    ///   * `value` indicates the distance in meters
    ///   * `text` contains a human-readable representation of the
    /// distance, displayed in units as used at the origin (or as
    /// overridden within the `units` parameter in the request).
    /// (For example, miles and feet will be used for any origin
    /// within the United States.) Note that regardless of what
    /// unit system is displayed as text, the `distance.value`
    /// field always contains a value expressed in meters.
    ///
    /// These fields may be absent if the distance is unknown.
    TextValue? distance,

    /// Indicates the total duration of this leg, as a field with
    /// the following elements:
    ///   * `value` indicates the duration in seconds.
    ///   * `text` contains a human-readable representation of the
    /// duration.
    ///
    /// These fields may be absent if the duration is unknown.
    TextValue? duration,

    /// Indicates the total duration of this leg. This value is an
    /// estimate of the time in traffic based on current and historical
    /// traffic conditions. See the `trafficModel` request parameter
    /// for the options you can use to request that the returned value
    /// is optimistic, pessimistic, or a best-guess estimate. The
    /// duration in traffic is returned only if all of the following
    /// are true:
    ///
    ///   * The request includes a valid API key, or a valid Google Maps
    ///   * Platform Premium Plan client ID and signature.
    ///   * The request does not include stopover waypoints. If the
    /// request includes waypoints, they must be prefixed with `via:`
    /// to avoid stopovers.
    ///   * The request is specifically for driving directions—the
    /// `mode` parameter is set to `driving`.
    ///   * The request includes a `departureTime` parameter.
    ///   * Traffic conditions are available for the requested route.
    ///
    ///   The `durationInTraffic` contains the following fields:
    ///   * `value` indicates the duration in seconds.
    ///   * `text` contains a human-readable representation of the duration.
    TextValue? durationInTraffic,

    /// Contains the human-readable address (typically a street address)
    /// from reverse geocoding the `endLocation` of this leg.
    String? endAddress,

    /// Contains the latitude/longitude coordinates of the given
    /// destination of this leg. Because the Directions API calculates
    /// directions between locations by using the nearest transportation
    /// option (usually a road) at the start and end points,
    /// `endLocation` may be different than the provided destination of
    /// this leg if, for example, a road is not near the destination.
    GeoCoord? endLocation,

    /// Contains the human-readable address (typically a street address)
    /// resulting from reverse geocoding the `startLocation` of this leg.
    String? startAddress,

    /// Contains the latitude/longitude coordinates of the origin of this
    /// leg. Because the Directions API calculates directions between
    /// locations by using the nearest transportation option (usually a
    /// road) at the start and end points, `startLocation` may be
    /// different than the provided origin of this leg if, for example,
    /// a road is not near the origin.
    GeoCoord? startLocation,

    /// contains an array of steps denoting information about each
    /// separate step of the leg of the journey.
    List<DirectionsStep>? steps,

    /// The locations of via waypoints along this leg.
    /// contains info about points through which the route was laid
    List<ViaWaypoint>? viaWaypoint,
  }) = _DirectionsLeg;

  factory DirectionsLeg.fromJson(Map<String, dynamic> json) =>
      _$DirectionsLegFromJson(json);
}

/// Each element in the steps array defines a single step of the
/// calculated directions. A step is the most atomic unit of a
/// direction's route, containing a single step describing a specific,
/// single instruction on the journey. E.g. "Turn left at W. 4th St."
/// The step not only describes the instruction but also contains
/// distance and duration information relating to how this step
/// relates to the following step. For example, a step denoted as
/// "Merge onto I-80 West" may contain a duration of "37 miles" and
/// "40 minutes," indicating that the next step is 37 miles/40
/// minutes from this step.
///
/// When using the Directions API to search for transit directions,
/// the steps array will include additional transit details in the
/// form of a transit_details array. If the directions include
/// multiple modes of transportation, detailed directions will be
/// provided for walking or driving steps in an inner steps array.
/// For example, a walking step will include directions from the
/// start and end locations: "Walk to Innes Ave & Fitch St". That
/// step will include detailed walking directions for that route
/// in the inner steps array, such as: "Head north-west", "Turn
/// left onto Arelious Walker", and "Turn left onto Innes Ave".
///
/// Each step within the steps field(s) may contain the following
/// fields:
///
///  * `instructions` contains formatted instructions for this step,
/// presented as a text string. (Corresponds to instructions in
/// the [Directions.Step interface][directions_step_interface].)
///
///  * `distance` contains the distance covered by this step until
/// the next step. (See the discussion of this field in Directions
/// Legs above.) This field may be undefined if the distance is
/// unknown.
///
///  * `duration` contains the typical time required to perform the
/// step, until the next step. (See the description in Directions
/// Legs above.) This field may be undefined if the duration is
/// unknown.
///
///  * `startLocation` contains the location of the starting point
/// of this step, as a single set of lat and lng fields.
///
///  * `endLocation` contains the location of the last point of this
/// step, as a single set of lat and lng fields.
///
///  * `path` contains a sequence of GeoCoords describing the
/// course of this step.
///
///  * `steps` contains detailed directions for walking or driving
/// steps in transit directions. Substeps are only available when
/// travelMode is set to "transit". The inner steps array is of
/// the same type as steps.
///
///  * `transitDetails` contains transit specific information.
/// This field is only returned with `travelMode` is set to
/// "transit". See Transit Details below. (Corresponds to transit
/// in the [Directions.Step interface][directions_step_interface].)
///
///  * `travelMode` contains the type of travel mode used.
///
/// [directions_step_interface]: https://developers.google.com/maps/documentation/javascript/reference/directions#DirectionsStep
/// [enc_polyline]: https://developers.google.com/maps/documentation/utilities/polylinealgorithm
@freezed
class DirectionsStep with _$DirectionsStep {
  const factory DirectionsStep({
    /// Contains the distance covered by this step until the next
    /// step. This field may be undefined if the distance is unknown.
    TextValue? distance,

    /// Contains the typical time required to perform the step,
    /// until the next step. This field may be undefined if the
    /// duration is unknown.
    TextValue? duration,

    /// Contains the location of the last point of this step, as a
    /// single set of lat and lng fields.
    GeoCoord? endLocation,

    /// Contains the location of the starting point of this step, as
    /// a single set of lat and lng fields.
    GeoCoord? startLocation,

    /// Contains formatted instructions for this step,
    /// presented as a text string. (Corresponds to instructions in
    /// the [Directions.Step interface][directions_step_interface].)
    @JsonKey(name: 'html_instructions') String? instructions,

    /// Contains detailed directions for walking or driving
    /// steps in transit directions. Substeps are only available when
    /// travelMode is set to "transit". The inner steps array is of
    /// the same type as steps.
    List<DirectionsStep>? steps,

    /// Contains transit specific information.
    /// This field is only returned with `travelMode` is set to
    /// "transit". See Transit Details below. (Corresponds to transit
    /// in the [Directions.Step interface][directions_step_interface].)
    TransitDetails? transit,

    /// Contains the type of travel mode used.
    @JsonKey(name: 'transit_details') TravelMode? travelMode,

    /// Contains a points describing the course of this step.
    OverviewPolyline? polyline,

    /// Contains the action to take for the current step (turn left, merge,
    /// straight, etc.).
    String? maneuver,
  }) = _DirectionsStep;

  factory DirectionsStep.fromJson(Map<String, dynamic> json) =>
      _$DirectionsStepFromJson(json);
}

/// Transit directions return additional information that is not
/// relevant for other modes of transportation. These additional
/// properties are exposed through the `transit` object,
/// returned as a field of an element in the `steps` array. From
/// the [TransitDetails] object you can access additional
/// information about the transit stop, transit line and transit
/// agency.
///
/// A `transit` object may contain the following fields:
///
///  * `arrivalStop` and `departureStop` contains information about
/// the stop/station for this part of the trip. Stop details can
/// include:
///   * `name` the name of the transit station/stop. eg. "Union
/// Square".
///   * `location` the location of the transit station/stop,
/// represented as a lat and lng field.
///
///  * `arrivalTime` and `departureTime` contain the arrival or
/// departure times for this leg of the journey, specified as the
/// following three properties:
///   * `text` the time specified as a string. The time is
/// displayed in the time zone of the transit stop.
///   * `value` the time specified as Unix time, or seconds
/// since midnight, January 1, 1970 UTC.
///   * `timeZone` contains the time zone of this station.
/// The value is the name of the time zone as defined in the
/// [IANA Time Zone Database][iana], e.g. `"America/New_York"`.
///
///  * `headsign` specifies the direction in which to travel on
/// this line, as it is marked on the vehicle or at the departure
/// stop. This will often be the terminus station.
///
///  * `headway` specifies the expected number of seconds between
/// departures from the same stop at this time. For example, with
/// a headway value of 600, you would expect a ten minute wait if
/// you should miss your bus.
///
///  * `numStops` contains the number of stops in this step,
/// counting the arrival stop, but not the departure stop.
/// For example, if your directions involve leaving from Stop A,
/// passing through stops B and C, and arriving at stop D,
/// `numStops` will return 3.
///
///  * `tripShortName` contains the text that appears in schedules
/// and sign boards to identify a transit trip to passengers. The
/// text should uniquely identify a trip within a service day. For
/// example, "538" is the `tripShortName` of the Amtrak train that
/// leaves San Jose, CA at 15:10 on weekdays to Sacramento, CA.
///
///  * `line` contains information about the transit line used in this
/// step, and may include the following properties:
///   * `name` contains the full name of this transit line. eg.
/// "7 Avenue Express".
///   * `shortName` contains the short name of this transit line.
/// This will normally be a line number, such as "M7" or "355".
///   * `color` contains the color commonly used in signage for this
/// transit line. The color will be specified as a hex string such
/// as: #FF0033.
///   * `agencies` is an array containing a single [TransitAgency]
///  object. The DirectionsTransitAgency] object provides information
/// about the operator of the line, including the following properties:
///     * `name` contains the name of the transit agency.
///     * `phone` contains the phone number of the transit agency.
///     * `url` contains the URL for the transit agency.
///
///   You must display the names and URLs of the transit agencies
/// servicing the trip results.
///
///
///   * `url` contains the URL for this transit line as provided by
/// the transit agency.
///   * `icon` contains the URL for the icon associated with this line.
///   * `textColor` contains the color of text commonly used for
/// signage of this line. The color will be specified as a hex string.
///   * `vehicle` contains the type of vehicle used on this line.
/// This may include the following properties:
///     * `name` contains the name of the vehicle on this line. eg. "Subway."
///     * `type` contains the type of vehicle that runs on this line.
/// See the Vehicle Type documentation for a complete list of supported values.
///     * `icon` contains the URL for an icon associated with this vehicle type.
///     * `localIcon` contains the URL for the icon associated with this
/// vehicle type, based on the local transport signage.
///
/// [iana]: http://www.iana.org/time-zones
@freezed
class TransitDetails with _$TransitDetails {
  const factory TransitDetails({
    /// Contains information about the stop/station for this part of
    /// the trip. Stop details can include:
    ///   * `name` the name of the transit station/stop. eg. "Union
    /// Square".
    ///   * `location` the location of the transit station/stop,
    /// represented as a lat and lng field.
    TransitStop? arrivalStop,

    /// Contains information about the stop/station for this part of
    /// the trip. Stop details can include:
    ///   * `name` the name of the transit station/stop. eg. "Union
    /// Square".
    ///   * `location` the location of the transit station/stop,
    /// represented as a lat and lng field.
    TransitStop? departureStop,

    /// Contain the arrival times for this leg of the journey,
    /// specified as the following three properties:
    ///   * `text` the time specified as a string. The time is
    /// displayed in the time zone of the transit stop.
    ///   * `value` the time specified as Unix time, or seconds
    /// since midnight, January 1, 1970 UTC.
    ///   * `timeZone` contains the time zone of this station.
    /// The value is the name of the time zone as defined in the
    /// [IANA Time Zone Database][iana], e.g. `"America/New_York"`.
    ///
    /// [iana]: http://www.iana.org/time-zones
    TimeZoneTextValue? arrivalTime,

    /// Contain the departure times for this leg of the journey,
    /// specified as the following three properties:
    ///   * `text` the time specified as a string. The time is
    /// displayed in the time zone of the transit stop.
    ///   * `value` the time specified as Unix time, or seconds
    /// since midnight, January 1, 1970 UTC.
    ///   * `timeZone` contains the time zone of this station.
    /// The value is the name of the time zone as defined in the
    /// [IANA Time Zone Database][iana], e.g. `"America/New_York"`.
    ///
    /// [iana]: http://www.iana.org/time-zones
    TimeZoneTextValue? departureTime,

    /// Specifies the direction in which to travel on this line,
    /// as it is marked on the vehicle or at the departure stop.
    /// This will often be the terminus station.
    String? headsign,

    /// Specifies the expected number of seconds between departures
    /// from the same stop at this time. For example, with a
    /// headway value of 600, you would expect a ten minute wait if
    /// you should miss your bus.
    num? headway,

    /// Contains information about the transit line used in this step.
    TransitLine? line,

    /// Contains the number of stops in this step, counting the
    /// arrival stop, but not the departure stop. For example,
    /// if your directions involve leaving from Stop A, passing
    /// through stops B and C, and arriving at stop D, `numStops`
    /// will return 3.
    num? numStops,

    /// Contains the text that appears in schedules and sign boards
    /// to identify a transit trip to passengers. The text should
    /// uniquely identify a trip within a service day. For example,
    /// "538" is the `tripShortName` of the Amtrak train that leaves
    ///  San Jose, CA at 15:10 on weekdays to Sacramento, CA.
    required String? tripShortName,
  }) = _TransitDetails;

  factory TransitDetails.fromJson(Map<String, dynamic> json) =>
      _$TransitDetailsFromJson(json);
}

/// Contains information about the transit line used in this
/// step, and may include the following properties:
///   * `name` contains the full name of this transit line. eg.
/// "7 Avenue Express".
///   * `shortName` contains the short name of this transit line.
/// This will normally be a line number, such as "M7" or "355".
///   * `color` contains the color commonly used in signage for this
/// transit line. The color will be specified as a hex string such
/// as: #FF0033.
///   * `agencies` is an array containing a single [TransitAgency]
/// object. The [TransitAgency] object provides information
/// about the operator of the line, including the following properties:
///     * `name` contains the name of the transit agency.
///     * `phone` contains the phone number of the transit agency.
///     * `url` contains the URL for the transit agency.
///
///   You must display the names and URLs of the transit agencies
/// servicing the trip results.
///
///
///   * `url` contains the URL for this transit line as provided by
/// the transit agency.
///   * `icon` contains the URL for the icon associated with this line.
///   * `textColor` contains the color of text commonly used for
/// signage of this line. The color will be specified as a hex string.
///   * `vehicle` contains the type of vehicle used on this line.
/// This may include the following properties:
///     * `name` contains the name of the vehicle on this line. eg. "Subway."
///     * `type` contains the type of vehicle that runs on this line.
/// See the Vehicle Type documentation for a complete list of supported values.
///     * `icon` contains the URL for an icon associated with this vehicle type.
///     * `localIcon` contains the URL for the icon associated with this
/// vehicle type, based on the local transport signage.
@freezed
class TransitLine with _$TransitLine {
  const factory TransitLine({
    /// Contains the full name of this transit line. eg. "7 Avenue Express".
    String? name,

    /// Contains the short name of this transit line. This will normally be
    /// a line number, such as "M7" or "355".
    String? shortName,

    /// Contains the color commonly used in signage for this transit line.
    /// The color will be specified as a hex string such as: #FF0033.
    String? color,

    /// Is an array containing a single [TransitAgency] object.
    /// The [TransitAgency] object provides information
    /// about the operator of the line, including the following properties:
    ///  * `name` contains the name of the transit agency.
    ///  * `phone` contains the phone number of the transit agency.
    ///  * `url` contains the URL for the transit agency.
    ///
    ///   You must display the names and URLs of the transit agencies
    /// servicing the trip results.
    List<TransitAgency>? agencies,

    /// Contains the URL for this transit line as provided by the transit agency.
    String? url,

    /// Contains the URL for the icon associated with this line.
    String? icon,

    /// Contains the color of text commonly used for signage of this line.
    /// The color will be specified as a hex string.
    String? textColor,

    /// Contains the type of vehicle used on this line.
    /// This may include the following properties:
    ///  * `name` contains the name of the vehicle on this line. eg. "Subway."
    ///  * `type` contains the type of vehicle that runs on this line.
    /// See the [TransitVehicleType] documentation for a complete list of
    /// supported values.
    ///  * `icon` contains the URL for an icon associated with this vehicle type.
    ///  * `localIcon` contains the URL for the icon associated with this
    /// vehicle type, based on the local transport signage.
    TransitVehicle? vehicle,
  }) = _TransitLine;

  factory TransitLine.fromJson(Map<String, dynamic> json) =>
      _$TransitLineFromJson(json);
}

/// Contains a single points object that holds an
/// [encoded polyline][enc_polyline] representation of the route.
/// This polyline is an approximate (smoothed) path of the resulting
/// directions.
///
/// [enc_polyline]: https://developers.google.com/maps/documentation/utilities/polylinealgorithm
@freezed
class OverviewPolyline with _$OverviewPolyline {
  const OverviewPolyline._();

  const factory OverviewPolyline({
    /// Contains [encoded polyline][enc_polyline] representation of the
    /// route. This polyline is an approximate (smoothed) path of the
    /// resulting directions.
    ///
    /// [enc_polyline]: https://developers.google.com/maps/documentation/utilities/polylinealgorithm
    required String? points,
  }) = _OverviewPolyline;

  factory OverviewPolyline.fromJson(Map<String, dynamic> json) =>
      _$OverviewPolylineFromJson(json);

  List<GeoCoord>? get overviewPath => points?.isNotEmpty == true
      ? gpl
          .decodePolyline(points!)
          .map(
            (pointL) => GeoCoord(
              latitude: pointL[0].toDouble(),
              longitude: pointL[1].toDouble(),
            ),
          )
          .toList()
      : null;
}

/// Details about the time, with the following elements:
///   * `value` the time specified as a [DateTime] object.
///   * `text` the time specified as a [String]. The time is displayed
/// in the time zone of the transit stop.
///   * `timeZone` contains the time zone of this station. The value
/// is the name of the time zone as defined in the [IANA Time Zone
/// Database][iana], e.g. `"America/New_York"`.
///
/// [iana]: http://www.iana.org/time-zones
@freezed
class TimeZoneTextValue with _$TimeZoneTextValue {
  const factory TimeZoneTextValue({
    /// The time specified as a [String]. The time is displayed in the time
    /// zone of the transit stop.
    String? text,

    /// Contains the time zone of this station. The value is the name
    /// of the time zone as defined in the [IANA Time Zone Database][iana],
    /// e.g. `"America/New_York"`.
    ///
    /// [iana]: http://www.iana.org/time-zones
    String? timeZone,

    /// The time specified as a [DateTime] object.
    @MillisecondsDatetimeNullableConverter() DateTime? value,
  }) = _TimeZoneTextValue;

  factory TimeZoneTextValue.fromJson(Map<String, dynamic> json) =>
      _$TimeZoneTextValueFromJson(json);
}

/// Contains the total fare (that is, the total
/// ticket costs) on this route. This property is only returned for
/// transit requests and only for routes where fare information is
/// available for all transit legs. The information includes:
///   * `currency`: An [ISO 4217 currency code][iso4217] indicating the
/// currency that the amount is expressed in.
///   * `value`: The total fare amount, in the currency specified above.
///   * `text`: The total fare amount, formatted in the requested language.
///
/// [iso4217]: https://en.wikipedia.org/wiki/ISO_4217
@freezed
class Fare with _$Fare {
  const factory Fare({
    /// The total fare amount, formatted in the requested language.
    String? text,

    /// An [ISO 4217 currency code][iso4217] indicating the
    /// currency that the amount is expressed in.
    String? currency,

    /// The total fare amount, in the currency specified above.
    num? value,
  }) = _Fare;

  factory Fare.fromJson(Map<String, dynamic> json) => _$FareFromJson(json);
}

/// Contains information about the stop/station for this part of
/// the trip. Stop details can include:
///   * `name` the name of the transit station/stop. eg. "Union
/// Square".
///   * `location` the location of the transit station/stop,
/// represented as a lat and lng field.
@freezed
class TransitStop with _$TransitStop {
  const factory TransitStop({
    /// The name of the transit station/stop. eg. "Union Square".
    required String? name,

    /// The location of the transit station/stop, represented as a
    /// lat and lng field
    required GeoCoord? location,
  }) = _TransitStop;

  factory TransitStop.fromJson(Map<String, dynamic> json) =>
      _$TransitStopFromJson(json);
}

/// Provides information about the operator of the line, including
/// the following properties:
///  * `name` contains the name of the transit agency.
///  * `phone` contains the phone number of the transit agency.
///  * `url` contains the URL for the transit agency.
@freezed
class TransitAgency with _$TransitAgency {
  const factory TransitAgency({
    /// Contains the name of the transit agency.
    String? name,

    /// Contains the phone number of the transit agency.
    String? phone,

    /// Contains the URL for the transit agency.
    String? url,
  }) = _TransitAgency;

  factory TransitAgency.fromJson(Map<String, dynamic> json) =>
      _$TransitAgencyFromJson(json);
}

/// Contains the type of vehicle used on this line.
/// This may include the following properties:
///  * `name` contains the name of the vehicle on this line. eg. "Subway."
///  * `type` contains the type of vehicle that runs on this line.
/// See the [TransitVehicleType] documentation for a complete list of
/// supported values.
///  * `icon` contains the URL for an icon associated with this vehicle type.
///  * `localIcon` contains the URL for the icon associated with this
/// vehicle type, based on the local transport signage.
@freezed
class TransitVehicle with _$TransitVehicle {
  const factory TransitVehicle({
    /// Contains the name of the vehicle on this line. eg. "Subway."
    String? name,

    /// Contains the type of vehicle that runs on this line.
    TransitVehicleType? type,

    /// Contains the URL for an icon associated with this vehicle type.
    String? icon,

    /// Contains the URL for the icon associated with this
    /// vehicle type, based on the local transport signage.
    String? localIcon,
  }) = _TransitVehicle;

  factory TransitVehicle.fromJson(Map<String, dynamic> json) =>
      _$TransitVehicleFromJson(json);
}

/// The locations of via waypoints along this leg.
/// contains info about points through which the route was laid
@freezed
class ViaWaypoint with _$ViaWaypoint {
  const factory ViaWaypoint({
    /// The location of the waypoint.
    GeoCoord? location,

    /// The index of the step containing the waypoint.
    int? stepIndex,

    /// The position of the waypoint along the step's polyline,
    /// expressed as a ratio from 0 to 1.
    num? stepInterpolation,
  }) = _ViaWaypoint;

  factory ViaWaypoint.fromJson(Map<String, dynamic> json) =>
      _$ViaWaypointFromJson(json);
}

/// An object containing a numeric value
/// and its formatted text representation.
@freezed
class TextValue with _$TextValue {
  const factory TextValue({
    String? text,
    num? value,
  }) = _TextValue;

  factory TextValue.fromJson(Map<String, dynamic> json) =>
      _$TextValueFromJson(json);
}

/// The status field within the Directions response object contains
/// the status of the request, and may contain debugging information
/// to help you track down why the Directions service failed.
@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum DirectionsStatus {
  /// Indicates the response contains a valid result.
  ok,

  /// Indicates at least one of the locations specified in the
  /// request's origin, destination, or waypoints could not be geocoded.
  notFound,

  /// Indicates no route could be found between the origin and destination.
  zeroResults,

  /// Indicates that too many waypoints were provided in the request.
  /// For applications using the Directions API as a web service, or
  /// the [directions service in the Maps JavaScript API][maps_js_api],
  /// the maximum allowed number of waypoints is 25, plus the origin
  /// and destination.
  maxWaypointExceeded,

  /// Indicates the requested route is too long and cannot be processed.
  /// This error occurs when more complex directions are returned. Try
  /// reducing the number of waypoints, turns, or instructions.
  maxRouteLengthExceeded,

  /// Indicates that the provided request was invalid. Common causes of
  /// this status include an invalid parameter or parameter value.
  invalidRequest,

  /// Indicates any of the following:
  ///     * The API key is missing or invalid.
  ///     * Billing has not been enabled on your account.
  ///     * A self-imposed usage cap has been exceeded.
  ///     * The provided method of payment is no longer valid (for example,
  /// a credit card has expired).
  ///     * See the [Maps FAQ][faq] to learn how to fix this.
  overDailyLimit,

  /// Indicates the service has received too many requests from your
  /// application within the allowed time period.
  overQueryLimit,

  /// Indicates that the service denied use of the directions service
  /// by your application.
  requestDenied,

  /// Indicates a directions request could not be processed due to a
  /// server error. The request may succeed if you try again.
  unknownError,
}

/// Type of vehicle.
@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum TransitVehicleType {
  /// Bus.
  bus,

  /// A vehicle that operates on a cable, usually on the ground.
  /// Aerial cable cars may be of the type GONDOLA_LIFT.
  cableCar,

  /// Commuter rail.
  commuterTrain,

  /// Ferry.
  ferry,

  /// A vehicle that is pulled up a steep incline by a cable.
  funicular,

  /// An aerial cable car.
  gondolaLift,

  /// Heavy rail.
  heavyRail,

  /// High speed train.
  highSpeedTrain,

  /// Intercity bus.
  intercityBus,

  /// Long distance train.
  longDistanceTrain,

  /// Light rail.
  metroRail,

  /// Monorail.
  monorail,

  /// Other vehicles.
  other,

  /// Rail.
  rail,

  /// Share taxi is a sort of bus transport with ability to drop
  /// off and pick up passengers anywhere on its route. Generally
  /// share taxi uses minibus vehicles.
  shareTaxi,

  /// Underground light rail.
  subway,

  /// Above ground light rail.
  tram,

  /// Trolleybus.
  trolleybus,
}
