// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeoCoord _$$_GeoCoordFromJson(Map<String, dynamic> json) => _$_GeoCoord(
      latitude: (json['lat'] as num).toDouble(),
      longitude: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$_GeoCoordToJson(_$_GeoCoord instance) =>
    <String, dynamic>{
      'lat': instance.latitude,
      'lng': instance.longitude,
    };

_$_GeoCoordBounds _$$_GeoCoordBoundsFromJson(Map<String, dynamic> json) =>
    _$_GeoCoordBounds(
      southwest: GeoCoord.fromJson(json['southwest'] as Map<String, dynamic>),
      northeast: GeoCoord.fromJson(json['northeast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GeoCoordBoundsToJson(_$_GeoCoordBounds instance) =>
    <String, dynamic>{
      'southwest': instance.southwest.toJson(),
      'northeast': instance.northeast.toJson(),
    };

_$_DirectionsRequest _$$_DirectionsRequestFromJson(Map<String, dynamic> json) =>
    _$_DirectionsRequest(
      origin: const MultiTypeLocationNullableConverter()
          .fromJson(json['origin'] as String?),
      destination: const MultiTypeLocationNullableConverter()
          .fromJson(json['destination'] as String?),
      travelMode: $enumDecodeNullable(_$TravelModeEnumMap, json['mode']),
      waypoints: (json['waypoints'] as List<dynamic>?)
          ?.map((e) => DirectionsWaypoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      optimizeWaypoints: json['optimize_waypoints'] as bool?,
      alternatives: const BoolQueryNullableConverter()
          .fromJson(json['alternatives'] as String?),
      unitSystem: $enumDecodeNullable(_$UnitSystemEnumMap, json['unit_system']),
      avoid: const AvoidTypeQueryNullableConverter()
          .fromJson(json['avoid'] as String?),
      region: json['region'] as String?,
      drivingOptions: json['driving_options'] == null
          ? null
          : DrivingOptions.fromJson(
              json['driving_options'] as Map<String, dynamic>),
      transitOptions: json['transit_options'] == null
          ? null
          : TransitOptions.fromJson(
              json['transit_options'] as Map<String, dynamic>),
      language: json['language'] as String?,
    );

Map<String, dynamic> _$$_DirectionsRequestToJson(
    _$_DirectionsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('origin',
      const MultiTypeLocationNullableConverter().toJson(instance.origin));
  writeNotNull('destination',
      const MultiTypeLocationNullableConverter().toJson(instance.destination));
  writeNotNull('mode', _lowercaseTravelMode(instance.travelMode));
  writeNotNull(
      'waypoints', instance.waypoints?.map((e) => e.toJson()).toList());
  writeNotNull('alternatives',
      const BoolQueryNullableConverter().toJson(instance.alternatives));
  writeNotNull('unit_system', _$UnitSystemEnumMap[instance.unitSystem]);
  writeNotNull(
      'avoid', const AvoidTypeQueryNullableConverter().toJson(instance.avoid));
  writeNotNull('region', instance.region);
  writeNotNull('driving_options', instance.drivingOptions?.toJson());
  writeNotNull('transit_options', instance.transitOptions?.toJson());
  writeNotNull('language', instance.language);
  return val;
}

const _$TravelModeEnumMap = {
  TravelMode.bicycling: 'BICYCLING',
  TravelMode.driving: 'DRIVING',
  TravelMode.transit: 'TRANSIT',
  TravelMode.walking: 'WALKING',
};

const _$UnitSystemEnumMap = {
  UnitSystem.imperial: 'imperial',
  UnitSystem.metric: 'metric',
};

_$_DirectionsWaypoint _$$_DirectionsWaypointFromJson(
        Map<String, dynamic> json) =>
    _$_DirectionsWaypoint(
      location: const MultiTypeLocationNullableConverter()
          .fromJson(json['location'] as String?),
    );

Map<String, dynamic> _$$_DirectionsWaypointToJson(
        _$_DirectionsWaypoint instance) =>
    <String, dynamic>{
      'location':
          const MultiTypeLocationNullableConverter().toJson(instance.location),
    };

_$_TransitOptions _$$_TransitOptionsFromJson(Map<String, dynamic> json) =>
    _$_TransitOptions(
      arrivalTime: const MillisecondsDatetimeNullableConverter()
          .fromJson(json['arrival_time'] as int?),
      departureTime: const MillisecondsDatetimeNullableConverter()
          .fromJson(json['departure_time'] as int?),
      modes: (json['modes'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TransitModeEnumMap, e))
          .toList(),
      routingPreference: $enumDecodeNullable(
          _$TransitRoutingPreferenceEnumMap, json['routing_preference']),
    );

Map<String, dynamic> _$$_TransitOptionsToJson(_$_TransitOptions instance) =>
    <String, dynamic>{
      'arrival_time': const MillisecondsDatetimeNullableConverter()
          .toJson(instance.arrivalTime),
      'departure_time': const MillisecondsDatetimeNullableConverter()
          .toJson(instance.departureTime),
      'modes': instance.modes?.map((e) => _$TransitModeEnumMap[e]!).toList(),
      'routing_preference':
          _$TransitRoutingPreferenceEnumMap[instance.routingPreference],
    };

const _$TransitModeEnumMap = {
  TransitMode.bus: 'bus',
  TransitMode.subway: 'subway',
  TransitMode.train: 'train',
  TransitMode.tram: 'tram',
  TransitMode.rail: 'rail',
};

const _$TransitRoutingPreferenceEnumMap = {
  TransitRoutingPreference.lessWalking: 'less_walking',
  TransitRoutingPreference.fewerTransfers: 'fewer_transfers',
};

_$_DrivingOptions _$$_DrivingOptionsFromJson(Map<String, dynamic> json) =>
    _$_DrivingOptions(
      departureTime: const MillisecondsDatetimeNullableConverter()
          .fromJson(json['departure_time'] as int?),
      trafficModel:
          $enumDecodeNullable(_$TrafficModelEnumMap, json['traffic_model']),
    );

Map<String, dynamic> _$$_DrivingOptionsToJson(_$_DrivingOptions instance) =>
    <String, dynamic>{
      'departure_time': const MillisecondsDatetimeNullableConverter()
          .toJson(instance.departureTime),
      'traffic_model': _$TrafficModelEnumMap[instance.trafficModel],
    };

const _$TrafficModelEnumMap = {
  TrafficModel.bestGuess: 'best_guess',
  TrafficModel.pessimistic: 'pessimistic',
  TrafficModel.optimistic: 'optimistic',
};

_$_DirectionsResult _$$_DirectionsResultFromJson(Map<String, dynamic> json) =>
    _$_DirectionsResult(
      routes: (json['routes'] as List<dynamic>?)
          ?.map((e) => DirectionsRoute.fromJson(e as Map<String, dynamic>))
          .toList(),
      geocodedWaypoints: (json['geocoded_waypoints'] as List<dynamic>?)
          ?.map((e) => GeocodedWaypoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecodeNullable(_$DirectionsStatusEnumMap, json['status']),
      errorMessage: json['error_message'] as String?,
      availableTravelModes: (json['available_travel_modes'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TravelModeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$_DirectionsResultToJson(_$_DirectionsResult instance) =>
    <String, dynamic>{
      'routes': instance.routes?.map((e) => e.toJson()).toList(),
      'geocoded_waypoints':
          instance.geocodedWaypoints?.map((e) => e.toJson()).toList(),
      'status': _$DirectionsStatusEnumMap[instance.status],
      'error_message': instance.errorMessage,
      'available_travel_modes': instance.availableTravelModes
          ?.map((e) => _$TravelModeEnumMap[e]!)
          .toList(),
    };

const _$DirectionsStatusEnumMap = {
  DirectionsStatus.ok: 'OK',
  DirectionsStatus.notFound: 'NOT_FOUND',
  DirectionsStatus.zeroResults: 'ZERO_RESULTS',
  DirectionsStatus.maxWaypointExceeded: 'MAX_WAYPOINT_EXCEEDED',
  DirectionsStatus.maxRouteLengthExceeded: 'MAX_ROUTE_LENGTH_EXCEEDED',
  DirectionsStatus.invalidRequest: 'INVALID_REQUEST',
  DirectionsStatus.overDailyLimit: 'OVER_DAILY_LIMIT',
  DirectionsStatus.overQueryLimit: 'OVER_QUERY_LIMIT',
  DirectionsStatus.requestDenied: 'REQUEST_DENIED',
  DirectionsStatus.unknownError: 'UNKNOWN_ERROR',
};

_$_DirectionsRoute _$$_DirectionsRouteFromJson(Map<String, dynamic> json) =>
    _$_DirectionsRoute(
      bounds: json['bounds'] == null
          ? null
          : GeoCoordBounds.fromJson(json['bounds'] as Map<String, dynamic>),
      copyrights: json['copyrights'] as String?,
      legs: (json['legs'] as List<dynamic>?)
          ?.map((e) => DirectionsLeg.fromJson(e as Map<String, dynamic>))
          .toList(),
      overviewPolyline: json['overview_polyline'] == null
          ? null
          : OverviewPolyline.fromJson(
              json['overview_polyline'] as Map<String, dynamic>),
      summary: json['summary'] as String?,
      warnings: (json['warnings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      waypointOrder: (json['waypoint_order'] as List<dynamic>?)
          ?.map((e) => e as num)
          .toList(),
      fare: json['fare'] == null
          ? null
          : Fare.fromJson(json['fare'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DirectionsRouteToJson(_$_DirectionsRoute instance) =>
    <String, dynamic>{
      'bounds': instance.bounds?.toJson(),
      'copyrights': instance.copyrights,
      'legs': instance.legs?.map((e) => e.toJson()).toList(),
      'overview_polyline': instance.overviewPolyline?.toJson(),
      'summary': instance.summary,
      'warnings': instance.warnings,
      'waypoint_order': instance.waypointOrder,
      'fare': instance.fare?.toJson(),
    };

_$_GeocodedWaypoint _$$_GeocodedWaypointFromJson(Map<String, dynamic> json) =>
    _$_GeocodedWaypoint(
      geocoderStatus: json['geocoder_status'] as String?,
      partialMatch: json['partial_match'] as bool?,
      placeId: json['place_id'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_GeocodedWaypointToJson(_$_GeocodedWaypoint instance) =>
    <String, dynamic>{
      'geocoder_status': instance.geocoderStatus,
      'partial_match': instance.partialMatch,
      'place_id': instance.placeId,
      'types': instance.types,
    };

_$_DirectionsLeg _$$_DirectionsLegFromJson(Map<String, dynamic> json) =>
    _$_DirectionsLeg(
      arrivalTime: json['arrival_time'] == null
          ? null
          : TimeZoneTextValue.fromJson(
              json['arrival_time'] as Map<String, dynamic>),
      departureTime: json['departure_time'] == null
          ? null
          : TimeZoneTextValue.fromJson(
              json['departure_time'] as Map<String, dynamic>),
      distance: json['distance'] == null
          ? null
          : TextValue.fromJson(json['distance'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : TextValue.fromJson(json['duration'] as Map<String, dynamic>),
      durationInTraffic: json['duration_in_traffic'] == null
          ? null
          : TextValue.fromJson(
              json['duration_in_traffic'] as Map<String, dynamic>),
      endAddress: json['end_address'] as String?,
      endLocation: json['end_location'] == null
          ? null
          : GeoCoord.fromJson(json['end_location'] as Map<String, dynamic>),
      startAddress: json['start_address'] as String?,
      startLocation: json['start_location'] == null
          ? null
          : GeoCoord.fromJson(json['start_location'] as Map<String, dynamic>),
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => DirectionsStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      viaWaypoint: (json['via_waypoint'] as List<dynamic>?)
          ?.map((e) => ViaWaypoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DirectionsLegToJson(_$_DirectionsLeg instance) =>
    <String, dynamic>{
      'arrival_time': instance.arrivalTime?.toJson(),
      'departure_time': instance.departureTime?.toJson(),
      'distance': instance.distance?.toJson(),
      'duration': instance.duration?.toJson(),
      'duration_in_traffic': instance.durationInTraffic?.toJson(),
      'end_address': instance.endAddress,
      'end_location': instance.endLocation?.toJson(),
      'start_address': instance.startAddress,
      'start_location': instance.startLocation?.toJson(),
      'steps': instance.steps?.map((e) => e.toJson()).toList(),
      'via_waypoint': instance.viaWaypoint?.map((e) => e.toJson()).toList(),
    };

_$_DirectionsStep _$$_DirectionsStepFromJson(Map<String, dynamic> json) =>
    _$_DirectionsStep(
      distance: json['distance'] == null
          ? null
          : TextValue.fromJson(json['distance'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : TextValue.fromJson(json['duration'] as Map<String, dynamic>),
      endLocation: json['end_location'] == null
          ? null
          : GeoCoord.fromJson(json['end_location'] as Map<String, dynamic>),
      startLocation: json['start_location'] == null
          ? null
          : GeoCoord.fromJson(json['start_location'] as Map<String, dynamic>),
      instructions: json['html_instructions'] as String?,
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => DirectionsStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      transit: json['transit_details'] == null
          ? null
          : TransitDetails.fromJson(
              json['transit_details'] as Map<String, dynamic>),
      travelMode: $enumDecodeNullable(_$TravelModeEnumMap, json['travel_mode']),
      polyline: json['polyline'] == null
          ? null
          : OverviewPolyline.fromJson(json['polyline'] as Map<String, dynamic>),
      maneuver: json['maneuver'] as String?,
    );

Map<String, dynamic> _$$_DirectionsStepToJson(_$_DirectionsStep instance) =>
    <String, dynamic>{
      'distance': instance.distance?.toJson(),
      'duration': instance.duration?.toJson(),
      'end_location': instance.endLocation?.toJson(),
      'start_location': instance.startLocation?.toJson(),
      'html_instructions': instance.instructions,
      'steps': instance.steps?.map((e) => e.toJson()).toList(),
      'transit_details': instance.transit?.toJson(),
      'travel_mode': _$TravelModeEnumMap[instance.travelMode],
      'polyline': instance.polyline?.toJson(),
      'maneuver': instance.maneuver,
    };

_$_TransitDetails _$$_TransitDetailsFromJson(Map<String, dynamic> json) =>
    _$_TransitDetails(
      arrivalStop: json['arrival_stop'] == null
          ? null
          : TransitStop.fromJson(json['arrival_stop'] as Map<String, dynamic>),
      departureStop: json['departure_stop'] == null
          ? null
          : TransitStop.fromJson(
              json['departure_stop'] as Map<String, dynamic>),
      arrivalTime: json['arrival_time'] == null
          ? null
          : TimeZoneTextValue.fromJson(
              json['arrival_time'] as Map<String, dynamic>),
      departureTime: json['departure_time'] == null
          ? null
          : TimeZoneTextValue.fromJson(
              json['departure_time'] as Map<String, dynamic>),
      headsign: json['headsign'] as String?,
      headway: json['headway'] as num?,
      line: json['line'] == null
          ? null
          : TransitLine.fromJson(json['line'] as Map<String, dynamic>),
      numStops: json['num_stops'] as num?,
      tripShortName: json['trip_short_name'] as String?,
    );

Map<String, dynamic> _$$_TransitDetailsToJson(_$_TransitDetails instance) =>
    <String, dynamic>{
      'arrival_stop': instance.arrivalStop?.toJson(),
      'departure_stop': instance.departureStop?.toJson(),
      'arrival_time': instance.arrivalTime?.toJson(),
      'departure_time': instance.departureTime?.toJson(),
      'headsign': instance.headsign,
      'headway': instance.headway,
      'line': instance.line?.toJson(),
      'num_stops': instance.numStops,
      'trip_short_name': instance.tripShortName,
    };

_$_TransitLine _$$_TransitLineFromJson(Map<String, dynamic> json) =>
    _$_TransitLine(
      name: json['name'] as String?,
      shortName: json['short_name'] as String?,
      color: json['color'] as String?,
      agencies: (json['agencies'] as List<dynamic>?)
          ?.map((e) => TransitAgency.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
      icon: json['icon'] as String?,
      textColor: json['text_color'] as String?,
      vehicle: json['vehicle'] == null
          ? null
          : TransitVehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TransitLineToJson(_$_TransitLine instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'color': instance.color,
      'agencies': instance.agencies?.map((e) => e.toJson()).toList(),
      'url': instance.url,
      'icon': instance.icon,
      'text_color': instance.textColor,
      'vehicle': instance.vehicle?.toJson(),
    };

_$_OverviewPolyline _$$_OverviewPolylineFromJson(Map<String, dynamic> json) =>
    _$_OverviewPolyline(
      points: json['points'] as String?,
    );

Map<String, dynamic> _$$_OverviewPolylineToJson(_$_OverviewPolyline instance) =>
    <String, dynamic>{
      'points': instance.points,
    };

_$_TimeZoneTextValue _$$_TimeZoneTextValueFromJson(Map<String, dynamic> json) =>
    _$_TimeZoneTextValue(
      text: json['text'] as String?,
      timeZone: json['time_zone'] as String?,
      value: const MillisecondsDatetimeNullableConverter()
          .fromJson(json['value'] as int?),
    );

Map<String, dynamic> _$$_TimeZoneTextValueToJson(
        _$_TimeZoneTextValue instance) =>
    <String, dynamic>{
      'text': instance.text,
      'time_zone': instance.timeZone,
      'value':
          const MillisecondsDatetimeNullableConverter().toJson(instance.value),
    };

_$_Fare _$$_FareFromJson(Map<String, dynamic> json) => _$_Fare(
      text: json['text'] as String?,
      currency: json['currency'] as String?,
      value: json['value'] as num?,
    );

Map<String, dynamic> _$$_FareToJson(_$_Fare instance) => <String, dynamic>{
      'text': instance.text,
      'currency': instance.currency,
      'value': instance.value,
    };

_$_TransitStop _$$_TransitStopFromJson(Map<String, dynamic> json) =>
    _$_TransitStop(
      name: json['name'] as String?,
      location: json['location'] == null
          ? null
          : GeoCoord.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TransitStopToJson(_$_TransitStop instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location?.toJson(),
    };

_$_TransitAgency _$$_TransitAgencyFromJson(Map<String, dynamic> json) =>
    _$_TransitAgency(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_TransitAgencyToJson(_$_TransitAgency instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'url': instance.url,
    };

_$_TransitVehicle _$$_TransitVehicleFromJson(Map<String, dynamic> json) =>
    _$_TransitVehicle(
      name: json['name'] as String?,
      type: $enumDecodeNullable(_$TransitVehicleTypeEnumMap, json['type']),
      icon: json['icon'] as String?,
      localIcon: json['local_icon'] as String?,
    );

Map<String, dynamic> _$$_TransitVehicleToJson(_$_TransitVehicle instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': _$TransitVehicleTypeEnumMap[instance.type],
      'icon': instance.icon,
      'local_icon': instance.localIcon,
    };

const _$TransitVehicleTypeEnumMap = {
  TransitVehicleType.bus: 'BUS',
  TransitVehicleType.cableCar: 'CABLE_CAR',
  TransitVehicleType.commuterTrain: 'COMMUTER_TRAIN',
  TransitVehicleType.ferry: 'FERRY',
  TransitVehicleType.funicular: 'FUNICULAR',
  TransitVehicleType.gondolaLift: 'GONDOLA_LIFT',
  TransitVehicleType.heavyRail: 'HEAVY_RAIL',
  TransitVehicleType.highSpeedTrain: 'HIGH_SPEED_TRAIN',
  TransitVehicleType.intercityBus: 'INTERCITY_BUS',
  TransitVehicleType.longDistanceTrain: 'LONG_DISTANCE_TRAIN',
  TransitVehicleType.metroRail: 'METRO_RAIL',
  TransitVehicleType.monorail: 'MONORAIL',
  TransitVehicleType.other: 'OTHER',
  TransitVehicleType.rail: 'RAIL',
  TransitVehicleType.shareTaxi: 'SHARE_TAXI',
  TransitVehicleType.subway: 'SUBWAY',
  TransitVehicleType.tram: 'TRAM',
  TransitVehicleType.trolleybus: 'TROLLEYBUS',
};

_$_ViaWaypoint _$$_ViaWaypointFromJson(Map<String, dynamic> json) =>
    _$_ViaWaypoint(
      location: json['location'] == null
          ? null
          : GeoCoord.fromJson(json['location'] as Map<String, dynamic>),
      stepIndex: json['step_index'] as int?,
      stepInterpolation: json['step_interpolation'] as num?,
    );

Map<String, dynamic> _$$_ViaWaypointToJson(_$_ViaWaypoint instance) =>
    <String, dynamic>{
      'location': instance.location?.toJson(),
      'step_index': instance.stepIndex,
      'step_interpolation': instance.stepInterpolation,
    };

_$_TextValue _$$_TextValueFromJson(Map<String, dynamic> json) => _$_TextValue(
      text: json['text'] as String?,
      value: json['value'] as num?,
    );

Map<String, dynamic> _$$_TextValueToJson(_$_TextValue instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };
