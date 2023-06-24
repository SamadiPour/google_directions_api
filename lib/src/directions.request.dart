// Copyright (c) 2021, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of 'directions.dart';

String? _lowercaseTravelMode(TravelMode? travelMode) =>
    travelMode?.name.toLowerCase();

/// Settings for route calculation.
///
/// `origin` and `destination` arguments are required.
@freezed
class DirectionsRequest with _$DirectionsRequest {
  @JsonSerializable(includeIfNull: false)
  const factory DirectionsRequest({
    /// The address, textual latitude/longitude value, or place ID
    /// from which you wish to calculate directions.
    ///
    /// This field is required.
    ///
    ///  * If you pass an **address**, the Directions service geocodes
    /// the string and converts it to a latitude/longitude
    /// coordinate to calculate directions. This coordinate may be
    /// different from that returned by the Geocoding API, for
    /// example a building entrance rather than its center.
    ///
    ///   ```origin=24+Sussex+Drive+Ottawa+ON```
    ///
    ///  * If you pass **coordinates**, they are used unchanged to
    /// calculate directions. Ensure that no space exists between
    /// the latitude and longitude values.
    ///
    ///   ```origin=41.43206,-81.38992```
    ///
    ///  * Place IDs must be prefixed with place_id:. The place ID
    /// may only be specified if the request includes an API key or
    /// a Google Maps Platform Premium Plan client ID. You can
    /// retrieve place IDs from the Geocoding API and the Places
    /// API (including Place Autocomplete). For an example using
    /// place IDs from Place Autocomplete, see
    /// [Place Autocomplete and Directions][place_info]. For more
    ///  place IDs, see the [Place ID overview][place_overview].
    ///
    ///   ```origin=place_id:ChIJ3S-JXmauEmsRUcIaWtf4MzE```
    ///
    /// [place_info]: https://developers.google.com/maps/documentation/javascript/examples/places-autocomplete-directions
    /// [place_overview]: https://developers.google.com/places/place-id
    @MultiTypeLocationNullableConverter() required dynamic origin,

    /// The address, textual latitude/longitude value, or place ID
    /// to which you wish to calculate directions. The options for
    /// the destination parameter are the same as for the [origin]
    /// parameter, described above.
    ///
    /// This field is required.
    @MultiTypeLocationNullableConverter() required dynamic destination,

    /// Specifies the mode of transport to use when calculating
    /// directions. Valid values and other request details are
    /// specified in [TravelModes].
    ///
    /// Default value is [TravelMode.driving]
    @JsonKey(name:'mode', toJson: _lowercaseTravelMode) TravelMode? travelMode,

    /// Specifies an array of intermediate locations to include
    /// along the route between the origin and destination points
    /// as pass through or stopover locations. Waypoints alter a
    /// route by directing it through the specified location(s).
    /// The API supports waypoints for these travel modes: driving,
    /// walking and bicycling; not transit.
    ///
    /// You can specify waypoints using the following values:
    ///
    ///  * Latitude/longitude coordinates (`lat`/`lng`): an explicit value
    /// pair. (`-34.92788%2C138.60008` comma, no space)
    ///  * Place ID: The unique value specific to a location.
    ///  * Address string (`Charlestown, Boston,MA`)
    ///  * Encoded polyline that can be specified by a set of any of
    /// the above. (`enc:lexeF{~wsZejrPjtye@:`)
    List<DirectionsWaypoint>? waypoints,

    /// By default, the Directions service calculates a route through
    /// the provided waypoints in their given order.
    ///
    /// If set to `true` will allow the Directions service to optimize
    /// the provided route by rearranging the waypoints in a more
    /// efficient order. (This optimization is an application of the
    /// [traveling salesperson problem][tsp].) Travel time is the primary
    /// factor which is optimized, but other factors such as distance,
    /// number of turns and many more may be taken into account when
    /// deciding which route is the most efficient. All waypoints must
    /// be stopovers for the Directions service to optimize their route.
    ///
    /// If you instruct the Directions service to optimize the order of
    /// its waypoints, their order will be returned in the waypoint_order
    /// field within the [DirectionsRoute] object. The `waypointOrder`
    /// field returns values which are zero-based.
    ///
    /// [tsp]: https://en.wikipedia.org/wiki/Travelling_salesman_problem
    @JsonKey(includeToJson: false) bool? optimizeWaypoints, //todo===========

    /// If set to `true`, specifies that the Directions service may
    /// provide more than one route alternative in the response.
    /// Note that providing route alternatives may increase the
    /// response time from the server. This is only available for
    /// requests without intermediate waypoints.
    @BoolQueryNullableConverter() bool? alternatives,

    /// Specifies the unit system to use when displaying results.
    UnitSystem? unitSystem,
    @AvoidTypeQueryNullableConverter() List<AvoidType>? avoid,

    /// Specifies the region code, specified as a ccTLD
    /// ("top-level domain") two-character value.
    ///
    /// You can set the Directions service to return results from
    /// a specific region by using the `region` parameter. This
    /// parameter takes a [ccTLD][cctld] (country code top-level domain)
    /// argument specifying the region bias. Most ccTLD codes are
    /// identical to ISO 3166-1 codes, with some notable exceptions.
    /// For example, the United Kingdom's ccTLD is "uk" (`.co.uk`)
    /// while its ISO 3166-1 code is "gb" (technically for the entity
    /// of "The United Kingdom of Great Britain and Northern Ireland").
    ///
    /// You may utilize any domain in which the main Google Maps
    /// application has launched driving directions.
    ///
    /// [cctld]: https://en.wikipedia.org/wiki/Country_code_top-level_domain
    String? region,

    /// Specifies the desired time of departure and/or desired assumption
    /// of time in traffic calculation for `non-transit` [TravelMode].
    DrivingOptions? drivingOptions,

    /// Specifies the desired time of arrival/departure and/or desired
    /// transit types and/or desired routing preference for `transit`
    /// [TravelMode].
    TransitOptions? transitOptions,

    /// The language in which to return results
    /// If language is not supplied, the API attempts to use the preferred
    /// language as specified in the Accept-Language header, or the native
    /// language of the domain from which the request is sent.
    /// For a complete list of the supported languages visit
    /// https://developers.google.com/maps/faq#languagesupport
    String? language,
  }) = _DirectionsRequest;

  factory DirectionsRequest.fromJson(Map<String, dynamic> json) =>
      _$DirectionsRequestFromJson(json);

// String? _convertWaypoints() {
//   if (waypoints?.isEmpty != false) return null;
//
//   return (optimizeWaypoints == true ? 'optimize:true|' : '') +
//       waypoints!.map((_) => _.toString()).toList().join('|');
// }

// '${_addIfNotNull('waypoints', _convertWaypoints())}'
}

/// Specifies an intermediate location to include along the route
/// between the origin and destination points as pass through
/// or stopover location. Waypoints alter a route by directing it
/// through the specified location(s).
///
/// The API **supports** waypoints for these travel modes: `driving`,
/// `walking` and `bicycling`; `not transit`.
/// You can specify waypoints using the following values:
///
///  * `location` - specifies an intermediate location to include
/// along the route between the origin and destination points.
/// Waypoints alter a route by directing it through the specified
/// location(s).
///
/// You can specify waypoints using the following values:
///
///  * Latitude/longitude coordinates (`lat`/`lng`): an explicit value
/// pair. (`-34.92788%2C138.60008` comma, no space)
///  * Place ID: The unique value specific to a location.
///  * Address string (`Charlestown, Boston,MA`)
///  * Encoded polyline that can be specified
///
///  * `stopover` - influence routes with stopover and pass through
/// points For each waypoint in the request, the directions response
/// appends an entry to the `legs` array to provide the details
/// for stopovers on that leg of the journey.
///
/// If you'd like to influence the route using waypoints without
/// adding a stopover, prefix `via:` will be added to the waypoint.
/// Waypoints prefixed with via: will not add an entry to the
/// `legs` array, but will route the journey through the waypoint.
@freezed
class DirectionsWaypoint with _$DirectionsWaypoint {
  const factory DirectionsWaypoint({
    /// Specifies an intermediate location to include along the route
    /// between the origin and destination points. Waypoints alter a
    /// route by directing it through the specified location(s).
    ///
    /// You can specify waypoints using the following values:
    ///
    ///  * Latitude/longitude coordinates (`lat`/`lng`): an explicit value
    /// pair. (`-34.92788,138.60008` comma or `%2C`, no space)
    ///  * Place ID: The unique value specific to a location.
    ///  * Address string (`Charlestown, Boston,MA`)
    ///  * Encoded polyline that can be specified by a set of any of
    /// the above. (`enc:lexeF{~wsZejrPjtye@:`)
    @MultiTypeLocationNullableConverter() dynamic location,

    /// Influence routes with stopover and pass through points
    /// For each waypoint in the request, the directions response
    /// appends an entry to the `legs` array to provide the details
    /// for stopovers on that leg of the journey.
    ///
    /// If you'd like to influence the route using waypoints without
    /// adding a stopover, prefix `via:` will be added to the waypoint.
    /// Waypoints prefixed with via: will not add an entry to the
    /// `legs` array, but will route the journey through the waypoint.
    // bool stopover, todo===================
  }) = _DirectionsWaypoint;

  factory DirectionsWaypoint.fromJson(Map<String, dynamic> json) =>
      _$DirectionsWaypointFromJson(json);
}

/// Specifies the desired time of arrival/departure and/or desired
/// transit types and/or desired routing preference for `transit`
/// [TravelMode].
///
/// May contain the following fields:
///
///  * `arrivalTime` - specifies the desired time of arrival for
/// transit directions. You can specify either `departureTime` or
/// `arrivalTime`, but not both.
///
///
///  * `departureTime` - specifies the desired time of departure.
/// The departure time may be specified in two cases:
///
///   * For requests where the travel mode is `transit`: You can
/// optionally specify one of `departureTime` or `arrivalTime`.
/// If neither time is specified, the `departureTime` defaults to
/// now (that is, the departure time defaults to the current time).
///
///   * For requests where the travel mode is `driving`: You can
/// specify the `departureTime` to receive a route and trip
/// duration (response field: `durationInTraffic`) that take
/// traffic conditions into account. The `departureTime` must be
/// set to the current time or some time in the future. It
/// cannot be in the past.
///
///   Note: If departure time is not specified, choice of route and
/// duration are based on road network and average time-independent
/// traffic conditions. Results for a given request may vary over
/// time due to changes in the road network, updated average traffic
/// conditions, and the distributed nature of the service. Results
/// may also vary between nearly-equivalent routes at any time or
/// frequency.
///
///
///  * `mode` - specifies one or more preferred modes of transit.
/// This parameter may only be specified for transit directions. The
/// parameter supports the following arguments:
///
///   * `bus` indicates that the calculated route should prefer travel
/// by bus.
///   * `subway` indicates that the calculated route should prefer
/// travel by subway.
///   * `train` indicates that the calculated route should prefer
/// travel by train.
///   * `tram` indicates that the calculated route should prefer travel
/// by tram and light rail.
///   * `rail` indicates that the calculated route should prefer travel
/// by train, tram, light rail, and subway. This is equivalent to
/// `transitMode=train|tram|subway`.
///
///
///  * `routingPreference` - specifies preferences for transit routes.
/// Using this parameter, you can bias the options returned, rather than
/// accepting the default best route chosen by the API. This parameter
/// may only be specified for transit directions. The parameter supports
/// the following arguments:
///
///   * `lessWalking` indicates that the calculated route should
/// prefer limited amounts of walking.
///   * `fewerTransfers` indicates that the calculated route should
/// prefer a limited number of transfers.
@freezed
class TransitOptions with _$TransitOptions {
  const factory TransitOptions({
    /// Specifies the desired time of arrival for transit directions.
    /// You can specify either `departureTime` or `arrivalTime`, but
    /// not both.
    @MillisecondsDatetimeNullableConverter() DateTime? arrivalTime,

    /// Specifies the desired time of departure. The departure time
    /// may be specified in two cases:
    ///
    ///  * For requests where the travel mode is `transit`: You can
    /// optionally specify one of `departureTime` or `arrivalTime`.
    /// If neither time is specified, the `departureTime` defaults to
    /// now (that is, the departure time defaults to the current time).
    ///
    ///  * For requests where the travel mode is `driving`: You can
    /// specify the `departureTime` to receive a route and trip
    /// duration (response field: `durationInTraffic`) that take
    /// traffic conditions into account. The `departureTime` must be
    /// set to the current time or some time in the future. It
    /// cannot be in the past.
    ///
    /// Note: If departure time is not specified, choice of route and
    /// duration are based on road network and average time-independent
    /// traffic conditions. Results for a given request may vary over
    /// time due to changes in the road network, updated average traffic
    /// conditions, and the distributed nature of the service. Results
    /// may also vary between nearly-equivalent routes at any time or
    /// frequency.
    @MillisecondsDatetimeNullableConverter() DateTime? departureTime,

    /// Specifies one or more preferred modes of transit. This parameter
    /// may only be specified for transit directions. The parameter
    /// supports the following arguments:
    ///
    ///  * `bus` indicates that the calculated route should prefer travel
    /// by bus.
    ///  * `subway` indicates that the calculated route should prefer
    /// travel by subway.
    ///  * `train` indicates that the calculated route should prefer
    /// travel by train.
    ///  * `tram` indicates that the calculated route should prefer travel
    /// by tram and light rail.
    ///  * `rail` indicates that the calculated route should prefer travel
    /// by train, tram, light rail, and subway. This is equivalent to
    /// `transitMode=train|tram|subway`.
    List<TransitMode>? modes,

    /// Specifies preferences for transit routes. Using this parameter,
    /// you can bias the options returned, rather than accepting the
    /// default best route chosen by the API. This parameter may only
    /// be specified for transit directions. The parameter supports the
    /// following arguments:
    ///
    ///  * `lessWalking` indicates that the calculated route should
    /// prefer limited amounts of walking.
    ///  * `fewerTransfers` indicates that the calculated route should
    /// prefer a limited number of transfers.
    TransitRoutingPreference? routingPreference,
  }) = _TransitOptions;

  factory TransitOptions.fromJson(Map<String, dynamic> json) =>
      _$TransitOptionsFromJson(json);
}

/// Specifies the desired time of departure and/or desired assumption
/// of time in traffic calculation for `non-transit` [TravelMode].
///
/// May contain the following fields:
///
///  * `departureTime` - specifies the desired time of departure.
/// The departure time may be specified in two cases:
///
///   * For requests where the travel mode is `transit`: You can
/// optionally specify one of `departureTime` or `arrivalTime`.
/// If neither time is specified, the `departureTime` defaults to
/// now (that is, the departure time defaults to the current time).
///
///   * For requests where the travel mode is `driving`: You can
/// specify the `departureTime` to receive a route and trip
/// duration (response field: `durationInTraffic`) that take
/// traffic conditions into account. The `departureTime` must be
/// set to the current time or some time in the future. It
/// cannot be in the past.
///
///   Note: If departure time is not specified, choice of route and
/// duration are based on road network and average time-independent
/// traffic conditions. Results for a given request may vary over
/// time due to changes in the road network, updated average traffic
/// conditions, and the distributed nature of the service. Results
/// may also vary between nearly-equivalent routes at any time or
/// frequency.
///
///
///  * `trafficModel` - specifies the assumptions to use when calculating
/// time in traffic. This setting affects the value returned in the
/// `durationInTraffic` field in the response, which contains the predicted
/// time in traffic based on historical averages. The `trafficModel`
/// parameter may only be specified for driving directions where
/// the request includes a `departureTime`.
///
///   The available values for this parameter are:
///
///   * `bestGuess` (default) indicates that the returned `durationInTraffic`
/// should be the best estimate of travel time given what is known about
/// both historical traffic conditions and live traffic. Live traffic
/// becomes more important the closer the `departureTime` is to now.
///   * `pessimistic` indicates that the returned `durationInTraffic`
/// should be longer than the actual travel time on most days, though
/// occasional days with particularly bad traffic conditions may
/// exceedthis value.
///   * `optimistic` indicates that the returned `durationInTraffic`
/// should be shorter than the actual travel time on most days, though
/// occasional days with particularly good traffic conditions may be
/// faster than this value.
///
///   The default value of `bestGuess` will give the most useful
/// predictions for the vast majority of use cases. It is possible
/// the `bestGuess` travel time prediction may be shorter than
/// `optimistic`, or alternatively, longer than `pessimistic`, due to
/// the way the `bestGuess` prediction model integrates live traffic
/// information.
@freezed
class DrivingOptions with _$DrivingOptions {
  const factory DrivingOptions({
    /// Specifies the desired time of departure. The departure time
    /// may be specified in two cases:
    ///
    ///  * For requests where the travel mode is `transit`: You can
    /// optionally specify one of `departureTime` or `arrivalTime`.
    /// If neither time is specified, the `departureTime` defaults to
    /// now (that is, the departure time defaults to the current time).
    ///
    ///  * For requests where the travel mode is `driving`: You can
    /// specify the `departureTime` to receive a route and trip
    /// duration (response field: `durationInTraffic`) that take
    /// traffic conditions into account. The `departureTime` must be
    /// set to the current time or some time in the future. It
    /// cannot be in the past.
    ///
    /// Note: If departure time is not specified, choice of route and
    /// duration are based on road network and average time-independent
    /// traffic conditions. Results for a given request may vary over
    /// time due to changes in the road network, updated average traffic
    /// conditions, and the distributed nature of the service. Results
    /// may also vary between nearly-equivalent routes at any time or
    /// frequency.
    @MillisecondsDatetimeNullableConverter() required DateTime? departureTime,

    /// Specifies the assumptions to use when calculating time in traffic.
    /// This setting affects the value returned in the `durationInTraffic`
    /// field in the response, which contains the predicted time in
    /// traffic based on historical averages. The `trafficModel`
    /// parameter may only be specified for driving directions where
    /// the request includes a `departureTime`.
    ///
    /// Defaults to `bestGuess`.
    ///
    /// The available values for this parameter are:
    ///
    ///  * `bestGuess` (default) indicates that the returned `durationInTraffic`
    /// should be the best estimate of travel time given what is known about
    /// both historical traffic conditions and live traffic. Live traffic
    /// becomes more important the closer the `departureTime` is to now.
    ///  * `pessimistic` indicates that the returned `durationInTraffic`
    /// should be longer than the actual travel time on most days, though
    /// occasional days with particularly bad traffic conditions may
    /// exceedthis value.
    ///  * `optimistic` indicates that the returned `durationInTraffic`
    /// should be shorter than the actual travel time on most days, though
    /// occasional days with particularly good traffic conditions may be
    /// faster than this value.
    ///
    /// The default value of `bestGuess` will give the most useful
    /// predictions for the vast majority of use cases. It is possible
    /// the `bestGuess` travel time prediction may be shorter than
    /// `optimistic`, or alternatively, longer than `pessimistic`, due to
    /// the way the `bestGuess` prediction model integrates live traffic
    /// information.
    required TrafficModel? trafficModel,
  }) = _DrivingOptions;

  factory DrivingOptions.fromJson(Map<String, dynamic> json) =>
      _$DrivingOptionsFromJson(json);
}

/// Directions results contain `text` within `distance` fields
/// that may be displayed to the user to indicate the distance
/// of a particular "step" of the route. By default, this text
/// uses the unit system of the origin's country or region.
///
/// For example, a route from "Chicago, IL" to "Toronto, ONT"
/// will display results in miles, while the reverse route will
/// display results in kilometers. You may override this unit
/// system by setting one explicitly within the request's units
/// parameter, passing one of the following values:
///
/// `metric` specifies usage of the metric system. Textual
/// distances are returned using kilometers and meters.
/// `imperial` specifies usage of the Imperial (English)
/// system. Textual distances are returned using miles and feet.
///
/// Note: this unit system setting only affects the text displayed
/// within distance fields. The distance fields also contain values
/// which are always expressed in meters.
@JsonEnum(fieldRename: FieldRename.snake)
enum UnitSystem {
  /// Specifies usage of the Imperial (English) system. Textual
  /// distances are returned using miles and feet.
  imperial,

  /// Specifies usage of the metric system. Textual distances are
  /// returned using kilometers and meters.
  metric;
}

/// Specifies one or more preferred modes of transit. This parameter
/// may only be specified for transit directions. The parameter
/// supports the following arguments:
///
///  * `bus` indicates that the calculated route should prefer travel
/// by bus.
///  * `subway` indicates that the calculated route should prefer
/// travel by subway.
///  * `train` indicates that the calculated route should prefer
/// travel by train.
///  * `tram` indicates that the calculated route should prefer travel
/// by tram and light rail.
///  * `rail` indicates that the calculated route should prefer travel
/// by train, tram, light rail, and subway. This is equivalent to
/// `transitMode=train|tram|subway`.
@JsonEnum(fieldRename: FieldRename.snake)
enum TransitMode {
  /// Indicates that the calculated route should prefer travel
  /// by bus.
  bus,

  /// Indicates that the calculated route should prefer travel
  /// by subway.
  subway,

  /// Indicates that the calculated route should prefer travel
  /// by train.
  train,

  /// Indicates that the calculated route should prefer travel
  /// by tram.
  tram,

  /// Indicates that the calculated route should prefer travel
  /// by rail.
  rail;
}

/// Specifies preferences for transit routes. Using this parameter,
/// you can bias the options returned, rather than accepting the
/// default best route chosen by the API. This parameter may only
/// be specified for transit directions. The parameter supports the
/// following arguments:
///
///  * `lessWalking` indicates that the calculated route should
/// prefer limited amounts of walking.
///  * `fewerTransfers` indicates that the calculated route should
/// prefer a limited number of transfers.
@JsonEnum(fieldRename: FieldRename.snake)
enum TransitRoutingPreference {
  /// Indicates that the calculated route should prefer limited
  /// amounts of walking.
  lessWalking,

  /// Indicates that the calculated route should prefer a limited
  /// number of transfers
  fewerTransfers;
}

/// Specifies the assumptions to use when calculating time in traffic.
/// This setting affects the value returned in the `durationInTraffic`
/// field in the response, which contains the predicted time in
/// traffic based on historical averages. The `trafficModel`
/// parameter may only be specified for driving directions where
/// the request includes a `departureTime`.
///
/// The available values for this parameter are:
///
///  * `bestGuess` indicates that the returned `durationInTraffic`
/// should be the best estimate of travel time given what is known about
/// both historical traffic conditions and live traffic. Live traffic
/// becomes more important the closer the `departureTime` is to now.
///  * `pessimistic` indicates that the returned `durationInTraffic`
/// should be longer than the actual travel time on most days, though
/// occasional days with particularly bad traffic conditions may
/// exceedthis value.
///  * `optimistic` indicates that the returned `durationInTraffic`
/// should be shorter than the actual travel time on most days, though
/// occasional days with particularly good traffic conditions may be
/// faster than this value.
@JsonEnum(fieldRename: FieldRename.snake)
enum TrafficModel {
  /// Indicates that the returned `durationInTraffic`
  /// should be the best estimate of travel time given what is known about
  /// both historical traffic conditions and live traffic. Live traffic
  /// becomes more important the closer the `departureTime` is to now.
  bestGuess,

  /// Indicates that the returned `durationInTraffic`
  /// should be longer than the actual travel time on most days, though
  /// occasional days with particularly bad traffic conditions may
  /// exceedthis value.
  pessimistic,

  /// Indicates that the returned `durationInTraffic`
  /// should be shorter than the actual travel time on most days, though
  /// occasional days with particularly good traffic conditions may be
  /// faster than this value.
  optimistic;
}

@JsonEnum(fieldRename: FieldRename.snake)
enum AvoidType {
  /// Indicates that the calculated route should avoid toll
  /// roads/bridges.
  tolls,

  /// Indicates that the calculated route should avoid highways.
  highways,

  /// Indicates that the calculated route should avoid ferries.
  ferries,

  /// Indicates that the calculated route should avoid indoor
  /// steps for walking and transit directions.
  indoor,
}
