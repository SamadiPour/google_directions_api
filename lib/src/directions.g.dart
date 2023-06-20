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
      'southwest': instance.southwest,
      'northeast': instance.northeast,
    };

_$_DirectionsRequest _$$_DirectionsRequestFromJson(Map<String, dynamic> json) =>
    _$_DirectionsRequest(
      origin: const MultiTypeLocationNullableConverter()
          .fromJson(json['origin'] as String?),
      destination: const MultiTypeLocationNullableConverter()
          .fromJson(json['destination'] as String?),
      travelMode: $enumDecodeNullable(_$TravelModeEnumMap, json['travelMode']),
      waypoints: (json['waypoints'] as List<dynamic>?)
          ?.map((e) => DirectionsWaypoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      optimizeWaypoints: json['optimizeWaypoints'] as bool?,
      alternatives: const BoolQueryNullableConverter()
          .fromJson(json['alternatives'] as String?),
      unitSystem: $enumDecodeNullable(_$UnitSystemEnumMap, json['unitSystem']),
      avoid: const AvoidTypeQueryNullableConverter()
          .fromJson(json['avoid'] as String?),
      region: json['region'] as String?,
      drivingOptions: json['drivingOptions'] == null
          ? null
          : DrivingOptions.fromJson(
              json['drivingOptions'] as Map<String, dynamic>),
      transitOptions: json['transitOptions'] == null
          ? null
          : TransitOptions.fromJson(
              json['transitOptions'] as Map<String, dynamic>),
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
  writeNotNull('travelMode', _lowercaseTravelMode(instance.travelMode));
  writeNotNull('waypoints', instance.waypoints);
  writeNotNull('alternatives',
      const BoolQueryNullableConverter().toJson(instance.alternatives));
  writeNotNull('unitSystem', _$UnitSystemEnumMap[instance.unitSystem]);
  writeNotNull(
      'avoid', const AvoidTypeQueryNullableConverter().toJson(instance.avoid));
  writeNotNull('region', instance.region);
  writeNotNull('drivingOptions', instance.drivingOptions);
  writeNotNull('transitOptions', instance.transitOptions);
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
          .fromJson(json['arrivalTime'] as int?),
      departureTime: const MillisecondsDatetimeNullableConverter()
          .fromJson(json['departureTime'] as int?),
      modes: (json['modes'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TransitModeEnumMap, e))
          .toList(),
      routingPreference: $enumDecodeNullable(
          _$TransitRoutingPreferenceEnumMap, json['routingPreference']),
    );

Map<String, dynamic> _$$_TransitOptionsToJson(_$_TransitOptions instance) =>
    <String, dynamic>{
      'arrivalTime': const MillisecondsDatetimeNullableConverter()
          .toJson(instance.arrivalTime),
      'departureTime': const MillisecondsDatetimeNullableConverter()
          .toJson(instance.departureTime),
      'modes': instance.modes?.map((e) => _$TransitModeEnumMap[e]!).toList(),
      'routingPreference':
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
          .fromJson(json['departureTime'] as int?),
      trafficModel:
          $enumDecodeNullable(_$TrafficModelEnumMap, json['trafficModel']),
    );

Map<String, dynamic> _$$_DrivingOptionsToJson(_$_DrivingOptions instance) =>
    <String, dynamic>{
      'departureTime': const MillisecondsDatetimeNullableConverter()
          .toJson(instance.departureTime),
      'trafficModel': _$TrafficModelEnumMap[instance.trafficModel],
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
      geocodedWaypoints: (json['geocodedWaypoints'] as List<dynamic>?)
          ?.map((e) => GeocodedWaypoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecodeNullable(_$DirectionsStatusEnumMap, json['status']),
      errorMessage: json['errorMessage'] as String?,
      availableTravelModes: (json['availableTravelModes'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TravelModeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$_DirectionsResultToJson(_$_DirectionsResult instance) =>
    <String, dynamic>{
      'routes': instance.routes,
      'geocodedWaypoints': instance.geocodedWaypoints,
      'status': _$DirectionsStatusEnumMap[instance.status],
      'errorMessage': instance.errorMessage,
      'availableTravelModes': instance.availableTravelModes
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
      overviewPolyline: json['overviewPolyline'] == null
          ? null
          : OverviewPolyline.fromJson(
              json['overviewPolyline'] as Map<String, dynamic>),
      summary: json['summary'] as String?,
      warnings: (json['warnings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      waypointOrder: (json['waypointOrder'] as List<dynamic>?)
          ?.map((e) => e as num)
          .toList(),
      fare: json['fare'] == null
          ? null
          : Fare.fromJson(json['fare'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DirectionsRouteToJson(_$_DirectionsRoute instance) =>
    <String, dynamic>{
      'bounds': instance.bounds,
      'copyrights': instance.copyrights,
      'legs': instance.legs,
      'overviewPolyline': instance.overviewPolyline,
      'summary': instance.summary,
      'warnings': instance.warnings,
      'waypointOrder': instance.waypointOrder,
      'fare': instance.fare,
    };

_$_GeocodedWaypoint _$$_GeocodedWaypointFromJson(Map<String, dynamic> json) =>
    _$_GeocodedWaypoint(
      geocoderStatus: json['geocoderStatus'] as String?,
      partialMatch: json['partialMatch'] as bool?,
      placeId: json['placeId'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_GeocodedWaypointToJson(_$_GeocodedWaypoint instance) =>
    <String, dynamic>{
      'geocoderStatus': instance.geocoderStatus,
      'partialMatch': instance.partialMatch,
      'placeId': instance.placeId,
      'types': instance.types,
    };

_$_DirectionsLeg _$$_DirectionsLegFromJson(Map<String, dynamic> json) =>
    _$_DirectionsLeg(
      arrivalTime: json['arrivalTime'] == null
          ? null
          : TimeZoneTextValue.fromJson(
              json['arrivalTime'] as Map<String, dynamic>),
      departureTime: json['departureTime'] == null
          ? null
          : TimeZoneTextValue.fromJson(
              json['departureTime'] as Map<String, dynamic>),
      distance: json['distance'] == null
          ? null
          : TextValue.fromJson(json['distance'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : TextValue.fromJson(json['duration'] as Map<String, dynamic>),
      durationInTraffic: json['durationInTraffic'] == null
          ? null
          : TextValue.fromJson(
              json['durationInTraffic'] as Map<String, dynamic>),
      endAddress: json['endAddress'] as String?,
      endLocation: json['endLocation'] == null
          ? null
          : GeoCoord.fromJson(json['endLocation'] as Map<String, dynamic>),
      startAddress: json['startAddress'] as String?,
      startLocation: json['startLocation'] == null
          ? null
          : GeoCoord.fromJson(json['startLocation'] as Map<String, dynamic>),
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => DirectionsStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      viaWaypoint: (json['viaWaypoint'] as List<dynamic>?)
          ?.map((e) => ViaWaypoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DirectionsLegToJson(_$_DirectionsLeg instance) =>
    <String, dynamic>{
      'arrivalTime': instance.arrivalTime,
      'departureTime': instance.departureTime,
      'distance': instance.distance,
      'duration': instance.duration,
      'durationInTraffic': instance.durationInTraffic,
      'endAddress': instance.endAddress,
      'endLocation': instance.endLocation,
      'startAddress': instance.startAddress,
      'startLocation': instance.startLocation,
      'steps': instance.steps,
      'viaWaypoint': instance.viaWaypoint,
    };

_$_DirectionsStep _$$_DirectionsStepFromJson(Map<String, dynamic> json) =>
    _$_DirectionsStep(
      distance: json['distance'] == null
          ? null
          : TextValue.fromJson(json['distance'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : TextValue.fromJson(json['duration'] as Map<String, dynamic>),
      endLocation: json['endLocation'] == null
          ? null
          : GeoCoord.fromJson(json['endLocation'] as Map<String, dynamic>),
      startLocation: json['startLocation'] == null
          ? null
          : GeoCoord.fromJson(json['startLocation'] as Map<String, dynamic>),
      instructions: json['html_instructions'] as String?,
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => DirectionsStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      transit: json['transit'] == null
          ? null
          : TransitDetails.fromJson(json['transit'] as Map<String, dynamic>),
      travelMode:
          $enumDecodeNullable(_$TravelModeEnumMap, json['transit_details']),
      polyline: json['polyline'] == null
          ? null
          : OverviewPolyline.fromJson(json['polyline'] as Map<String, dynamic>),
      maneuver: json['maneuver'] as String?,
    );

Map<String, dynamic> _$$_DirectionsStepToJson(_$_DirectionsStep instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'endLocation': instance.endLocation,
      'startLocation': instance.startLocation,
      'html_instructions': instance.instructions,
      'steps': instance.steps,
      'transit': instance.transit,
      'transit_details': _$TravelModeEnumMap[instance.travelMode],
      'polyline': instance.polyline,
      'maneuver': instance.maneuver,
    };

_$_TransitDetails _$$_TransitDetailsFromJson(Map<String, dynamic> json) =>
    _$_TransitDetails(
      arrivalStop: json['arrivalStop'] == null
          ? null
          : TransitStop.fromJson(json['arrivalStop'] as Map<String, dynamic>),
      departureStop: json['departureStop'] == null
          ? null
          : TransitStop.fromJson(json['departureStop'] as Map<String, dynamic>),
      arrivalTime: json['arrivalTime'] == null
          ? null
          : TimeZoneTextValue.fromJson(
              json['arrivalTime'] as Map<String, dynamic>),
      departureTime: json['departureTime'] == null
          ? null
          : TimeZoneTextValue.fromJson(
              json['departureTime'] as Map<String, dynamic>),
      headsign: json['headsign'] as String?,
      headway: json['headway'] as num?,
      line: json['line'] == null
          ? null
          : TransitLine.fromJson(json['line'] as Map<String, dynamic>),
      numStops: json['numStops'] as num?,
      tripShortName: json['tripShortName'] as String?,
    );

Map<String, dynamic> _$$_TransitDetailsToJson(_$_TransitDetails instance) =>
    <String, dynamic>{
      'arrivalStop': instance.arrivalStop,
      'departureStop': instance.departureStop,
      'arrivalTime': instance.arrivalTime,
      'departureTime': instance.departureTime,
      'headsign': instance.headsign,
      'headway': instance.headway,
      'line': instance.line,
      'numStops': instance.numStops,
      'tripShortName': instance.tripShortName,
    };

_$_TransitLine _$$_TransitLineFromJson(Map<String, dynamic> json) =>
    _$_TransitLine(
      name: json['name'] as String?,
      shortName: json['shortName'] as String?,
      color: json['color'] as String?,
      agencies: (json['agencies'] as List<dynamic>?)
          ?.map((e) => TransitAgency.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
      icon: json['icon'] as String?,
      textColor: json['textColor'] as String?,
      vehicle: json['vehicle'] == null
          ? null
          : TransitVehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TransitLineToJson(_$_TransitLine instance) =>
    <String, dynamic>{
      'name': instance.name,
      'shortName': instance.shortName,
      'color': instance.color,
      'agencies': instance.agencies,
      'url': instance.url,
      'icon': instance.icon,
      'textColor': instance.textColor,
      'vehicle': instance.vehicle,
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
      timeZone: json['timeZone'] as String?,
      value: const MillisecondsDatetimeNullableConverter()
          .fromJson(json['value'] as int?),
    );

Map<String, dynamic> _$$_TimeZoneTextValueToJson(
        _$_TimeZoneTextValue instance) =>
    <String, dynamic>{
      'text': instance.text,
      'timeZone': instance.timeZone,
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
      'location': instance.location,
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
      localIcon: json['localIcon'] as String?,
    );

Map<String, dynamic> _$$_TransitVehicleToJson(_$_TransitVehicle instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': _$TransitVehicleTypeEnumMap[instance.type],
      'icon': instance.icon,
      'localIcon': instance.localIcon,
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
      stepIndex: json['stepIndex'] as int?,
      stepInterpolation: json['stepInterpolation'] as num?,
    );

Map<String, dynamic> _$$_ViaWaypointToJson(_$_ViaWaypoint instance) =>
    <String, dynamic>{
      'location': instance.location,
      'stepIndex': instance.stepIndex,
      'stepInterpolation': instance.stepInterpolation,
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
