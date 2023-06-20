// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'directions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoCoord _$GeoCoordFromJson(Map<String, dynamic> json) {
  return _GeoCoord.fromJson(json);
}

/// @nodoc
mixin _$GeoCoord {
  /// Latitude in degrees.
  /// The latitude in degrees between -90.0 and 90.0, both inclusive.
  @Assert('latitude >= -90.0 && latitude <= 90.0')
  @JsonKey(name: 'lat')
  double get latitude => throw _privateConstructorUsedError;

  /// Longitude in degrees.
  /// The longitude in degrees between -180.0 (inclusive) and 180.0 (exclusive).
  @Assert('longitude >= -180.0 && longitude < 180.0')
  @JsonKey(name: 'lng')
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoCoordCopyWith<GeoCoord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoCoordCopyWith<$Res> {
  factory $GeoCoordCopyWith(GeoCoord value, $Res Function(GeoCoord) then) =
      _$GeoCoordCopyWithImpl<$Res, GeoCoord>;
  @useResult
  $Res call(
      {@Assert('latitude >= -90.0 && latitude <= 90.0')
      @JsonKey(name: 'lat')
          double latitude,
      @Assert('longitude >= -180.0 && longitude < 180.0')
      @JsonKey(name: 'lng')
          double longitude});
}

/// @nodoc
class _$GeoCoordCopyWithImpl<$Res, $Val extends GeoCoord>
    implements $GeoCoordCopyWith<$Res> {
  _$GeoCoordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeoCoordCopyWith<$Res> implements $GeoCoordCopyWith<$Res> {
  factory _$$_GeoCoordCopyWith(
          _$_GeoCoord value, $Res Function(_$_GeoCoord) then) =
      __$$_GeoCoordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Assert('latitude >= -90.0 && latitude <= 90.0')
      @JsonKey(name: 'lat')
          double latitude,
      @Assert('longitude >= -180.0 && longitude < 180.0')
      @JsonKey(name: 'lng')
          double longitude});
}

/// @nodoc
class __$$_GeoCoordCopyWithImpl<$Res>
    extends _$GeoCoordCopyWithImpl<$Res, _$_GeoCoord>
    implements _$$_GeoCoordCopyWith<$Res> {
  __$$_GeoCoordCopyWithImpl(
      _$_GeoCoord _value, $Res Function(_$_GeoCoord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_GeoCoord(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeoCoord implements _GeoCoord {
  const _$_GeoCoord(
      {@Assert('latitude >= -90.0 && latitude <= 90.0')
      @JsonKey(name: 'lat')
          required this.latitude,
      @Assert('longitude >= -180.0 && longitude < 180.0')
      @JsonKey(name: 'lng')
          required this.longitude});

  factory _$_GeoCoord.fromJson(Map<String, dynamic> json) =>
      _$$_GeoCoordFromJson(json);

  /// Latitude in degrees.
  /// The latitude in degrees between -90.0 and 90.0, both inclusive.
  @override
  @Assert('latitude >= -90.0 && latitude <= 90.0')
  @JsonKey(name: 'lat')
  final double latitude;

  /// Longitude in degrees.
  /// The longitude in degrees between -180.0 (inclusive) and 180.0 (exclusive).
  @override
  @Assert('longitude >= -180.0 && longitude < 180.0')
  @JsonKey(name: 'lng')
  final double longitude;

  @override
  String toString() {
    return 'GeoCoord(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeoCoord &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeoCoordCopyWith<_$_GeoCoord> get copyWith =>
      __$$_GeoCoordCopyWithImpl<_$_GeoCoord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoCoordToJson(
      this,
    );
  }
}

abstract class _GeoCoord implements GeoCoord {
  const factory _GeoCoord(
      {@Assert('latitude >= -90.0 && latitude <= 90.0')
      @JsonKey(name: 'lat')
          required final double latitude,
      @Assert('longitude >= -180.0 && longitude < 180.0')
      @JsonKey(name: 'lng')
          required final double longitude}) = _$_GeoCoord;

  factory _GeoCoord.fromJson(Map<String, dynamic> json) = _$_GeoCoord.fromJson;

  @override

  /// Latitude in degrees.
  /// The latitude in degrees between -90.0 and 90.0, both inclusive.
  @Assert('latitude >= -90.0 && latitude <= 90.0')
  @JsonKey(name: 'lat')
  double get latitude;
  @override

  /// Longitude in degrees.
  /// The longitude in degrees between -180.0 (inclusive) and 180.0 (exclusive).
  @Assert('longitude >= -180.0 && longitude < 180.0')
  @JsonKey(name: 'lng')
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_GeoCoordCopyWith<_$_GeoCoord> get copyWith =>
      throw _privateConstructorUsedError;
}

GeoCoordBounds _$GeoCoordBoundsFromJson(Map<String, dynamic> json) {
  return _GeoCoordBounds.fromJson(json);
}

/// @nodoc
mixin _$GeoCoordBounds {
  /// The southwest corner of the rectangle.
  GeoCoord get southwest => throw _privateConstructorUsedError;

  /// The northeast corner of the rectangle.
  GeoCoord get northeast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoCoordBoundsCopyWith<GeoCoordBounds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoCoordBoundsCopyWith<$Res> {
  factory $GeoCoordBoundsCopyWith(
          GeoCoordBounds value, $Res Function(GeoCoordBounds) then) =
      _$GeoCoordBoundsCopyWithImpl<$Res, GeoCoordBounds>;
  @useResult
  $Res call({GeoCoord southwest, GeoCoord northeast});

  $GeoCoordCopyWith<$Res> get southwest;
  $GeoCoordCopyWith<$Res> get northeast;
}

/// @nodoc
class _$GeoCoordBoundsCopyWithImpl<$Res, $Val extends GeoCoordBounds>
    implements $GeoCoordBoundsCopyWith<$Res> {
  _$GeoCoordBoundsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? southwest = null,
    Object? northeast = null,
  }) {
    return _then(_value.copyWith(
      southwest: null == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as GeoCoord,
      northeast: null == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as GeoCoord,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoCoordCopyWith<$Res> get southwest {
    return $GeoCoordCopyWith<$Res>(_value.southwest, (value) {
      return _then(_value.copyWith(southwest: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoCoordCopyWith<$Res> get northeast {
    return $GeoCoordCopyWith<$Res>(_value.northeast, (value) {
      return _then(_value.copyWith(northeast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GeoCoordBoundsCopyWith<$Res>
    implements $GeoCoordBoundsCopyWith<$Res> {
  factory _$$_GeoCoordBoundsCopyWith(
          _$_GeoCoordBounds value, $Res Function(_$_GeoCoordBounds) then) =
      __$$_GeoCoordBoundsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GeoCoord southwest, GeoCoord northeast});

  @override
  $GeoCoordCopyWith<$Res> get southwest;
  @override
  $GeoCoordCopyWith<$Res> get northeast;
}

/// @nodoc
class __$$_GeoCoordBoundsCopyWithImpl<$Res>
    extends _$GeoCoordBoundsCopyWithImpl<$Res, _$_GeoCoordBounds>
    implements _$$_GeoCoordBoundsCopyWith<$Res> {
  __$$_GeoCoordBoundsCopyWithImpl(
      _$_GeoCoordBounds _value, $Res Function(_$_GeoCoordBounds) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? southwest = null,
    Object? northeast = null,
  }) {
    return _then(_$_GeoCoordBounds(
      southwest: null == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as GeoCoord,
      northeast: null == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as GeoCoord,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeoCoordBounds extends _GeoCoordBounds {
  const _$_GeoCoordBounds({required this.southwest, required this.northeast})
      : super._();

  factory _$_GeoCoordBounds.fromJson(Map<String, dynamic> json) =>
      _$$_GeoCoordBoundsFromJson(json);

  /// The southwest corner of the rectangle.
  @override
  final GeoCoord southwest;

  /// The northeast corner of the rectangle.
  @override
  final GeoCoord northeast;

  @override
  String toString() {
    return 'GeoCoordBounds(southwest: $southwest, northeast: $northeast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeoCoordBounds &&
            (identical(other.southwest, southwest) ||
                other.southwest == southwest) &&
            (identical(other.northeast, northeast) ||
                other.northeast == northeast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, southwest, northeast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeoCoordBoundsCopyWith<_$_GeoCoordBounds> get copyWith =>
      __$$_GeoCoordBoundsCopyWithImpl<_$_GeoCoordBounds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoCoordBoundsToJson(
      this,
    );
  }
}

abstract class _GeoCoordBounds extends GeoCoordBounds {
  const factory _GeoCoordBounds(
      {required final GeoCoord southwest,
      required final GeoCoord northeast}) = _$_GeoCoordBounds;
  const _GeoCoordBounds._() : super._();

  factory _GeoCoordBounds.fromJson(Map<String, dynamic> json) =
      _$_GeoCoordBounds.fromJson;

  @override

  /// The southwest corner of the rectangle.
  GeoCoord get southwest;
  @override

  /// The northeast corner of the rectangle.
  GeoCoord get northeast;
  @override
  @JsonKey(ignore: true)
  _$$_GeoCoordBoundsCopyWith<_$_GeoCoordBounds> get copyWith =>
      throw _privateConstructorUsedError;
}

DirectionsRequest _$DirectionsRequestFromJson(Map<String, dynamic> json) {
  return _DirectionsRequest.fromJson(json);
}

/// @nodoc
mixin _$DirectionsRequest {
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
  @MultiTypeLocationNullableConverter()
  dynamic get origin => throw _privateConstructorUsedError;

  /// The address, textual latitude/longitude value, or place ID
  /// to which you wish to calculate directions. The options for
  /// the destination parameter are the same as for the [origin]
  /// parameter, described above.
  ///
  /// This field is required.
  @MultiTypeLocationNullableConverter()
  dynamic get destination => throw _privateConstructorUsedError;

  /// Specifies the mode of transport to use when calculating
  /// directions. Valid values and other request details are
  /// specified in [TravelModes].
  ///
  /// Default value is [TravelMode.driving]
  @JsonKey(toJson: _lowercaseTravelMode)
  TravelMode? get travelMode => throw _privateConstructorUsedError;

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
  List<DirectionsWaypoint>? get waypoints => throw _privateConstructorUsedError;

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
  @JsonKey(includeToJson: false)
  bool? get optimizeWaypoints =>
      throw _privateConstructorUsedError; //todo===========
  /// If set to `true`, specifies that the Directions service may
  /// provide more than one route alternative in the response.
  /// Note that providing route alternatives may increase the
  /// response time from the server. This is only available for
  /// requests without intermediate waypoints.
  @BoolQueryNullableConverter()
  bool? get alternatives => throw _privateConstructorUsedError;

  /// Specifies the unit system to use when displaying results.
  UnitSystem? get unitSystem => throw _privateConstructorUsedError;
  @AvoidTypeQueryNullableConverter()
  List<AvoidType>? get avoid => throw _privateConstructorUsedError;

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
  String? get region => throw _privateConstructorUsedError;

  /// Specifies the desired time of departure and/or desired assumption
  /// of time in traffic calculation for `non-transit` [TravelMode].
  DrivingOptions? get drivingOptions => throw _privateConstructorUsedError;

  /// Specifies the desired time of arrival/departure and/or desired
  /// transit types and/or desired routing preference for `transit`
  /// [TravelMode].
  TransitOptions? get transitOptions => throw _privateConstructorUsedError;

  /// The language in which to return results
  /// If language is not supplied, the API attempts to use the preferred
  /// language as specified in the Accept-Language header, or the native
  /// language of the domain from which the request is sent.
  /// For a complete list of the supported languages visit
  /// https://developers.google.com/maps/faq#languagesupport
  String? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionsRequestCopyWith<DirectionsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionsRequestCopyWith<$Res> {
  factory $DirectionsRequestCopyWith(
          DirectionsRequest value, $Res Function(DirectionsRequest) then) =
      _$DirectionsRequestCopyWithImpl<$Res, DirectionsRequest>;
  @useResult
  $Res call(
      {@MultiTypeLocationNullableConverter() dynamic origin,
      @MultiTypeLocationNullableConverter() dynamic destination,
      @JsonKey(toJson: _lowercaseTravelMode) TravelMode? travelMode,
      List<DirectionsWaypoint>? waypoints,
      @JsonKey(includeToJson: false) bool? optimizeWaypoints,
      @BoolQueryNullableConverter() bool? alternatives,
      UnitSystem? unitSystem,
      @AvoidTypeQueryNullableConverter() List<AvoidType>? avoid,
      String? region,
      DrivingOptions? drivingOptions,
      TransitOptions? transitOptions,
      String? language});

  $DrivingOptionsCopyWith<$Res>? get drivingOptions;
  $TransitOptionsCopyWith<$Res>? get transitOptions;
}

/// @nodoc
class _$DirectionsRequestCopyWithImpl<$Res, $Val extends DirectionsRequest>
    implements $DirectionsRequestCopyWith<$Res> {
  _$DirectionsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? travelMode = freezed,
    Object? waypoints = freezed,
    Object? optimizeWaypoints = freezed,
    Object? alternatives = freezed,
    Object? unitSystem = freezed,
    Object? avoid = freezed,
    Object? region = freezed,
    Object? drivingOptions = freezed,
    Object? transitOptions = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as dynamic,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as dynamic,
      travelMode: freezed == travelMode
          ? _value.travelMode
          : travelMode // ignore: cast_nullable_to_non_nullable
              as TravelMode?,
      waypoints: freezed == waypoints
          ? _value.waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<DirectionsWaypoint>?,
      optimizeWaypoints: freezed == optimizeWaypoints
          ? _value.optimizeWaypoints
          : optimizeWaypoints // ignore: cast_nullable_to_non_nullable
              as bool?,
      alternatives: freezed == alternatives
          ? _value.alternatives
          : alternatives // ignore: cast_nullable_to_non_nullable
              as bool?,
      unitSystem: freezed == unitSystem
          ? _value.unitSystem
          : unitSystem // ignore: cast_nullable_to_non_nullable
              as UnitSystem?,
      avoid: freezed == avoid
          ? _value.avoid
          : avoid // ignore: cast_nullable_to_non_nullable
              as List<AvoidType>?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      drivingOptions: freezed == drivingOptions
          ? _value.drivingOptions
          : drivingOptions // ignore: cast_nullable_to_non_nullable
              as DrivingOptions?,
      transitOptions: freezed == transitOptions
          ? _value.transitOptions
          : transitOptions // ignore: cast_nullable_to_non_nullable
              as TransitOptions?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DrivingOptionsCopyWith<$Res>? get drivingOptions {
    if (_value.drivingOptions == null) {
      return null;
    }

    return $DrivingOptionsCopyWith<$Res>(_value.drivingOptions!, (value) {
      return _then(_value.copyWith(drivingOptions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TransitOptionsCopyWith<$Res>? get transitOptions {
    if (_value.transitOptions == null) {
      return null;
    }

    return $TransitOptionsCopyWith<$Res>(_value.transitOptions!, (value) {
      return _then(_value.copyWith(transitOptions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DirectionsRequestCopyWith<$Res>
    implements $DirectionsRequestCopyWith<$Res> {
  factory _$$_DirectionsRequestCopyWith(_$_DirectionsRequest value,
          $Res Function(_$_DirectionsRequest) then) =
      __$$_DirectionsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@MultiTypeLocationNullableConverter() dynamic origin,
      @MultiTypeLocationNullableConverter() dynamic destination,
      @JsonKey(toJson: _lowercaseTravelMode) TravelMode? travelMode,
      List<DirectionsWaypoint>? waypoints,
      @JsonKey(includeToJson: false) bool? optimizeWaypoints,
      @BoolQueryNullableConverter() bool? alternatives,
      UnitSystem? unitSystem,
      @AvoidTypeQueryNullableConverter() List<AvoidType>? avoid,
      String? region,
      DrivingOptions? drivingOptions,
      TransitOptions? transitOptions,
      String? language});

  @override
  $DrivingOptionsCopyWith<$Res>? get drivingOptions;
  @override
  $TransitOptionsCopyWith<$Res>? get transitOptions;
}

/// @nodoc
class __$$_DirectionsRequestCopyWithImpl<$Res>
    extends _$DirectionsRequestCopyWithImpl<$Res, _$_DirectionsRequest>
    implements _$$_DirectionsRequestCopyWith<$Res> {
  __$$_DirectionsRequestCopyWithImpl(
      _$_DirectionsRequest _value, $Res Function(_$_DirectionsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? travelMode = freezed,
    Object? waypoints = freezed,
    Object? optimizeWaypoints = freezed,
    Object? alternatives = freezed,
    Object? unitSystem = freezed,
    Object? avoid = freezed,
    Object? region = freezed,
    Object? drivingOptions = freezed,
    Object? transitOptions = freezed,
    Object? language = freezed,
  }) {
    return _then(_$_DirectionsRequest(
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as dynamic,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as dynamic,
      travelMode: freezed == travelMode
          ? _value.travelMode
          : travelMode // ignore: cast_nullable_to_non_nullable
              as TravelMode?,
      waypoints: freezed == waypoints
          ? _value._waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<DirectionsWaypoint>?,
      optimizeWaypoints: freezed == optimizeWaypoints
          ? _value.optimizeWaypoints
          : optimizeWaypoints // ignore: cast_nullable_to_non_nullable
              as bool?,
      alternatives: freezed == alternatives
          ? _value.alternatives
          : alternatives // ignore: cast_nullable_to_non_nullable
              as bool?,
      unitSystem: freezed == unitSystem
          ? _value.unitSystem
          : unitSystem // ignore: cast_nullable_to_non_nullable
              as UnitSystem?,
      avoid: freezed == avoid
          ? _value._avoid
          : avoid // ignore: cast_nullable_to_non_nullable
              as List<AvoidType>?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      drivingOptions: freezed == drivingOptions
          ? _value.drivingOptions
          : drivingOptions // ignore: cast_nullable_to_non_nullable
              as DrivingOptions?,
      transitOptions: freezed == transitOptions
          ? _value.transitOptions
          : transitOptions // ignore: cast_nullable_to_non_nullable
              as TransitOptions?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_DirectionsRequest implements _DirectionsRequest {
  const _$_DirectionsRequest(
      {@MultiTypeLocationNullableConverter() required this.origin,
      @MultiTypeLocationNullableConverter() required this.destination,
      @JsonKey(toJson: _lowercaseTravelMode) this.travelMode,
      final List<DirectionsWaypoint>? waypoints,
      @JsonKey(includeToJson: false) this.optimizeWaypoints,
      @BoolQueryNullableConverter() this.alternatives,
      this.unitSystem,
      @AvoidTypeQueryNullableConverter() final List<AvoidType>? avoid,
      this.region,
      this.drivingOptions,
      this.transitOptions,
      this.language})
      : _waypoints = waypoints,
        _avoid = avoid;

  factory _$_DirectionsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DirectionsRequestFromJson(json);

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
  @override
  @MultiTypeLocationNullableConverter()
  final dynamic origin;

  /// The address, textual latitude/longitude value, or place ID
  /// to which you wish to calculate directions. The options for
  /// the destination parameter are the same as for the [origin]
  /// parameter, described above.
  ///
  /// This field is required.
  @override
  @MultiTypeLocationNullableConverter()
  final dynamic destination;

  /// Specifies the mode of transport to use when calculating
  /// directions. Valid values and other request details are
  /// specified in [TravelModes].
  ///
  /// Default value is [TravelMode.driving]
  @override
  @JsonKey(toJson: _lowercaseTravelMode)
  final TravelMode? travelMode;

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
  final List<DirectionsWaypoint>? _waypoints;

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
  @override
  List<DirectionsWaypoint>? get waypoints {
    final value = _waypoints;
    if (value == null) return null;
    if (_waypoints is EqualUnmodifiableListView) return _waypoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  @override
  @JsonKey(includeToJson: false)
  final bool? optimizeWaypoints;
//todo===========
  /// If set to `true`, specifies that the Directions service may
  /// provide more than one route alternative in the response.
  /// Note that providing route alternatives may increase the
  /// response time from the server. This is only available for
  /// requests without intermediate waypoints.
  @override
  @BoolQueryNullableConverter()
  final bool? alternatives;

  /// Specifies the unit system to use when displaying results.
  @override
  final UnitSystem? unitSystem;
  final List<AvoidType>? _avoid;
  @override
  @AvoidTypeQueryNullableConverter()
  List<AvoidType>? get avoid {
    final value = _avoid;
    if (value == null) return null;
    if (_avoid is EqualUnmodifiableListView) return _avoid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  @override
  final String? region;

  /// Specifies the desired time of departure and/or desired assumption
  /// of time in traffic calculation for `non-transit` [TravelMode].
  @override
  final DrivingOptions? drivingOptions;

  /// Specifies the desired time of arrival/departure and/or desired
  /// transit types and/or desired routing preference for `transit`
  /// [TravelMode].
  @override
  final TransitOptions? transitOptions;

  /// The language in which to return results
  /// If language is not supplied, the API attempts to use the preferred
  /// language as specified in the Accept-Language header, or the native
  /// language of the domain from which the request is sent.
  /// For a complete list of the supported languages visit
  /// https://developers.google.com/maps/faq#languagesupport
  @override
  final String? language;

  @override
  String toString() {
    return 'DirectionsRequest(origin: $origin, destination: $destination, travelMode: $travelMode, waypoints: $waypoints, optimizeWaypoints: $optimizeWaypoints, alternatives: $alternatives, unitSystem: $unitSystem, avoid: $avoid, region: $region, drivingOptions: $drivingOptions, transitOptions: $transitOptions, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DirectionsRequest &&
            const DeepCollectionEquality().equals(other.origin, origin) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            (identical(other.travelMode, travelMode) ||
                other.travelMode == travelMode) &&
            const DeepCollectionEquality()
                .equals(other._waypoints, _waypoints) &&
            (identical(other.optimizeWaypoints, optimizeWaypoints) ||
                other.optimizeWaypoints == optimizeWaypoints) &&
            (identical(other.alternatives, alternatives) ||
                other.alternatives == alternatives) &&
            (identical(other.unitSystem, unitSystem) ||
                other.unitSystem == unitSystem) &&
            const DeepCollectionEquality().equals(other._avoid, _avoid) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.drivingOptions, drivingOptions) ||
                other.drivingOptions == drivingOptions) &&
            (identical(other.transitOptions, transitOptions) ||
                other.transitOptions == transitOptions) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(origin),
      const DeepCollectionEquality().hash(destination),
      travelMode,
      const DeepCollectionEquality().hash(_waypoints),
      optimizeWaypoints,
      alternatives,
      unitSystem,
      const DeepCollectionEquality().hash(_avoid),
      region,
      drivingOptions,
      transitOptions,
      language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DirectionsRequestCopyWith<_$_DirectionsRequest> get copyWith =>
      __$$_DirectionsRequestCopyWithImpl<_$_DirectionsRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DirectionsRequestToJson(
      this,
    );
  }
}

abstract class _DirectionsRequest implements DirectionsRequest {
  const factory _DirectionsRequest(
      {@MultiTypeLocationNullableConverter() required final dynamic origin,
      @MultiTypeLocationNullableConverter() required final dynamic destination,
      @JsonKey(toJson: _lowercaseTravelMode) final TravelMode? travelMode,
      final List<DirectionsWaypoint>? waypoints,
      @JsonKey(includeToJson: false) final bool? optimizeWaypoints,
      @BoolQueryNullableConverter() final bool? alternatives,
      final UnitSystem? unitSystem,
      @AvoidTypeQueryNullableConverter() final List<AvoidType>? avoid,
      final String? region,
      final DrivingOptions? drivingOptions,
      final TransitOptions? transitOptions,
      final String? language}) = _$_DirectionsRequest;

  factory _DirectionsRequest.fromJson(Map<String, dynamic> json) =
      _$_DirectionsRequest.fromJson;

  @override

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
  @MultiTypeLocationNullableConverter()
  dynamic get origin;
  @override

  /// The address, textual latitude/longitude value, or place ID
  /// to which you wish to calculate directions. The options for
  /// the destination parameter are the same as for the [origin]
  /// parameter, described above.
  ///
  /// This field is required.
  @MultiTypeLocationNullableConverter()
  dynamic get destination;
  @override

  /// Specifies the mode of transport to use when calculating
  /// directions. Valid values and other request details are
  /// specified in [TravelModes].
  ///
  /// Default value is [TravelMode.driving]
  @JsonKey(toJson: _lowercaseTravelMode)
  TravelMode? get travelMode;
  @override

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
  List<DirectionsWaypoint>? get waypoints;
  @override

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
  @JsonKey(includeToJson: false)
  bool? get optimizeWaypoints;
  @override //todo===========
  /// If set to `true`, specifies that the Directions service may
  /// provide more than one route alternative in the response.
  /// Note that providing route alternatives may increase the
  /// response time from the server. This is only available for
  /// requests without intermediate waypoints.
  @BoolQueryNullableConverter()
  bool? get alternatives;
  @override

  /// Specifies the unit system to use when displaying results.
  UnitSystem? get unitSystem;
  @override
  @AvoidTypeQueryNullableConverter()
  List<AvoidType>? get avoid;
  @override

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
  String? get region;
  @override

  /// Specifies the desired time of departure and/or desired assumption
  /// of time in traffic calculation for `non-transit` [TravelMode].
  DrivingOptions? get drivingOptions;
  @override

  /// Specifies the desired time of arrival/departure and/or desired
  /// transit types and/or desired routing preference for `transit`
  /// [TravelMode].
  TransitOptions? get transitOptions;
  @override

  /// The language in which to return results
  /// If language is not supplied, the API attempts to use the preferred
  /// language as specified in the Accept-Language header, or the native
  /// language of the domain from which the request is sent.
  /// For a complete list of the supported languages visit
  /// https://developers.google.com/maps/faq#languagesupport
  String? get language;
  @override
  @JsonKey(ignore: true)
  _$$_DirectionsRequestCopyWith<_$_DirectionsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

DirectionsWaypoint _$DirectionsWaypointFromJson(Map<String, dynamic> json) {
  return _DirectionsWaypoint.fromJson(json);
}

/// @nodoc
mixin _$DirectionsWaypoint {
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
  @MultiTypeLocationNullableConverter()
  dynamic get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionsWaypointCopyWith<DirectionsWaypoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionsWaypointCopyWith<$Res> {
  factory $DirectionsWaypointCopyWith(
          DirectionsWaypoint value, $Res Function(DirectionsWaypoint) then) =
      _$DirectionsWaypointCopyWithImpl<$Res, DirectionsWaypoint>;
  @useResult
  $Res call({@MultiTypeLocationNullableConverter() dynamic location});
}

/// @nodoc
class _$DirectionsWaypointCopyWithImpl<$Res, $Val extends DirectionsWaypoint>
    implements $DirectionsWaypointCopyWith<$Res> {
  _$DirectionsWaypointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DirectionsWaypointCopyWith<$Res>
    implements $DirectionsWaypointCopyWith<$Res> {
  factory _$$_DirectionsWaypointCopyWith(_$_DirectionsWaypoint value,
          $Res Function(_$_DirectionsWaypoint) then) =
      __$$_DirectionsWaypointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@MultiTypeLocationNullableConverter() dynamic location});
}

/// @nodoc
class __$$_DirectionsWaypointCopyWithImpl<$Res>
    extends _$DirectionsWaypointCopyWithImpl<$Res, _$_DirectionsWaypoint>
    implements _$$_DirectionsWaypointCopyWith<$Res> {
  __$$_DirectionsWaypointCopyWithImpl(
      _$_DirectionsWaypoint _value, $Res Function(_$_DirectionsWaypoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_$_DirectionsWaypoint(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DirectionsWaypoint implements _DirectionsWaypoint {
  const _$_DirectionsWaypoint(
      {@MultiTypeLocationNullableConverter() this.location});

  factory _$_DirectionsWaypoint.fromJson(Map<String, dynamic> json) =>
      _$$_DirectionsWaypointFromJson(json);

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
  @override
  @MultiTypeLocationNullableConverter()
  final dynamic location;

  @override
  String toString() {
    return 'DirectionsWaypoint(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DirectionsWaypoint &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DirectionsWaypointCopyWith<_$_DirectionsWaypoint> get copyWith =>
      __$$_DirectionsWaypointCopyWithImpl<_$_DirectionsWaypoint>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DirectionsWaypointToJson(
      this,
    );
  }
}

abstract class _DirectionsWaypoint implements DirectionsWaypoint {
  const factory _DirectionsWaypoint(
          {@MultiTypeLocationNullableConverter() final dynamic location}) =
      _$_DirectionsWaypoint;

  factory _DirectionsWaypoint.fromJson(Map<String, dynamic> json) =
      _$_DirectionsWaypoint.fromJson;

  @override

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
  @MultiTypeLocationNullableConverter()
  dynamic get location;
  @override
  @JsonKey(ignore: true)
  _$$_DirectionsWaypointCopyWith<_$_DirectionsWaypoint> get copyWith =>
      throw _privateConstructorUsedError;
}

TransitOptions _$TransitOptionsFromJson(Map<String, dynamic> json) {
  return _TransitOptions.fromJson(json);
}

/// @nodoc
mixin _$TransitOptions {
  /// Specifies the desired time of arrival for transit directions.
  /// You can specify either `departureTime` or `arrivalTime`, but
  /// not both.
  @MillisecondsDatetimeNullableConverter()
  DateTime? get arrivalTime => throw _privateConstructorUsedError;

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
  @MillisecondsDatetimeNullableConverter()
  DateTime? get departureTime => throw _privateConstructorUsedError;

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
  List<TransitMode>? get modes => throw _privateConstructorUsedError;

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
  TransitRoutingPreference? get routingPreference =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransitOptionsCopyWith<TransitOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransitOptionsCopyWith<$Res> {
  factory $TransitOptionsCopyWith(
          TransitOptions value, $Res Function(TransitOptions) then) =
      _$TransitOptionsCopyWithImpl<$Res, TransitOptions>;
  @useResult
  $Res call(
      {@MillisecondsDatetimeNullableConverter() DateTime? arrivalTime,
      @MillisecondsDatetimeNullableConverter() DateTime? departureTime,
      List<TransitMode>? modes,
      TransitRoutingPreference? routingPreference});
}

/// @nodoc
class _$TransitOptionsCopyWithImpl<$Res, $Val extends TransitOptions>
    implements $TransitOptionsCopyWith<$Res> {
  _$TransitOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrivalTime = freezed,
    Object? departureTime = freezed,
    Object? modes = freezed,
    Object? routingPreference = freezed,
  }) {
    return _then(_value.copyWith(
      arrivalTime: freezed == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      departureTime: freezed == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modes: freezed == modes
          ? _value.modes
          : modes // ignore: cast_nullable_to_non_nullable
              as List<TransitMode>?,
      routingPreference: freezed == routingPreference
          ? _value.routingPreference
          : routingPreference // ignore: cast_nullable_to_non_nullable
              as TransitRoutingPreference?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransitOptionsCopyWith<$Res>
    implements $TransitOptionsCopyWith<$Res> {
  factory _$$_TransitOptionsCopyWith(
          _$_TransitOptions value, $Res Function(_$_TransitOptions) then) =
      __$$_TransitOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@MillisecondsDatetimeNullableConverter() DateTime? arrivalTime,
      @MillisecondsDatetimeNullableConverter() DateTime? departureTime,
      List<TransitMode>? modes,
      TransitRoutingPreference? routingPreference});
}

/// @nodoc
class __$$_TransitOptionsCopyWithImpl<$Res>
    extends _$TransitOptionsCopyWithImpl<$Res, _$_TransitOptions>
    implements _$$_TransitOptionsCopyWith<$Res> {
  __$$_TransitOptionsCopyWithImpl(
      _$_TransitOptions _value, $Res Function(_$_TransitOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrivalTime = freezed,
    Object? departureTime = freezed,
    Object? modes = freezed,
    Object? routingPreference = freezed,
  }) {
    return _then(_$_TransitOptions(
      arrivalTime: freezed == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      departureTime: freezed == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modes: freezed == modes
          ? _value._modes
          : modes // ignore: cast_nullable_to_non_nullable
              as List<TransitMode>?,
      routingPreference: freezed == routingPreference
          ? _value.routingPreference
          : routingPreference // ignore: cast_nullable_to_non_nullable
              as TransitRoutingPreference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransitOptions implements _TransitOptions {
  const _$_TransitOptions(
      {@MillisecondsDatetimeNullableConverter() this.arrivalTime,
      @MillisecondsDatetimeNullableConverter() this.departureTime,
      final List<TransitMode>? modes,
      this.routingPreference})
      : _modes = modes;

  factory _$_TransitOptions.fromJson(Map<String, dynamic> json) =>
      _$$_TransitOptionsFromJson(json);

  /// Specifies the desired time of arrival for transit directions.
  /// You can specify either `departureTime` or `arrivalTime`, but
  /// not both.
  @override
  @MillisecondsDatetimeNullableConverter()
  final DateTime? arrivalTime;

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
  @override
  @MillisecondsDatetimeNullableConverter()
  final DateTime? departureTime;

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
  final List<TransitMode>? _modes;

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
  @override
  List<TransitMode>? get modes {
    final value = _modes;
    if (value == null) return null;
    if (_modes is EqualUnmodifiableListView) return _modes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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
  @override
  final TransitRoutingPreference? routingPreference;

  @override
  String toString() {
    return 'TransitOptions(arrivalTime: $arrivalTime, departureTime: $departureTime, modes: $modes, routingPreference: $routingPreference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransitOptions &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            const DeepCollectionEquality().equals(other._modes, _modes) &&
            (identical(other.routingPreference, routingPreference) ||
                other.routingPreference == routingPreference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, arrivalTime, departureTime,
      const DeepCollectionEquality().hash(_modes), routingPreference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransitOptionsCopyWith<_$_TransitOptions> get copyWith =>
      __$$_TransitOptionsCopyWithImpl<_$_TransitOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransitOptionsToJson(
      this,
    );
  }
}

abstract class _TransitOptions implements TransitOptions {
  const factory _TransitOptions(
      {@MillisecondsDatetimeNullableConverter() final DateTime? arrivalTime,
      @MillisecondsDatetimeNullableConverter() final DateTime? departureTime,
      final List<TransitMode>? modes,
      final TransitRoutingPreference? routingPreference}) = _$_TransitOptions;

  factory _TransitOptions.fromJson(Map<String, dynamic> json) =
      _$_TransitOptions.fromJson;

  @override

  /// Specifies the desired time of arrival for transit directions.
  /// You can specify either `departureTime` or `arrivalTime`, but
  /// not both.
  @MillisecondsDatetimeNullableConverter()
  DateTime? get arrivalTime;
  @override

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
  @MillisecondsDatetimeNullableConverter()
  DateTime? get departureTime;
  @override

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
  List<TransitMode>? get modes;
  @override

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
  TransitRoutingPreference? get routingPreference;
  @override
  @JsonKey(ignore: true)
  _$$_TransitOptionsCopyWith<_$_TransitOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

DrivingOptions _$DrivingOptionsFromJson(Map<String, dynamic> json) {
  return _DrivingOptions.fromJson(json);
}

/// @nodoc
mixin _$DrivingOptions {
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
  @MillisecondsDatetimeNullableConverter()
  DateTime? get departureTime => throw _privateConstructorUsedError;

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
  TrafficModel? get trafficModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrivingOptionsCopyWith<DrivingOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrivingOptionsCopyWith<$Res> {
  factory $DrivingOptionsCopyWith(
          DrivingOptions value, $Res Function(DrivingOptions) then) =
      _$DrivingOptionsCopyWithImpl<$Res, DrivingOptions>;
  @useResult
  $Res call(
      {@MillisecondsDatetimeNullableConverter() DateTime? departureTime,
      TrafficModel? trafficModel});
}

/// @nodoc
class _$DrivingOptionsCopyWithImpl<$Res, $Val extends DrivingOptions>
    implements $DrivingOptionsCopyWith<$Res> {
  _$DrivingOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureTime = freezed,
    Object? trafficModel = freezed,
  }) {
    return _then(_value.copyWith(
      departureTime: freezed == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      trafficModel: freezed == trafficModel
          ? _value.trafficModel
          : trafficModel // ignore: cast_nullable_to_non_nullable
              as TrafficModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DrivingOptionsCopyWith<$Res>
    implements $DrivingOptionsCopyWith<$Res> {
  factory _$$_DrivingOptionsCopyWith(
          _$_DrivingOptions value, $Res Function(_$_DrivingOptions) then) =
      __$$_DrivingOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@MillisecondsDatetimeNullableConverter() DateTime? departureTime,
      TrafficModel? trafficModel});
}

/// @nodoc
class __$$_DrivingOptionsCopyWithImpl<$Res>
    extends _$DrivingOptionsCopyWithImpl<$Res, _$_DrivingOptions>
    implements _$$_DrivingOptionsCopyWith<$Res> {
  __$$_DrivingOptionsCopyWithImpl(
      _$_DrivingOptions _value, $Res Function(_$_DrivingOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureTime = freezed,
    Object? trafficModel = freezed,
  }) {
    return _then(_$_DrivingOptions(
      departureTime: freezed == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      trafficModel: freezed == trafficModel
          ? _value.trafficModel
          : trafficModel // ignore: cast_nullable_to_non_nullable
              as TrafficModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DrivingOptions implements _DrivingOptions {
  const _$_DrivingOptions(
      {@MillisecondsDatetimeNullableConverter() required this.departureTime,
      required this.trafficModel});

  factory _$_DrivingOptions.fromJson(Map<String, dynamic> json) =>
      _$$_DrivingOptionsFromJson(json);

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
  @override
  @MillisecondsDatetimeNullableConverter()
  final DateTime? departureTime;

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
  @override
  final TrafficModel? trafficModel;

  @override
  String toString() {
    return 'DrivingOptions(departureTime: $departureTime, trafficModel: $trafficModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrivingOptions &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.trafficModel, trafficModel) ||
                other.trafficModel == trafficModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, departureTime, trafficModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrivingOptionsCopyWith<_$_DrivingOptions> get copyWith =>
      __$$_DrivingOptionsCopyWithImpl<_$_DrivingOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DrivingOptionsToJson(
      this,
    );
  }
}

abstract class _DrivingOptions implements DrivingOptions {
  const factory _DrivingOptions(
      {@MillisecondsDatetimeNullableConverter()
          required final DateTime? departureTime,
      required final TrafficModel? trafficModel}) = _$_DrivingOptions;

  factory _DrivingOptions.fromJson(Map<String, dynamic> json) =
      _$_DrivingOptions.fromJson;

  @override

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
  @MillisecondsDatetimeNullableConverter()
  DateTime? get departureTime;
  @override

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
  TrafficModel? get trafficModel;
  @override
  @JsonKey(ignore: true)
  _$$_DrivingOptionsCopyWith<_$_DrivingOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

DirectionsResult _$DirectionsResultFromJson(Map<String, dynamic> json) {
  return _DirectionsResult.fromJson(json);
}

/// @nodoc
mixin _$DirectionsResult {
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
  List<DirectionsRoute>? get routes => throw _privateConstructorUsedError;

  /// Details about the geocoding of every waypoint, as well as origin
  /// and destination, can be found in the (JSON) geocoded_waypoints
  /// array. These can be used to infer why the service would return
  /// unexpected or no routes.
  ///
  /// Elements in the geocoded_waypoints array correspond, by their
  /// zero-based position, to the origin, the waypoints in the order
  /// they are specified, and the destination.
  List<GeocodedWaypoint>? get geocodedWaypoints =>
      throw _privateConstructorUsedError;

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
  DirectionsStatus? get status => throw _privateConstructorUsedError;

  /// When the status code is other than OK, there may be an additional
  /// `errorMessage` field within the Directions response object. This
  /// field contains more detailed information about the reasons behind
  /// the given status code.
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Contains an array of available travel modes. This field is returned
  /// when a request specifies a travel mode and gets no results. The array
  /// contains the available travel modes in the countries of the given set
  /// of waypoints. This field is not returned if one or more of the
  /// waypoints are via: waypoints. See details below.
  List<TravelMode>? get availableTravelModes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionsResultCopyWith<DirectionsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionsResultCopyWith<$Res> {
  factory $DirectionsResultCopyWith(
          DirectionsResult value, $Res Function(DirectionsResult) then) =
      _$DirectionsResultCopyWithImpl<$Res, DirectionsResult>;
  @useResult
  $Res call(
      {List<DirectionsRoute>? routes,
      List<GeocodedWaypoint>? geocodedWaypoints,
      DirectionsStatus? status,
      String? errorMessage,
      List<TravelMode>? availableTravelModes});
}

/// @nodoc
class _$DirectionsResultCopyWithImpl<$Res, $Val extends DirectionsResult>
    implements $DirectionsResultCopyWith<$Res> {
  _$DirectionsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routes = freezed,
    Object? geocodedWaypoints = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
    Object? availableTravelModes = freezed,
  }) {
    return _then(_value.copyWith(
      routes: freezed == routes
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<DirectionsRoute>?,
      geocodedWaypoints: freezed == geocodedWaypoints
          ? _value.geocodedWaypoints
          : geocodedWaypoints // ignore: cast_nullable_to_non_nullable
              as List<GeocodedWaypoint>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DirectionsStatus?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      availableTravelModes: freezed == availableTravelModes
          ? _value.availableTravelModes
          : availableTravelModes // ignore: cast_nullable_to_non_nullable
              as List<TravelMode>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DirectionsResultCopyWith<$Res>
    implements $DirectionsResultCopyWith<$Res> {
  factory _$$_DirectionsResultCopyWith(
          _$_DirectionsResult value, $Res Function(_$_DirectionsResult) then) =
      __$$_DirectionsResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DirectionsRoute>? routes,
      List<GeocodedWaypoint>? geocodedWaypoints,
      DirectionsStatus? status,
      String? errorMessage,
      List<TravelMode>? availableTravelModes});
}

/// @nodoc
class __$$_DirectionsResultCopyWithImpl<$Res>
    extends _$DirectionsResultCopyWithImpl<$Res, _$_DirectionsResult>
    implements _$$_DirectionsResultCopyWith<$Res> {
  __$$_DirectionsResultCopyWithImpl(
      _$_DirectionsResult _value, $Res Function(_$_DirectionsResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routes = freezed,
    Object? geocodedWaypoints = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
    Object? availableTravelModes = freezed,
  }) {
    return _then(_$_DirectionsResult(
      routes: freezed == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<DirectionsRoute>?,
      geocodedWaypoints: freezed == geocodedWaypoints
          ? _value._geocodedWaypoints
          : geocodedWaypoints // ignore: cast_nullable_to_non_nullable
              as List<GeocodedWaypoint>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DirectionsStatus?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      availableTravelModes: freezed == availableTravelModes
          ? _value._availableTravelModes
          : availableTravelModes // ignore: cast_nullable_to_non_nullable
              as List<TravelMode>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DirectionsResult implements _DirectionsResult {
  const _$_DirectionsResult(
      {final List<DirectionsRoute>? routes,
      final List<GeocodedWaypoint>? geocodedWaypoints,
      this.status,
      this.errorMessage,
      final List<TravelMode>? availableTravelModes})
      : _routes = routes,
        _geocodedWaypoints = geocodedWaypoints,
        _availableTravelModes = availableTravelModes;

  factory _$_DirectionsResult.fromJson(Map<String, dynamic> json) =>
      _$$_DirectionsResultFromJson(json);

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
  final List<DirectionsRoute>? _routes;

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
  @override
  List<DirectionsRoute>? get routes {
    final value = _routes;
    if (value == null) return null;
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Details about the geocoding of every waypoint, as well as origin
  /// and destination, can be found in the (JSON) geocoded_waypoints
  /// array. These can be used to infer why the service would return
  /// unexpected or no routes.
  ///
  /// Elements in the geocoded_waypoints array correspond, by their
  /// zero-based position, to the origin, the waypoints in the order
  /// they are specified, and the destination.
  final List<GeocodedWaypoint>? _geocodedWaypoints;

  /// Details about the geocoding of every waypoint, as well as origin
  /// and destination, can be found in the (JSON) geocoded_waypoints
  /// array. These can be used to infer why the service would return
  /// unexpected or no routes.
  ///
  /// Elements in the geocoded_waypoints array correspond, by their
  /// zero-based position, to the origin, the waypoints in the order
  /// they are specified, and the destination.
  @override
  List<GeocodedWaypoint>? get geocodedWaypoints {
    final value = _geocodedWaypoints;
    if (value == null) return null;
    if (_geocodedWaypoints is EqualUnmodifiableListView)
      return _geocodedWaypoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  @override
  final DirectionsStatus? status;

  /// When the status code is other than OK, there may be an additional
  /// `errorMessage` field within the Directions response object. This
  /// field contains more detailed information about the reasons behind
  /// the given status code.
  @override
  final String? errorMessage;

  /// Contains an array of available travel modes. This field is returned
  /// when a request specifies a travel mode and gets no results. The array
  /// contains the available travel modes in the countries of the given set
  /// of waypoints. This field is not returned if one or more of the
  /// waypoints are via: waypoints. See details below.
  final List<TravelMode>? _availableTravelModes;

  /// Contains an array of available travel modes. This field is returned
  /// when a request specifies a travel mode and gets no results. The array
  /// contains the available travel modes in the countries of the given set
  /// of waypoints. This field is not returned if one or more of the
  /// waypoints are via: waypoints. See details below.
  @override
  List<TravelMode>? get availableTravelModes {
    final value = _availableTravelModes;
    if (value == null) return null;
    if (_availableTravelModes is EqualUnmodifiableListView)
      return _availableTravelModes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DirectionsResult(routes: $routes, geocodedWaypoints: $geocodedWaypoints, status: $status, errorMessage: $errorMessage, availableTravelModes: $availableTravelModes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DirectionsResult &&
            const DeepCollectionEquality().equals(other._routes, _routes) &&
            const DeepCollectionEquality()
                .equals(other._geocodedWaypoints, _geocodedWaypoints) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._availableTravelModes, _availableTravelModes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_routes),
      const DeepCollectionEquality().hash(_geocodedWaypoints),
      status,
      errorMessage,
      const DeepCollectionEquality().hash(_availableTravelModes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DirectionsResultCopyWith<_$_DirectionsResult> get copyWith =>
      __$$_DirectionsResultCopyWithImpl<_$_DirectionsResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DirectionsResultToJson(
      this,
    );
  }
}

abstract class _DirectionsResult implements DirectionsResult {
  const factory _DirectionsResult(
      {final List<DirectionsRoute>? routes,
      final List<GeocodedWaypoint>? geocodedWaypoints,
      final DirectionsStatus? status,
      final String? errorMessage,
      final List<TravelMode>? availableTravelModes}) = _$_DirectionsResult;

  factory _DirectionsResult.fromJson(Map<String, dynamic> json) =
      _$_DirectionsResult.fromJson;

  @override

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
  List<DirectionsRoute>? get routes;
  @override

  /// Details about the geocoding of every waypoint, as well as origin
  /// and destination, can be found in the (JSON) geocoded_waypoints
  /// array. These can be used to infer why the service would return
  /// unexpected or no routes.
  ///
  /// Elements in the geocoded_waypoints array correspond, by their
  /// zero-based position, to the origin, the waypoints in the order
  /// they are specified, and the destination.
  List<GeocodedWaypoint>? get geocodedWaypoints;
  @override

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
  DirectionsStatus? get status;
  @override

  /// When the status code is other than OK, there may be an additional
  /// `errorMessage` field within the Directions response object. This
  /// field contains more detailed information about the reasons behind
  /// the given status code.
  String? get errorMessage;
  @override

  /// Contains an array of available travel modes. This field is returned
  /// when a request specifies a travel mode and gets no results. The array
  /// contains the available travel modes in the countries of the given set
  /// of waypoints. This field is not returned if one or more of the
  /// waypoints are via: waypoints. See details below.
  List<TravelMode>? get availableTravelModes;
  @override
  @JsonKey(ignore: true)
  _$$_DirectionsResultCopyWith<_$_DirectionsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

DirectionsRoute _$DirectionsRouteFromJson(Map<String, dynamic> json) {
  return _DirectionsRoute.fromJson(json);
}

/// @nodoc
mixin _$DirectionsRoute {
  /// Contains the viewport bounding box of the [overviewPolyline].
  GeoCoordBounds? get bounds => throw _privateConstructorUsedError;

  /// Contains the copyrights text to be displayed for this route.
  /// You must handle and display this information yourself.
  String? get copyrights => throw _privateConstructorUsedError;

  /// Contains an array which contains information about a
  /// leg of the route, between two locations within the given route.
  /// A separate leg will be present for each waypoint or destination
  /// specified. (A route with no waypoints will contain exactly one
  /// leg within the legs array.) Each leg consists of a series of
  /// steps. (See [DirectionsLeg].)
  List<DirectionsLeg>? get legs => throw _privateConstructorUsedError;

  /// Contains a single points object that holds an
  /// [encoded polyline][enc_polyline] representation of the route.
  /// This polyline is an approximate (smoothed) path of the resulting
  /// directions.
  ///
  /// [enc_polyline]: https://developers.google.com/maps/documentation/utilities/polylinealgorithm
  OverviewPolyline? get overviewPolyline => throw _privateConstructorUsedError;

  /// Contains a short textual description for the route, suitable for
  /// naming and disambiguating the route from alternatives.
  String? get summary => throw _privateConstructorUsedError;

  /// Contains an array of warnings to be displayed when showing these
  /// directions. You must handle and display these warnings yourself.
  List<String>? get warnings => throw _privateConstructorUsedError;

  /// Contains an array indicating the order of any waypoints in the
  /// calculated route. This waypoints may be reordered if the request
  /// was passed `optimize:true` within its waypoints parameter.
  List<num>? get waypointOrder => throw _privateConstructorUsedError;

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
  Fare? get fare => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionsRouteCopyWith<DirectionsRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionsRouteCopyWith<$Res> {
  factory $DirectionsRouteCopyWith(
          DirectionsRoute value, $Res Function(DirectionsRoute) then) =
      _$DirectionsRouteCopyWithImpl<$Res, DirectionsRoute>;
  @useResult
  $Res call(
      {GeoCoordBounds? bounds,
      String? copyrights,
      List<DirectionsLeg>? legs,
      OverviewPolyline? overviewPolyline,
      String? summary,
      List<String>? warnings,
      List<num>? waypointOrder,
      Fare? fare});

  $GeoCoordBoundsCopyWith<$Res>? get bounds;
  $OverviewPolylineCopyWith<$Res>? get overviewPolyline;
  $FareCopyWith<$Res>? get fare;
}

/// @nodoc
class _$DirectionsRouteCopyWithImpl<$Res, $Val extends DirectionsRoute>
    implements $DirectionsRouteCopyWith<$Res> {
  _$DirectionsRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bounds = freezed,
    Object? copyrights = freezed,
    Object? legs = freezed,
    Object? overviewPolyline = freezed,
    Object? summary = freezed,
    Object? warnings = freezed,
    Object? waypointOrder = freezed,
    Object? fare = freezed,
  }) {
    return _then(_value.copyWith(
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as GeoCoordBounds?,
      copyrights: freezed == copyrights
          ? _value.copyrights
          : copyrights // ignore: cast_nullable_to_non_nullable
              as String?,
      legs: freezed == legs
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as List<DirectionsLeg>?,
      overviewPolyline: freezed == overviewPolyline
          ? _value.overviewPolyline
          : overviewPolyline // ignore: cast_nullable_to_non_nullable
              as OverviewPolyline?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      warnings: freezed == warnings
          ? _value.warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      waypointOrder: freezed == waypointOrder
          ? _value.waypointOrder
          : waypointOrder // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      fare: freezed == fare
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as Fare?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoCoordBoundsCopyWith<$Res>? get bounds {
    if (_value.bounds == null) {
      return null;
    }

    return $GeoCoordBoundsCopyWith<$Res>(_value.bounds!, (value) {
      return _then(_value.copyWith(bounds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OverviewPolylineCopyWith<$Res>? get overviewPolyline {
    if (_value.overviewPolyline == null) {
      return null;
    }

    return $OverviewPolylineCopyWith<$Res>(_value.overviewPolyline!, (value) {
      return _then(_value.copyWith(overviewPolyline: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FareCopyWith<$Res>? get fare {
    if (_value.fare == null) {
      return null;
    }

    return $FareCopyWith<$Res>(_value.fare!, (value) {
      return _then(_value.copyWith(fare: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DirectionsRouteCopyWith<$Res>
    implements $DirectionsRouteCopyWith<$Res> {
  factory _$$_DirectionsRouteCopyWith(
          _$_DirectionsRoute value, $Res Function(_$_DirectionsRoute) then) =
      __$$_DirectionsRouteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GeoCoordBounds? bounds,
      String? copyrights,
      List<DirectionsLeg>? legs,
      OverviewPolyline? overviewPolyline,
      String? summary,
      List<String>? warnings,
      List<num>? waypointOrder,
      Fare? fare});

  @override
  $GeoCoordBoundsCopyWith<$Res>? get bounds;
  @override
  $OverviewPolylineCopyWith<$Res>? get overviewPolyline;
  @override
  $FareCopyWith<$Res>? get fare;
}

/// @nodoc
class __$$_DirectionsRouteCopyWithImpl<$Res>
    extends _$DirectionsRouteCopyWithImpl<$Res, _$_DirectionsRoute>
    implements _$$_DirectionsRouteCopyWith<$Res> {
  __$$_DirectionsRouteCopyWithImpl(
      _$_DirectionsRoute _value, $Res Function(_$_DirectionsRoute) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bounds = freezed,
    Object? copyrights = freezed,
    Object? legs = freezed,
    Object? overviewPolyline = freezed,
    Object? summary = freezed,
    Object? warnings = freezed,
    Object? waypointOrder = freezed,
    Object? fare = freezed,
  }) {
    return _then(_$_DirectionsRoute(
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as GeoCoordBounds?,
      copyrights: freezed == copyrights
          ? _value.copyrights
          : copyrights // ignore: cast_nullable_to_non_nullable
              as String?,
      legs: freezed == legs
          ? _value._legs
          : legs // ignore: cast_nullable_to_non_nullable
              as List<DirectionsLeg>?,
      overviewPolyline: freezed == overviewPolyline
          ? _value.overviewPolyline
          : overviewPolyline // ignore: cast_nullable_to_non_nullable
              as OverviewPolyline?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      warnings: freezed == warnings
          ? _value._warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      waypointOrder: freezed == waypointOrder
          ? _value._waypointOrder
          : waypointOrder // ignore: cast_nullable_to_non_nullable
              as List<num>?,
      fare: freezed == fare
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as Fare?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DirectionsRoute implements _DirectionsRoute {
  const _$_DirectionsRoute(
      {this.bounds,
      this.copyrights,
      final List<DirectionsLeg>? legs,
      this.overviewPolyline,
      this.summary,
      final List<String>? warnings,
      final List<num>? waypointOrder,
      this.fare})
      : _legs = legs,
        _warnings = warnings,
        _waypointOrder = waypointOrder;

  factory _$_DirectionsRoute.fromJson(Map<String, dynamic> json) =>
      _$$_DirectionsRouteFromJson(json);

  /// Contains the viewport bounding box of the [overviewPolyline].
  @override
  final GeoCoordBounds? bounds;

  /// Contains the copyrights text to be displayed for this route.
  /// You must handle and display this information yourself.
  @override
  final String? copyrights;

  /// Contains an array which contains information about a
  /// leg of the route, between two locations within the given route.
  /// A separate leg will be present for each waypoint or destination
  /// specified. (A route with no waypoints will contain exactly one
  /// leg within the legs array.) Each leg consists of a series of
  /// steps. (See [DirectionsLeg].)
  final List<DirectionsLeg>? _legs;

  /// Contains an array which contains information about a
  /// leg of the route, between two locations within the given route.
  /// A separate leg will be present for each waypoint or destination
  /// specified. (A route with no waypoints will contain exactly one
  /// leg within the legs array.) Each leg consists of a series of
  /// steps. (See [DirectionsLeg].)
  @override
  List<DirectionsLeg>? get legs {
    final value = _legs;
    if (value == null) return null;
    if (_legs is EqualUnmodifiableListView) return _legs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Contains a single points object that holds an
  /// [encoded polyline][enc_polyline] representation of the route.
  /// This polyline is an approximate (smoothed) path of the resulting
  /// directions.
  ///
  /// [enc_polyline]: https://developers.google.com/maps/documentation/utilities/polylinealgorithm
  @override
  final OverviewPolyline? overviewPolyline;

  /// Contains a short textual description for the route, suitable for
  /// naming and disambiguating the route from alternatives.
  @override
  final String? summary;

  /// Contains an array of warnings to be displayed when showing these
  /// directions. You must handle and display these warnings yourself.
  final List<String>? _warnings;

  /// Contains an array of warnings to be displayed when showing these
  /// directions. You must handle and display these warnings yourself.
  @override
  List<String>? get warnings {
    final value = _warnings;
    if (value == null) return null;
    if (_warnings is EqualUnmodifiableListView) return _warnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Contains an array indicating the order of any waypoints in the
  /// calculated route. This waypoints may be reordered if the request
  /// was passed `optimize:true` within its waypoints parameter.
  final List<num>? _waypointOrder;

  /// Contains an array indicating the order of any waypoints in the
  /// calculated route. This waypoints may be reordered if the request
  /// was passed `optimize:true` within its waypoints parameter.
  @override
  List<num>? get waypointOrder {
    final value = _waypointOrder;
    if (value == null) return null;
    if (_waypointOrder is EqualUnmodifiableListView) return _waypointOrder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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
  @override
  final Fare? fare;

  @override
  String toString() {
    return 'DirectionsRoute(bounds: $bounds, copyrights: $copyrights, legs: $legs, overviewPolyline: $overviewPolyline, summary: $summary, warnings: $warnings, waypointOrder: $waypointOrder, fare: $fare)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DirectionsRoute &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            (identical(other.copyrights, copyrights) ||
                other.copyrights == copyrights) &&
            const DeepCollectionEquality().equals(other._legs, _legs) &&
            (identical(other.overviewPolyline, overviewPolyline) ||
                other.overviewPolyline == overviewPolyline) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(other._warnings, _warnings) &&
            const DeepCollectionEquality()
                .equals(other._waypointOrder, _waypointOrder) &&
            (identical(other.fare, fare) || other.fare == fare));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bounds,
      copyrights,
      const DeepCollectionEquality().hash(_legs),
      overviewPolyline,
      summary,
      const DeepCollectionEquality().hash(_warnings),
      const DeepCollectionEquality().hash(_waypointOrder),
      fare);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DirectionsRouteCopyWith<_$_DirectionsRoute> get copyWith =>
      __$$_DirectionsRouteCopyWithImpl<_$_DirectionsRoute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DirectionsRouteToJson(
      this,
    );
  }
}

abstract class _DirectionsRoute implements DirectionsRoute {
  const factory _DirectionsRoute(
      {final GeoCoordBounds? bounds,
      final String? copyrights,
      final List<DirectionsLeg>? legs,
      final OverviewPolyline? overviewPolyline,
      final String? summary,
      final List<String>? warnings,
      final List<num>? waypointOrder,
      final Fare? fare}) = _$_DirectionsRoute;

  factory _DirectionsRoute.fromJson(Map<String, dynamic> json) =
      _$_DirectionsRoute.fromJson;

  @override

  /// Contains the viewport bounding box of the [overviewPolyline].
  GeoCoordBounds? get bounds;
  @override

  /// Contains the copyrights text to be displayed for this route.
  /// You must handle and display this information yourself.
  String? get copyrights;
  @override

  /// Contains an array which contains information about a
  /// leg of the route, between two locations within the given route.
  /// A separate leg will be present for each waypoint or destination
  /// specified. (A route with no waypoints will contain exactly one
  /// leg within the legs array.) Each leg consists of a series of
  /// steps. (See [DirectionsLeg].)
  List<DirectionsLeg>? get legs;
  @override

  /// Contains a single points object that holds an
  /// [encoded polyline][enc_polyline] representation of the route.
  /// This polyline is an approximate (smoothed) path of the resulting
  /// directions.
  ///
  /// [enc_polyline]: https://developers.google.com/maps/documentation/utilities/polylinealgorithm
  OverviewPolyline? get overviewPolyline;
  @override

  /// Contains a short textual description for the route, suitable for
  /// naming and disambiguating the route from alternatives.
  String? get summary;
  @override

  /// Contains an array of warnings to be displayed when showing these
  /// directions. You must handle and display these warnings yourself.
  List<String>? get warnings;
  @override

  /// Contains an array indicating the order of any waypoints in the
  /// calculated route. This waypoints may be reordered if the request
  /// was passed `optimize:true` within its waypoints parameter.
  List<num>? get waypointOrder;
  @override

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
  Fare? get fare;
  @override
  @JsonKey(ignore: true)
  _$$_DirectionsRouteCopyWith<_$_DirectionsRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

GeocodedWaypoint _$GeocodedWaypointFromJson(Map<String, dynamic> json) {
  return _GeocodedWaypoint.fromJson(json);
}

/// @nodoc
mixin _$GeocodedWaypoint {
  /// Indicates the status code resulting from the geocoding
  /// operation. This field may contain the following values.
  ///  * "OK" indicates that no errors occurred; the address was
  /// successfully parsed and at least one geocode was returned.
  ///  * "ZERO_RESULTS" indicates that the geocode was successful
  /// but returned no results. This may occur if the geocoder was
  /// passed a non-existent address.
  String? get geocoderStatus => throw _privateConstructorUsedError;

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
  bool? get partialMatch => throw _privateConstructorUsedError;

  /// Is a unique identifier that can be used with other
  /// Google APIs. For example, you can use the place_id from a
  /// [Google Place Autocomplete response][autocomplete_response]
  /// to calculate directions to a local business. See the
  /// [Place ID overview][place_id_overview].
  ///
  /// [autocomplete_response]: https://developers.google.com/places/web-service/autocomplete#place_autocomplete_responses
  /// [place_id_overview]: https://developers.google.com/places/place-id
  String? get placeId => throw _privateConstructorUsedError;

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
  List<String>? get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeocodedWaypointCopyWith<GeocodedWaypoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeocodedWaypointCopyWith<$Res> {
  factory $GeocodedWaypointCopyWith(
          GeocodedWaypoint value, $Res Function(GeocodedWaypoint) then) =
      _$GeocodedWaypointCopyWithImpl<$Res, GeocodedWaypoint>;
  @useResult
  $Res call(
      {String? geocoderStatus,
      bool? partialMatch,
      String? placeId,
      List<String>? types});
}

/// @nodoc
class _$GeocodedWaypointCopyWithImpl<$Res, $Val extends GeocodedWaypoint>
    implements $GeocodedWaypointCopyWith<$Res> {
  _$GeocodedWaypointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geocoderStatus = freezed,
    Object? partialMatch = freezed,
    Object? placeId = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      geocoderStatus: freezed == geocoderStatus
          ? _value.geocoderStatus
          : geocoderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      partialMatch: freezed == partialMatch
          ? _value.partialMatch
          : partialMatch // ignore: cast_nullable_to_non_nullable
              as bool?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeocodedWaypointCopyWith<$Res>
    implements $GeocodedWaypointCopyWith<$Res> {
  factory _$$_GeocodedWaypointCopyWith(
          _$_GeocodedWaypoint value, $Res Function(_$_GeocodedWaypoint) then) =
      __$$_GeocodedWaypointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? geocoderStatus,
      bool? partialMatch,
      String? placeId,
      List<String>? types});
}

/// @nodoc
class __$$_GeocodedWaypointCopyWithImpl<$Res>
    extends _$GeocodedWaypointCopyWithImpl<$Res, _$_GeocodedWaypoint>
    implements _$$_GeocodedWaypointCopyWith<$Res> {
  __$$_GeocodedWaypointCopyWithImpl(
      _$_GeocodedWaypoint _value, $Res Function(_$_GeocodedWaypoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geocoderStatus = freezed,
    Object? partialMatch = freezed,
    Object? placeId = freezed,
    Object? types = freezed,
  }) {
    return _then(_$_GeocodedWaypoint(
      geocoderStatus: freezed == geocoderStatus
          ? _value.geocoderStatus
          : geocoderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      partialMatch: freezed == partialMatch
          ? _value.partialMatch
          : partialMatch // ignore: cast_nullable_to_non_nullable
              as bool?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeocodedWaypoint implements _GeocodedWaypoint {
  const _$_GeocodedWaypoint(
      {this.geocoderStatus,
      this.partialMatch,
      this.placeId,
      required final List<String>? types})
      : _types = types;

  factory _$_GeocodedWaypoint.fromJson(Map<String, dynamic> json) =>
      _$$_GeocodedWaypointFromJson(json);

  /// Indicates the status code resulting from the geocoding
  /// operation. This field may contain the following values.
  ///  * "OK" indicates that no errors occurred; the address was
  /// successfully parsed and at least one geocode was returned.
  ///  * "ZERO_RESULTS" indicates that the geocode was successful
  /// but returned no results. This may occur if the geocoder was
  /// passed a non-existent address.
  @override
  final String? geocoderStatus;

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
  @override
  final bool? partialMatch;

  /// Is a unique identifier that can be used with other
  /// Google APIs. For example, you can use the place_id from a
  /// [Google Place Autocomplete response][autocomplete_response]
  /// to calculate directions to a local business. See the
  /// [Place ID overview][place_id_overview].
  ///
  /// [autocomplete_response]: https://developers.google.com/places/web-service/autocomplete#place_autocomplete_responses
  /// [place_id_overview]: https://developers.google.com/places/place-id
  @override
  final String? placeId;

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
  final List<String>? _types;

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
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GeocodedWaypoint(geocoderStatus: $geocoderStatus, partialMatch: $partialMatch, placeId: $placeId, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeocodedWaypoint &&
            (identical(other.geocoderStatus, geocoderStatus) ||
                other.geocoderStatus == geocoderStatus) &&
            (identical(other.partialMatch, partialMatch) ||
                other.partialMatch == partialMatch) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, geocoderStatus, partialMatch,
      placeId, const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeocodedWaypointCopyWith<_$_GeocodedWaypoint> get copyWith =>
      __$$_GeocodedWaypointCopyWithImpl<_$_GeocodedWaypoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeocodedWaypointToJson(
      this,
    );
  }
}

abstract class _GeocodedWaypoint implements GeocodedWaypoint {
  const factory _GeocodedWaypoint(
      {final String? geocoderStatus,
      final bool? partialMatch,
      final String? placeId,
      required final List<String>? types}) = _$_GeocodedWaypoint;

  factory _GeocodedWaypoint.fromJson(Map<String, dynamic> json) =
      _$_GeocodedWaypoint.fromJson;

  @override

  /// Indicates the status code resulting from the geocoding
  /// operation. This field may contain the following values.
  ///  * "OK" indicates that no errors occurred; the address was
  /// successfully parsed and at least one geocode was returned.
  ///  * "ZERO_RESULTS" indicates that the geocode was successful
  /// but returned no results. This may occur if the geocoder was
  /// passed a non-existent address.
  String? get geocoderStatus;
  @override

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
  bool? get partialMatch;
  @override

  /// Is a unique identifier that can be used with other
  /// Google APIs. For example, you can use the place_id from a
  /// [Google Place Autocomplete response][autocomplete_response]
  /// to calculate directions to a local business. See the
  /// [Place ID overview][place_id_overview].
  ///
  /// [autocomplete_response]: https://developers.google.com/places/web-service/autocomplete#place_autocomplete_responses
  /// [place_id_overview]: https://developers.google.com/places/place-id
  String? get placeId;
  @override

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
  List<String>? get types;
  @override
  @JsonKey(ignore: true)
  _$$_GeocodedWaypointCopyWith<_$_GeocodedWaypoint> get copyWith =>
      throw _privateConstructorUsedError;
}

DirectionsLeg _$DirectionsLegFromJson(Map<String, dynamic> json) {
  return _DirectionsLeg.fromJson(json);
}

/// @nodoc
mixin _$DirectionsLeg {
  /// Contains the estimated time of arrival for this leg. This property
  /// is only returned for transit directions. The result is returned as
  /// a [TimeZoneTextValue] object with three properties:
  ///   * `value` the time specified as a [DateTime] object.
  ///   * `text` the time specified as a string. The time is displayed
  /// in the time zone of the transit stop.
  ///   * `timeZone` contains the time zone of this station. The value
  /// is the name of the time zone as defined in the [IANA Time Zone
  /// Database][iana], e.g. `"America/New_York"`.
  TimeZoneTextValue? get arrivalTime => throw _privateConstructorUsedError;

  /// Contains the estimated time of departure for
  /// this leg, specified as a [TimeZoneTextValue] object. The departureTime
  /// is only available for transit directions.
  TimeZoneTextValue? get departureTime => throw _privateConstructorUsedError;

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
  TextValue? get distance => throw _privateConstructorUsedError;

  /// Indicates the total duration of this leg, as a field with
  /// the following elements:
  ///   * `value` indicates the duration in seconds.
  ///   * `text` contains a human-readable representation of the
  /// duration.
  ///
  /// These fields may be absent if the duration is unknown.
  TextValue? get duration => throw _privateConstructorUsedError;

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
  TextValue? get durationInTraffic => throw _privateConstructorUsedError;

  /// Contains the human-readable address (typically a street address)
  /// from reverse geocoding the `endLocation` of this leg.
  String? get endAddress => throw _privateConstructorUsedError;

  /// Contains the latitude/longitude coordinates of the given
  /// destination of this leg. Because the Directions API calculates
  /// directions between locations by using the nearest transportation
  /// option (usually a road) at the start and end points,
  /// `endLocation` may be different than the provided destination of
  /// this leg if, for example, a road is not near the destination.
  GeoCoord? get endLocation => throw _privateConstructorUsedError;

  /// Contains the human-readable address (typically a street address)
  /// resulting from reverse geocoding the `startLocation` of this leg.
  String? get startAddress => throw _privateConstructorUsedError;

  /// Contains the latitude/longitude coordinates of the origin of this
  /// leg. Because the Directions API calculates directions between
  /// locations by using the nearest transportation option (usually a
  /// road) at the start and end points, `startLocation` may be
  /// different than the provided origin of this leg if, for example,
  /// a road is not near the origin.
  GeoCoord? get startLocation => throw _privateConstructorUsedError;

  /// contains an array of steps denoting information about each
  /// separate step of the leg of the journey.
  List<DirectionsStep>? get steps => throw _privateConstructorUsedError;

  /// The locations of via waypoints along this leg.
  /// contains info about points through which the route was laid
  List<ViaWaypoint>? get viaWaypoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionsLegCopyWith<DirectionsLeg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionsLegCopyWith<$Res> {
  factory $DirectionsLegCopyWith(
          DirectionsLeg value, $Res Function(DirectionsLeg) then) =
      _$DirectionsLegCopyWithImpl<$Res, DirectionsLeg>;
  @useResult
  $Res call(
      {TimeZoneTextValue? arrivalTime,
      TimeZoneTextValue? departureTime,
      TextValue? distance,
      TextValue? duration,
      TextValue? durationInTraffic,
      String? endAddress,
      GeoCoord? endLocation,
      String? startAddress,
      GeoCoord? startLocation,
      List<DirectionsStep>? steps,
      List<ViaWaypoint>? viaWaypoint});

  $TimeZoneTextValueCopyWith<$Res>? get arrivalTime;
  $TimeZoneTextValueCopyWith<$Res>? get departureTime;
  $TextValueCopyWith<$Res>? get distance;
  $TextValueCopyWith<$Res>? get duration;
  $TextValueCopyWith<$Res>? get durationInTraffic;
  $GeoCoordCopyWith<$Res>? get endLocation;
  $GeoCoordCopyWith<$Res>? get startLocation;
}

/// @nodoc
class _$DirectionsLegCopyWithImpl<$Res, $Val extends DirectionsLeg>
    implements $DirectionsLegCopyWith<$Res> {
  _$DirectionsLegCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrivalTime = freezed,
    Object? departureTime = freezed,
    Object? distance = freezed,
    Object? duration = freezed,
    Object? durationInTraffic = freezed,
    Object? endAddress = freezed,
    Object? endLocation = freezed,
    Object? startAddress = freezed,
    Object? startLocation = freezed,
    Object? steps = freezed,
    Object? viaWaypoint = freezed,
  }) {
    return _then(_value.copyWith(
      arrivalTime: freezed == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as TimeZoneTextValue?,
      departureTime: freezed == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as TimeZoneTextValue?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as TextValue?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as TextValue?,
      durationInTraffic: freezed == durationInTraffic
          ? _value.durationInTraffic
          : durationInTraffic // ignore: cast_nullable_to_non_nullable
              as TextValue?,
      endAddress: freezed == endAddress
          ? _value.endAddress
          : endAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      endLocation: freezed == endLocation
          ? _value.endLocation
          : endLocation // ignore: cast_nullable_to_non_nullable
              as GeoCoord?,
      startAddress: freezed == startAddress
          ? _value.startAddress
          : startAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      startLocation: freezed == startLocation
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as GeoCoord?,
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<DirectionsStep>?,
      viaWaypoint: freezed == viaWaypoint
          ? _value.viaWaypoint
          : viaWaypoint // ignore: cast_nullable_to_non_nullable
              as List<ViaWaypoint>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeZoneTextValueCopyWith<$Res>? get arrivalTime {
    if (_value.arrivalTime == null) {
      return null;
    }

    return $TimeZoneTextValueCopyWith<$Res>(_value.arrivalTime!, (value) {
      return _then(_value.copyWith(arrivalTime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeZoneTextValueCopyWith<$Res>? get departureTime {
    if (_value.departureTime == null) {
      return null;
    }

    return $TimeZoneTextValueCopyWith<$Res>(_value.departureTime!, (value) {
      return _then(_value.copyWith(departureTime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TextValueCopyWith<$Res>? get distance {
    if (_value.distance == null) {
      return null;
    }

    return $TextValueCopyWith<$Res>(_value.distance!, (value) {
      return _then(_value.copyWith(distance: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TextValueCopyWith<$Res>? get duration {
    if (_value.duration == null) {
      return null;
    }

    return $TextValueCopyWith<$Res>(_value.duration!, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TextValueCopyWith<$Res>? get durationInTraffic {
    if (_value.durationInTraffic == null) {
      return null;
    }

    return $TextValueCopyWith<$Res>(_value.durationInTraffic!, (value) {
      return _then(_value.copyWith(durationInTraffic: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoCoordCopyWith<$Res>? get endLocation {
    if (_value.endLocation == null) {
      return null;
    }

    return $GeoCoordCopyWith<$Res>(_value.endLocation!, (value) {
      return _then(_value.copyWith(endLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoCoordCopyWith<$Res>? get startLocation {
    if (_value.startLocation == null) {
      return null;
    }

    return $GeoCoordCopyWith<$Res>(_value.startLocation!, (value) {
      return _then(_value.copyWith(startLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DirectionsLegCopyWith<$Res>
    implements $DirectionsLegCopyWith<$Res> {
  factory _$$_DirectionsLegCopyWith(
          _$_DirectionsLeg value, $Res Function(_$_DirectionsLeg) then) =
      __$$_DirectionsLegCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TimeZoneTextValue? arrivalTime,
      TimeZoneTextValue? departureTime,
      TextValue? distance,
      TextValue? duration,
      TextValue? durationInTraffic,
      String? endAddress,
      GeoCoord? endLocation,
      String? startAddress,
      GeoCoord? startLocation,
      List<DirectionsStep>? steps,
      List<ViaWaypoint>? viaWaypoint});

  @override
  $TimeZoneTextValueCopyWith<$Res>? get arrivalTime;
  @override
  $TimeZoneTextValueCopyWith<$Res>? get departureTime;
  @override
  $TextValueCopyWith<$Res>? get distance;
  @override
  $TextValueCopyWith<$Res>? get duration;
  @override
  $TextValueCopyWith<$Res>? get durationInTraffic;
  @override
  $GeoCoordCopyWith<$Res>? get endLocation;
  @override
  $GeoCoordCopyWith<$Res>? get startLocation;
}

/// @nodoc
class __$$_DirectionsLegCopyWithImpl<$Res>
    extends _$DirectionsLegCopyWithImpl<$Res, _$_DirectionsLeg>
    implements _$$_DirectionsLegCopyWith<$Res> {
  __$$_DirectionsLegCopyWithImpl(
      _$_DirectionsLeg _value, $Res Function(_$_DirectionsLeg) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrivalTime = freezed,
    Object? departureTime = freezed,
    Object? distance = freezed,
    Object? duration = freezed,
    Object? durationInTraffic = freezed,
    Object? endAddress = freezed,
    Object? endLocation = freezed,
    Object? startAddress = freezed,
    Object? startLocation = freezed,
    Object? steps = freezed,
    Object? viaWaypoint = freezed,
  }) {
    return _then(_$_DirectionsLeg(
      arrivalTime: freezed == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as TimeZoneTextValue?,
      departureTime: freezed == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as TimeZoneTextValue?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as TextValue?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as TextValue?,
      durationInTraffic: freezed == durationInTraffic
          ? _value.durationInTraffic
          : durationInTraffic // ignore: cast_nullable_to_non_nullable
              as TextValue?,
      endAddress: freezed == endAddress
          ? _value.endAddress
          : endAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      endLocation: freezed == endLocation
          ? _value.endLocation
          : endLocation // ignore: cast_nullable_to_non_nullable
              as GeoCoord?,
      startAddress: freezed == startAddress
          ? _value.startAddress
          : startAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      startLocation: freezed == startLocation
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as GeoCoord?,
      steps: freezed == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<DirectionsStep>?,
      viaWaypoint: freezed == viaWaypoint
          ? _value._viaWaypoint
          : viaWaypoint // ignore: cast_nullable_to_non_nullable
              as List<ViaWaypoint>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DirectionsLeg implements _DirectionsLeg {
  const _$_DirectionsLeg(
      {this.arrivalTime,
      this.departureTime,
      this.distance,
      this.duration,
      this.durationInTraffic,
      this.endAddress,
      this.endLocation,
      this.startAddress,
      this.startLocation,
      final List<DirectionsStep>? steps,
      final List<ViaWaypoint>? viaWaypoint})
      : _steps = steps,
        _viaWaypoint = viaWaypoint;

  factory _$_DirectionsLeg.fromJson(Map<String, dynamic> json) =>
      _$$_DirectionsLegFromJson(json);

  /// Contains the estimated time of arrival for this leg. This property
  /// is only returned for transit directions. The result is returned as
  /// a [TimeZoneTextValue] object with three properties:
  ///   * `value` the time specified as a [DateTime] object.
  ///   * `text` the time specified as a string. The time is displayed
  /// in the time zone of the transit stop.
  ///   * `timeZone` contains the time zone of this station. The value
  /// is the name of the time zone as defined in the [IANA Time Zone
  /// Database][iana], e.g. `"America/New_York"`.
  @override
  final TimeZoneTextValue? arrivalTime;

  /// Contains the estimated time of departure for
  /// this leg, specified as a [TimeZoneTextValue] object. The departureTime
  /// is only available for transit directions.
  @override
  final TimeZoneTextValue? departureTime;

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
  @override
  final TextValue? distance;

  /// Indicates the total duration of this leg, as a field with
  /// the following elements:
  ///   * `value` indicates the duration in seconds.
  ///   * `text` contains a human-readable representation of the
  /// duration.
  ///
  /// These fields may be absent if the duration is unknown.
  @override
  final TextValue? duration;

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
  @override
  final TextValue? durationInTraffic;

  /// Contains the human-readable address (typically a street address)
  /// from reverse geocoding the `endLocation` of this leg.
  @override
  final String? endAddress;

  /// Contains the latitude/longitude coordinates of the given
  /// destination of this leg. Because the Directions API calculates
  /// directions between locations by using the nearest transportation
  /// option (usually a road) at the start and end points,
  /// `endLocation` may be different than the provided destination of
  /// this leg if, for example, a road is not near the destination.
  @override
  final GeoCoord? endLocation;

  /// Contains the human-readable address (typically a street address)
  /// resulting from reverse geocoding the `startLocation` of this leg.
  @override
  final String? startAddress;

  /// Contains the latitude/longitude coordinates of the origin of this
  /// leg. Because the Directions API calculates directions between
  /// locations by using the nearest transportation option (usually a
  /// road) at the start and end points, `startLocation` may be
  /// different than the provided origin of this leg if, for example,
  /// a road is not near the origin.
  @override
  final GeoCoord? startLocation;

  /// contains an array of steps denoting information about each
  /// separate step of the leg of the journey.
  final List<DirectionsStep>? _steps;

  /// contains an array of steps denoting information about each
  /// separate step of the leg of the journey.
  @override
  List<DirectionsStep>? get steps {
    final value = _steps;
    if (value == null) return null;
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The locations of via waypoints along this leg.
  /// contains info about points through which the route was laid
  final List<ViaWaypoint>? _viaWaypoint;

  /// The locations of via waypoints along this leg.
  /// contains info about points through which the route was laid
  @override
  List<ViaWaypoint>? get viaWaypoint {
    final value = _viaWaypoint;
    if (value == null) return null;
    if (_viaWaypoint is EqualUnmodifiableListView) return _viaWaypoint;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DirectionsLeg(arrivalTime: $arrivalTime, departureTime: $departureTime, distance: $distance, duration: $duration, durationInTraffic: $durationInTraffic, endAddress: $endAddress, endLocation: $endLocation, startAddress: $startAddress, startLocation: $startLocation, steps: $steps, viaWaypoint: $viaWaypoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DirectionsLeg &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.durationInTraffic, durationInTraffic) ||
                other.durationInTraffic == durationInTraffic) &&
            (identical(other.endAddress, endAddress) ||
                other.endAddress == endAddress) &&
            (identical(other.endLocation, endLocation) ||
                other.endLocation == endLocation) &&
            (identical(other.startAddress, startAddress) ||
                other.startAddress == startAddress) &&
            (identical(other.startLocation, startLocation) ||
                other.startLocation == startLocation) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            const DeepCollectionEquality()
                .equals(other._viaWaypoint, _viaWaypoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      arrivalTime,
      departureTime,
      distance,
      duration,
      durationInTraffic,
      endAddress,
      endLocation,
      startAddress,
      startLocation,
      const DeepCollectionEquality().hash(_steps),
      const DeepCollectionEquality().hash(_viaWaypoint));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DirectionsLegCopyWith<_$_DirectionsLeg> get copyWith =>
      __$$_DirectionsLegCopyWithImpl<_$_DirectionsLeg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DirectionsLegToJson(
      this,
    );
  }
}

abstract class _DirectionsLeg implements DirectionsLeg {
  const factory _DirectionsLeg(
      {final TimeZoneTextValue? arrivalTime,
      final TimeZoneTextValue? departureTime,
      final TextValue? distance,
      final TextValue? duration,
      final TextValue? durationInTraffic,
      final String? endAddress,
      final GeoCoord? endLocation,
      final String? startAddress,
      final GeoCoord? startLocation,
      final List<DirectionsStep>? steps,
      final List<ViaWaypoint>? viaWaypoint}) = _$_DirectionsLeg;

  factory _DirectionsLeg.fromJson(Map<String, dynamic> json) =
      _$_DirectionsLeg.fromJson;

  @override

  /// Contains the estimated time of arrival for this leg. This property
  /// is only returned for transit directions. The result is returned as
  /// a [TimeZoneTextValue] object with three properties:
  ///   * `value` the time specified as a [DateTime] object.
  ///   * `text` the time specified as a string. The time is displayed
  /// in the time zone of the transit stop.
  ///   * `timeZone` contains the time zone of this station. The value
  /// is the name of the time zone as defined in the [IANA Time Zone
  /// Database][iana], e.g. `"America/New_York"`.
  TimeZoneTextValue? get arrivalTime;
  @override

  /// Contains the estimated time of departure for
  /// this leg, specified as a [TimeZoneTextValue] object. The departureTime
  /// is only available for transit directions.
  TimeZoneTextValue? get departureTime;
  @override

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
  TextValue? get distance;
  @override

  /// Indicates the total duration of this leg, as a field with
  /// the following elements:
  ///   * `value` indicates the duration in seconds.
  ///   * `text` contains a human-readable representation of the
  /// duration.
  ///
  /// These fields may be absent if the duration is unknown.
  TextValue? get duration;
  @override

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
  TextValue? get durationInTraffic;
  @override

  /// Contains the human-readable address (typically a street address)
  /// from reverse geocoding the `endLocation` of this leg.
  String? get endAddress;
  @override

  /// Contains the latitude/longitude coordinates of the given
  /// destination of this leg. Because the Directions API calculates
  /// directions between locations by using the nearest transportation
  /// option (usually a road) at the start and end points,
  /// `endLocation` may be different than the provided destination of
  /// this leg if, for example, a road is not near the destination.
  GeoCoord? get endLocation;
  @override

  /// Contains the human-readable address (typically a street address)
  /// resulting from reverse geocoding the `startLocation` of this leg.
  String? get startAddress;
  @override

  /// Contains the latitude/longitude coordinates of the origin of this
  /// leg. Because the Directions API calculates directions between
  /// locations by using the nearest transportation option (usually a
  /// road) at the start and end points, `startLocation` may be
  /// different than the provided origin of this leg if, for example,
  /// a road is not near the origin.
  GeoCoord? get startLocation;
  @override

  /// contains an array of steps denoting information about each
  /// separate step of the leg of the journey.
  List<DirectionsStep>? get steps;
  @override

  /// The locations of via waypoints along this leg.
  /// contains info about points through which the route was laid
  List<ViaWaypoint>? get viaWaypoint;
  @override
  @JsonKey(ignore: true)
  _$$_DirectionsLegCopyWith<_$_DirectionsLeg> get copyWith =>
      throw _privateConstructorUsedError;
}

DirectionsStep _$DirectionsStepFromJson(Map<String, dynamic> json) {
  return _DirectionsStep.fromJson(json);
}

/// @nodoc
mixin _$DirectionsStep {
  /// Contains the distance covered by this step until the next
  /// step. This field may be undefined if the distance is unknown.
  TextValue? get distance => throw _privateConstructorUsedError;

  /// Contains the typical time required to perform the step,
  /// until the next step. This field may be undefined if the
  /// duration is unknown.
  TextValue? get duration => throw _privateConstructorUsedError;

  /// Contains the location of the last point of this step, as a
  /// single set of lat and lng fields.
  GeoCoord? get endLocation => throw _privateConstructorUsedError;

  /// Contains the location of the starting point of this step, as
  /// a single set of lat and lng fields.
  GeoCoord? get startLocation => throw _privateConstructorUsedError;

  /// Contains formatted instructions for this step,
  /// presented as a text string. (Corresponds to instructions in
  /// the [Directions.Step interface][directions_step_interface].)
  @JsonKey(name: 'html_instructions')
  String? get instructions => throw _privateConstructorUsedError;

  /// Contains detailed directions for walking or driving
  /// steps in transit directions. Substeps are only available when
  /// travelMode is set to "transit". The inner steps array is of
  /// the same type as steps.
  List<DirectionsStep>? get steps => throw _privateConstructorUsedError;

  /// Contains transit specific information.
  /// This field is only returned with `travelMode` is set to
  /// "transit". See Transit Details below. (Corresponds to transit
  /// in the [Directions.Step interface][directions_step_interface].)
  TransitDetails? get transit => throw _privateConstructorUsedError;

  /// Contains the type of travel mode used.
  @JsonKey(name: 'transit_details')
  TravelMode? get travelMode => throw _privateConstructorUsedError;

  /// Contains a points describing the course of this step.
  OverviewPolyline? get polyline => throw _privateConstructorUsedError;

  /// Contains the action to take for the current step (turn left, merge,
  /// straight, etc.).
  String? get maneuver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionsStepCopyWith<DirectionsStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionsStepCopyWith<$Res> {
  factory $DirectionsStepCopyWith(
          DirectionsStep value, $Res Function(DirectionsStep) then) =
      _$DirectionsStepCopyWithImpl<$Res, DirectionsStep>;
  @useResult
  $Res call(
      {TextValue? distance,
      TextValue? duration,
      GeoCoord? endLocation,
      GeoCoord? startLocation,
      @JsonKey(name: 'html_instructions') String? instructions,
      List<DirectionsStep>? steps,
      TransitDetails? transit,
      @JsonKey(name: 'transit_details') TravelMode? travelMode,
      OverviewPolyline? polyline,
      String? maneuver});

  $TextValueCopyWith<$Res>? get distance;
  $TextValueCopyWith<$Res>? get duration;
  $GeoCoordCopyWith<$Res>? get endLocation;
  $GeoCoordCopyWith<$Res>? get startLocation;
  $TransitDetailsCopyWith<$Res>? get transit;
  $OverviewPolylineCopyWith<$Res>? get polyline;
}

/// @nodoc
class _$DirectionsStepCopyWithImpl<$Res, $Val extends DirectionsStep>
    implements $DirectionsStepCopyWith<$Res> {
  _$DirectionsStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? endLocation = freezed,
    Object? startLocation = freezed,
    Object? instructions = freezed,
    Object? steps = freezed,
    Object? transit = freezed,
    Object? travelMode = freezed,
    Object? polyline = freezed,
    Object? maneuver = freezed,
  }) {
    return _then(_value.copyWith(
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as TextValue?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as TextValue?,
      endLocation: freezed == endLocation
          ? _value.endLocation
          : endLocation // ignore: cast_nullable_to_non_nullable
              as GeoCoord?,
      startLocation: freezed == startLocation
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as GeoCoord?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<DirectionsStep>?,
      transit: freezed == transit
          ? _value.transit
          : transit // ignore: cast_nullable_to_non_nullable
              as TransitDetails?,
      travelMode: freezed == travelMode
          ? _value.travelMode
          : travelMode // ignore: cast_nullable_to_non_nullable
              as TravelMode?,
      polyline: freezed == polyline
          ? _value.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as OverviewPolyline?,
      maneuver: freezed == maneuver
          ? _value.maneuver
          : maneuver // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TextValueCopyWith<$Res>? get distance {
    if (_value.distance == null) {
      return null;
    }

    return $TextValueCopyWith<$Res>(_value.distance!, (value) {
      return _then(_value.copyWith(distance: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TextValueCopyWith<$Res>? get duration {
    if (_value.duration == null) {
      return null;
    }

    return $TextValueCopyWith<$Res>(_value.duration!, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoCoordCopyWith<$Res>? get endLocation {
    if (_value.endLocation == null) {
      return null;
    }

    return $GeoCoordCopyWith<$Res>(_value.endLocation!, (value) {
      return _then(_value.copyWith(endLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoCoordCopyWith<$Res>? get startLocation {
    if (_value.startLocation == null) {
      return null;
    }

    return $GeoCoordCopyWith<$Res>(_value.startLocation!, (value) {
      return _then(_value.copyWith(startLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TransitDetailsCopyWith<$Res>? get transit {
    if (_value.transit == null) {
      return null;
    }

    return $TransitDetailsCopyWith<$Res>(_value.transit!, (value) {
      return _then(_value.copyWith(transit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OverviewPolylineCopyWith<$Res>? get polyline {
    if (_value.polyline == null) {
      return null;
    }

    return $OverviewPolylineCopyWith<$Res>(_value.polyline!, (value) {
      return _then(_value.copyWith(polyline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DirectionsStepCopyWith<$Res>
    implements $DirectionsStepCopyWith<$Res> {
  factory _$$_DirectionsStepCopyWith(
          _$_DirectionsStep value, $Res Function(_$_DirectionsStep) then) =
      __$$_DirectionsStepCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextValue? distance,
      TextValue? duration,
      GeoCoord? endLocation,
      GeoCoord? startLocation,
      @JsonKey(name: 'html_instructions') String? instructions,
      List<DirectionsStep>? steps,
      TransitDetails? transit,
      @JsonKey(name: 'transit_details') TravelMode? travelMode,
      OverviewPolyline? polyline,
      String? maneuver});

  @override
  $TextValueCopyWith<$Res>? get distance;
  @override
  $TextValueCopyWith<$Res>? get duration;
  @override
  $GeoCoordCopyWith<$Res>? get endLocation;
  @override
  $GeoCoordCopyWith<$Res>? get startLocation;
  @override
  $TransitDetailsCopyWith<$Res>? get transit;
  @override
  $OverviewPolylineCopyWith<$Res>? get polyline;
}

/// @nodoc
class __$$_DirectionsStepCopyWithImpl<$Res>
    extends _$DirectionsStepCopyWithImpl<$Res, _$_DirectionsStep>
    implements _$$_DirectionsStepCopyWith<$Res> {
  __$$_DirectionsStepCopyWithImpl(
      _$_DirectionsStep _value, $Res Function(_$_DirectionsStep) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? endLocation = freezed,
    Object? startLocation = freezed,
    Object? instructions = freezed,
    Object? steps = freezed,
    Object? transit = freezed,
    Object? travelMode = freezed,
    Object? polyline = freezed,
    Object? maneuver = freezed,
  }) {
    return _then(_$_DirectionsStep(
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as TextValue?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as TextValue?,
      endLocation: freezed == endLocation
          ? _value.endLocation
          : endLocation // ignore: cast_nullable_to_non_nullable
              as GeoCoord?,
      startLocation: freezed == startLocation
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as GeoCoord?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      steps: freezed == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<DirectionsStep>?,
      transit: freezed == transit
          ? _value.transit
          : transit // ignore: cast_nullable_to_non_nullable
              as TransitDetails?,
      travelMode: freezed == travelMode
          ? _value.travelMode
          : travelMode // ignore: cast_nullable_to_non_nullable
              as TravelMode?,
      polyline: freezed == polyline
          ? _value.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as OverviewPolyline?,
      maneuver: freezed == maneuver
          ? _value.maneuver
          : maneuver // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DirectionsStep implements _DirectionsStep {
  const _$_DirectionsStep(
      {this.distance,
      this.duration,
      this.endLocation,
      this.startLocation,
      @JsonKey(name: 'html_instructions') this.instructions,
      final List<DirectionsStep>? steps,
      this.transit,
      @JsonKey(name: 'transit_details') this.travelMode,
      this.polyline,
      this.maneuver})
      : _steps = steps;

  factory _$_DirectionsStep.fromJson(Map<String, dynamic> json) =>
      _$$_DirectionsStepFromJson(json);

  /// Contains the distance covered by this step until the next
  /// step. This field may be undefined if the distance is unknown.
  @override
  final TextValue? distance;

  /// Contains the typical time required to perform the step,
  /// until the next step. This field may be undefined if the
  /// duration is unknown.
  @override
  final TextValue? duration;

  /// Contains the location of the last point of this step, as a
  /// single set of lat and lng fields.
  @override
  final GeoCoord? endLocation;

  /// Contains the location of the starting point of this step, as
  /// a single set of lat and lng fields.
  @override
  final GeoCoord? startLocation;

  /// Contains formatted instructions for this step,
  /// presented as a text string. (Corresponds to instructions in
  /// the [Directions.Step interface][directions_step_interface].)
  @override
  @JsonKey(name: 'html_instructions')
  final String? instructions;

  /// Contains detailed directions for walking or driving
  /// steps in transit directions. Substeps are only available when
  /// travelMode is set to "transit". The inner steps array is of
  /// the same type as steps.
  final List<DirectionsStep>? _steps;

  /// Contains detailed directions for walking or driving
  /// steps in transit directions. Substeps are only available when
  /// travelMode is set to "transit". The inner steps array is of
  /// the same type as steps.
  @override
  List<DirectionsStep>? get steps {
    final value = _steps;
    if (value == null) return null;
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Contains transit specific information.
  /// This field is only returned with `travelMode` is set to
  /// "transit". See Transit Details below. (Corresponds to transit
  /// in the [Directions.Step interface][directions_step_interface].)
  @override
  final TransitDetails? transit;

  /// Contains the type of travel mode used.
  @override
  @JsonKey(name: 'transit_details')
  final TravelMode? travelMode;

  /// Contains a points describing the course of this step.
  @override
  final OverviewPolyline? polyline;

  /// Contains the action to take for the current step (turn left, merge,
  /// straight, etc.).
  @override
  final String? maneuver;

  @override
  String toString() {
    return 'DirectionsStep(distance: $distance, duration: $duration, endLocation: $endLocation, startLocation: $startLocation, instructions: $instructions, steps: $steps, transit: $transit, travelMode: $travelMode, polyline: $polyline, maneuver: $maneuver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DirectionsStep &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.endLocation, endLocation) ||
                other.endLocation == endLocation) &&
            (identical(other.startLocation, startLocation) ||
                other.startLocation == startLocation) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.transit, transit) || other.transit == transit) &&
            (identical(other.travelMode, travelMode) ||
                other.travelMode == travelMode) &&
            (identical(other.polyline, polyline) ||
                other.polyline == polyline) &&
            (identical(other.maneuver, maneuver) ||
                other.maneuver == maneuver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      distance,
      duration,
      endLocation,
      startLocation,
      instructions,
      const DeepCollectionEquality().hash(_steps),
      transit,
      travelMode,
      polyline,
      maneuver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DirectionsStepCopyWith<_$_DirectionsStep> get copyWith =>
      __$$_DirectionsStepCopyWithImpl<_$_DirectionsStep>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DirectionsStepToJson(
      this,
    );
  }
}

abstract class _DirectionsStep implements DirectionsStep {
  const factory _DirectionsStep(
      {final TextValue? distance,
      final TextValue? duration,
      final GeoCoord? endLocation,
      final GeoCoord? startLocation,
      @JsonKey(name: 'html_instructions') final String? instructions,
      final List<DirectionsStep>? steps,
      final TransitDetails? transit,
      @JsonKey(name: 'transit_details') final TravelMode? travelMode,
      final OverviewPolyline? polyline,
      final String? maneuver}) = _$_DirectionsStep;

  factory _DirectionsStep.fromJson(Map<String, dynamic> json) =
      _$_DirectionsStep.fromJson;

  @override

  /// Contains the distance covered by this step until the next
  /// step. This field may be undefined if the distance is unknown.
  TextValue? get distance;
  @override

  /// Contains the typical time required to perform the step,
  /// until the next step. This field may be undefined if the
  /// duration is unknown.
  TextValue? get duration;
  @override

  /// Contains the location of the last point of this step, as a
  /// single set of lat and lng fields.
  GeoCoord? get endLocation;
  @override

  /// Contains the location of the starting point of this step, as
  /// a single set of lat and lng fields.
  GeoCoord? get startLocation;
  @override

  /// Contains formatted instructions for this step,
  /// presented as a text string. (Corresponds to instructions in
  /// the [Directions.Step interface][directions_step_interface].)
  @JsonKey(name: 'html_instructions')
  String? get instructions;
  @override

  /// Contains detailed directions for walking or driving
  /// steps in transit directions. Substeps are only available when
  /// travelMode is set to "transit". The inner steps array is of
  /// the same type as steps.
  List<DirectionsStep>? get steps;
  @override

  /// Contains transit specific information.
  /// This field is only returned with `travelMode` is set to
  /// "transit". See Transit Details below. (Corresponds to transit
  /// in the [Directions.Step interface][directions_step_interface].)
  TransitDetails? get transit;
  @override

  /// Contains the type of travel mode used.
  @JsonKey(name: 'transit_details')
  TravelMode? get travelMode;
  @override

  /// Contains a points describing the course of this step.
  OverviewPolyline? get polyline;
  @override

  /// Contains the action to take for the current step (turn left, merge,
  /// straight, etc.).
  String? get maneuver;
  @override
  @JsonKey(ignore: true)
  _$$_DirectionsStepCopyWith<_$_DirectionsStep> get copyWith =>
      throw _privateConstructorUsedError;
}

TransitDetails _$TransitDetailsFromJson(Map<String, dynamic> json) {
  return _TransitDetails.fromJson(json);
}

/// @nodoc
mixin _$TransitDetails {
  /// Contains information about the stop/station for this part of
  /// the trip. Stop details can include:
  ///   * `name` the name of the transit station/stop. eg. "Union
  /// Square".
  ///   * `location` the location of the transit station/stop,
  /// represented as a lat and lng field.
  TransitStop? get arrivalStop => throw _privateConstructorUsedError;

  /// Contains information about the stop/station for this part of
  /// the trip. Stop details can include:
  ///   * `name` the name of the transit station/stop. eg. "Union
  /// Square".
  ///   * `location` the location of the transit station/stop,
  /// represented as a lat and lng field.
  TransitStop? get departureStop => throw _privateConstructorUsedError;

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
  TimeZoneTextValue? get arrivalTime => throw _privateConstructorUsedError;

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
  TimeZoneTextValue? get departureTime => throw _privateConstructorUsedError;

  /// Specifies the direction in which to travel on this line,
  /// as it is marked on the vehicle or at the departure stop.
  /// This will often be the terminus station.
  String? get headsign => throw _privateConstructorUsedError;

  /// Specifies the expected number of seconds between departures
  /// from the same stop at this time. For example, with a
  /// headway value of 600, you would expect a ten minute wait if
  /// you should miss your bus.
  num? get headway => throw _privateConstructorUsedError;

  /// Contains information about the transit line used in this step.
  TransitLine? get line => throw _privateConstructorUsedError;

  /// Contains the number of stops in this step, counting the
  /// arrival stop, but not the departure stop. For example,
  /// if your directions involve leaving from Stop A, passing
  /// through stops B and C, and arriving at stop D, `numStops`
  /// will return 3.
  num? get numStops => throw _privateConstructorUsedError;

  /// Contains the text that appears in schedules and sign boards
  /// to identify a transit trip to passengers. The text should
  /// uniquely identify a trip within a service day. For example,
  /// "538" is the `tripShortName` of the Amtrak train that leaves
  ///  San Jose, CA at 15:10 on weekdays to Sacramento, CA.
  String? get tripShortName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransitDetailsCopyWith<TransitDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransitDetailsCopyWith<$Res> {
  factory $TransitDetailsCopyWith(
          TransitDetails value, $Res Function(TransitDetails) then) =
      _$TransitDetailsCopyWithImpl<$Res, TransitDetails>;
  @useResult
  $Res call(
      {TransitStop? arrivalStop,
      TransitStop? departureStop,
      TimeZoneTextValue? arrivalTime,
      TimeZoneTextValue? departureTime,
      String? headsign,
      num? headway,
      TransitLine? line,
      num? numStops,
      String? tripShortName});

  $TransitStopCopyWith<$Res>? get arrivalStop;
  $TransitStopCopyWith<$Res>? get departureStop;
  $TimeZoneTextValueCopyWith<$Res>? get arrivalTime;
  $TimeZoneTextValueCopyWith<$Res>? get departureTime;
  $TransitLineCopyWith<$Res>? get line;
}

/// @nodoc
class _$TransitDetailsCopyWithImpl<$Res, $Val extends TransitDetails>
    implements $TransitDetailsCopyWith<$Res> {
  _$TransitDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrivalStop = freezed,
    Object? departureStop = freezed,
    Object? arrivalTime = freezed,
    Object? departureTime = freezed,
    Object? headsign = freezed,
    Object? headway = freezed,
    Object? line = freezed,
    Object? numStops = freezed,
    Object? tripShortName = freezed,
  }) {
    return _then(_value.copyWith(
      arrivalStop: freezed == arrivalStop
          ? _value.arrivalStop
          : arrivalStop // ignore: cast_nullable_to_non_nullable
              as TransitStop?,
      departureStop: freezed == departureStop
          ? _value.departureStop
          : departureStop // ignore: cast_nullable_to_non_nullable
              as TransitStop?,
      arrivalTime: freezed == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as TimeZoneTextValue?,
      departureTime: freezed == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as TimeZoneTextValue?,
      headsign: freezed == headsign
          ? _value.headsign
          : headsign // ignore: cast_nullable_to_non_nullable
              as String?,
      headway: freezed == headway
          ? _value.headway
          : headway // ignore: cast_nullable_to_non_nullable
              as num?,
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as TransitLine?,
      numStops: freezed == numStops
          ? _value.numStops
          : numStops // ignore: cast_nullable_to_non_nullable
              as num?,
      tripShortName: freezed == tripShortName
          ? _value.tripShortName
          : tripShortName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransitStopCopyWith<$Res>? get arrivalStop {
    if (_value.arrivalStop == null) {
      return null;
    }

    return $TransitStopCopyWith<$Res>(_value.arrivalStop!, (value) {
      return _then(_value.copyWith(arrivalStop: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TransitStopCopyWith<$Res>? get departureStop {
    if (_value.departureStop == null) {
      return null;
    }

    return $TransitStopCopyWith<$Res>(_value.departureStop!, (value) {
      return _then(_value.copyWith(departureStop: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeZoneTextValueCopyWith<$Res>? get arrivalTime {
    if (_value.arrivalTime == null) {
      return null;
    }

    return $TimeZoneTextValueCopyWith<$Res>(_value.arrivalTime!, (value) {
      return _then(_value.copyWith(arrivalTime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeZoneTextValueCopyWith<$Res>? get departureTime {
    if (_value.departureTime == null) {
      return null;
    }

    return $TimeZoneTextValueCopyWith<$Res>(_value.departureTime!, (value) {
      return _then(_value.copyWith(departureTime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TransitLineCopyWith<$Res>? get line {
    if (_value.line == null) {
      return null;
    }

    return $TransitLineCopyWith<$Res>(_value.line!, (value) {
      return _then(_value.copyWith(line: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransitDetailsCopyWith<$Res>
    implements $TransitDetailsCopyWith<$Res> {
  factory _$$_TransitDetailsCopyWith(
          _$_TransitDetails value, $Res Function(_$_TransitDetails) then) =
      __$$_TransitDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TransitStop? arrivalStop,
      TransitStop? departureStop,
      TimeZoneTextValue? arrivalTime,
      TimeZoneTextValue? departureTime,
      String? headsign,
      num? headway,
      TransitLine? line,
      num? numStops,
      String? tripShortName});

  @override
  $TransitStopCopyWith<$Res>? get arrivalStop;
  @override
  $TransitStopCopyWith<$Res>? get departureStop;
  @override
  $TimeZoneTextValueCopyWith<$Res>? get arrivalTime;
  @override
  $TimeZoneTextValueCopyWith<$Res>? get departureTime;
  @override
  $TransitLineCopyWith<$Res>? get line;
}

/// @nodoc
class __$$_TransitDetailsCopyWithImpl<$Res>
    extends _$TransitDetailsCopyWithImpl<$Res, _$_TransitDetails>
    implements _$$_TransitDetailsCopyWith<$Res> {
  __$$_TransitDetailsCopyWithImpl(
      _$_TransitDetails _value, $Res Function(_$_TransitDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrivalStop = freezed,
    Object? departureStop = freezed,
    Object? arrivalTime = freezed,
    Object? departureTime = freezed,
    Object? headsign = freezed,
    Object? headway = freezed,
    Object? line = freezed,
    Object? numStops = freezed,
    Object? tripShortName = freezed,
  }) {
    return _then(_$_TransitDetails(
      arrivalStop: freezed == arrivalStop
          ? _value.arrivalStop
          : arrivalStop // ignore: cast_nullable_to_non_nullable
              as TransitStop?,
      departureStop: freezed == departureStop
          ? _value.departureStop
          : departureStop // ignore: cast_nullable_to_non_nullable
              as TransitStop?,
      arrivalTime: freezed == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as TimeZoneTextValue?,
      departureTime: freezed == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as TimeZoneTextValue?,
      headsign: freezed == headsign
          ? _value.headsign
          : headsign // ignore: cast_nullable_to_non_nullable
              as String?,
      headway: freezed == headway
          ? _value.headway
          : headway // ignore: cast_nullable_to_non_nullable
              as num?,
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as TransitLine?,
      numStops: freezed == numStops
          ? _value.numStops
          : numStops // ignore: cast_nullable_to_non_nullable
              as num?,
      tripShortName: freezed == tripShortName
          ? _value.tripShortName
          : tripShortName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransitDetails implements _TransitDetails {
  const _$_TransitDetails(
      {this.arrivalStop,
      this.departureStop,
      this.arrivalTime,
      this.departureTime,
      this.headsign,
      this.headway,
      this.line,
      this.numStops,
      required this.tripShortName});

  factory _$_TransitDetails.fromJson(Map<String, dynamic> json) =>
      _$$_TransitDetailsFromJson(json);

  /// Contains information about the stop/station for this part of
  /// the trip. Stop details can include:
  ///   * `name` the name of the transit station/stop. eg. "Union
  /// Square".
  ///   * `location` the location of the transit station/stop,
  /// represented as a lat and lng field.
  @override
  final TransitStop? arrivalStop;

  /// Contains information about the stop/station for this part of
  /// the trip. Stop details can include:
  ///   * `name` the name of the transit station/stop. eg. "Union
  /// Square".
  ///   * `location` the location of the transit station/stop,
  /// represented as a lat and lng field.
  @override
  final TransitStop? departureStop;

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
  @override
  final TimeZoneTextValue? arrivalTime;

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
  @override
  final TimeZoneTextValue? departureTime;

  /// Specifies the direction in which to travel on this line,
  /// as it is marked on the vehicle or at the departure stop.
  /// This will often be the terminus station.
  @override
  final String? headsign;

  /// Specifies the expected number of seconds between departures
  /// from the same stop at this time. For example, with a
  /// headway value of 600, you would expect a ten minute wait if
  /// you should miss your bus.
  @override
  final num? headway;

  /// Contains information about the transit line used in this step.
  @override
  final TransitLine? line;

  /// Contains the number of stops in this step, counting the
  /// arrival stop, but not the departure stop. For example,
  /// if your directions involve leaving from Stop A, passing
  /// through stops B and C, and arriving at stop D, `numStops`
  /// will return 3.
  @override
  final num? numStops;

  /// Contains the text that appears in schedules and sign boards
  /// to identify a transit trip to passengers. The text should
  /// uniquely identify a trip within a service day. For example,
  /// "538" is the `tripShortName` of the Amtrak train that leaves
  ///  San Jose, CA at 15:10 on weekdays to Sacramento, CA.
  @override
  final String? tripShortName;

  @override
  String toString() {
    return 'TransitDetails(arrivalStop: $arrivalStop, departureStop: $departureStop, arrivalTime: $arrivalTime, departureTime: $departureTime, headsign: $headsign, headway: $headway, line: $line, numStops: $numStops, tripShortName: $tripShortName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransitDetails &&
            (identical(other.arrivalStop, arrivalStop) ||
                other.arrivalStop == arrivalStop) &&
            (identical(other.departureStop, departureStop) ||
                other.departureStop == departureStop) &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.headsign, headsign) ||
                other.headsign == headsign) &&
            (identical(other.headway, headway) || other.headway == headway) &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.numStops, numStops) ||
                other.numStops == numStops) &&
            (identical(other.tripShortName, tripShortName) ||
                other.tripShortName == tripShortName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      arrivalStop,
      departureStop,
      arrivalTime,
      departureTime,
      headsign,
      headway,
      line,
      numStops,
      tripShortName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransitDetailsCopyWith<_$_TransitDetails> get copyWith =>
      __$$_TransitDetailsCopyWithImpl<_$_TransitDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransitDetailsToJson(
      this,
    );
  }
}

abstract class _TransitDetails implements TransitDetails {
  const factory _TransitDetails(
      {final TransitStop? arrivalStop,
      final TransitStop? departureStop,
      final TimeZoneTextValue? arrivalTime,
      final TimeZoneTextValue? departureTime,
      final String? headsign,
      final num? headway,
      final TransitLine? line,
      final num? numStops,
      required final String? tripShortName}) = _$_TransitDetails;

  factory _TransitDetails.fromJson(Map<String, dynamic> json) =
      _$_TransitDetails.fromJson;

  @override

  /// Contains information about the stop/station for this part of
  /// the trip. Stop details can include:
  ///   * `name` the name of the transit station/stop. eg. "Union
  /// Square".
  ///   * `location` the location of the transit station/stop,
  /// represented as a lat and lng field.
  TransitStop? get arrivalStop;
  @override

  /// Contains information about the stop/station for this part of
  /// the trip. Stop details can include:
  ///   * `name` the name of the transit station/stop. eg. "Union
  /// Square".
  ///   * `location` the location of the transit station/stop,
  /// represented as a lat and lng field.
  TransitStop? get departureStop;
  @override

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
  TimeZoneTextValue? get arrivalTime;
  @override

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
  TimeZoneTextValue? get departureTime;
  @override

  /// Specifies the direction in which to travel on this line,
  /// as it is marked on the vehicle or at the departure stop.
  /// This will often be the terminus station.
  String? get headsign;
  @override

  /// Specifies the expected number of seconds between departures
  /// from the same stop at this time. For example, with a
  /// headway value of 600, you would expect a ten minute wait if
  /// you should miss your bus.
  num? get headway;
  @override

  /// Contains information about the transit line used in this step.
  TransitLine? get line;
  @override

  /// Contains the number of stops in this step, counting the
  /// arrival stop, but not the departure stop. For example,
  /// if your directions involve leaving from Stop A, passing
  /// through stops B and C, and arriving at stop D, `numStops`
  /// will return 3.
  num? get numStops;
  @override

  /// Contains the text that appears in schedules and sign boards
  /// to identify a transit trip to passengers. The text should
  /// uniquely identify a trip within a service day. For example,
  /// "538" is the `tripShortName` of the Amtrak train that leaves
  ///  San Jose, CA at 15:10 on weekdays to Sacramento, CA.
  String? get tripShortName;
  @override
  @JsonKey(ignore: true)
  _$$_TransitDetailsCopyWith<_$_TransitDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

TransitLine _$TransitLineFromJson(Map<String, dynamic> json) {
  return _TransitLine.fromJson(json);
}

/// @nodoc
mixin _$TransitLine {
  /// Contains the full name of this transit line. eg. "7 Avenue Express".
  String? get name => throw _privateConstructorUsedError;

  /// Contains the short name of this transit line. This will normally be
  /// a line number, such as "M7" or "355".
  String? get shortName => throw _privateConstructorUsedError;

  /// Contains the color commonly used in signage for this transit line.
  /// The color will be specified as a hex string such as: #FF0033.
  String? get color => throw _privateConstructorUsedError;

  /// Is an array containing a single [TransitAgency] object.
  /// The [TransitAgency] object provides information
  /// about the operator of the line, including the following properties:
  ///  * `name` contains the name of the transit agency.
  ///  * `phone` contains the phone number of the transit agency.
  ///  * `url` contains the URL for the transit agency.
  ///
  ///   You must display the names and URLs of the transit agencies
  /// servicing the trip results.
  List<TransitAgency>? get agencies => throw _privateConstructorUsedError;

  /// Contains the URL for this transit line as provided by the transit agency.
  String? get url => throw _privateConstructorUsedError;

  /// Contains the URL for the icon associated with this line.
  String? get icon => throw _privateConstructorUsedError;

  /// Contains the color of text commonly used for signage of this line.
  /// The color will be specified as a hex string.
  String? get textColor => throw _privateConstructorUsedError;

  /// Contains the type of vehicle used on this line.
  /// This may include the following properties:
  ///  * `name` contains the name of the vehicle on this line. eg. "Subway."
  ///  * `type` contains the type of vehicle that runs on this line.
  /// See the [TransitVehicleType] documentation for a complete list of
  /// supported values.
  ///  * `icon` contains the URL for an icon associated with this vehicle type.
  ///  * `localIcon` contains the URL for the icon associated with this
  /// vehicle type, based on the local transport signage.
  TransitVehicle? get vehicle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransitLineCopyWith<TransitLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransitLineCopyWith<$Res> {
  factory $TransitLineCopyWith(
          TransitLine value, $Res Function(TransitLine) then) =
      _$TransitLineCopyWithImpl<$Res, TransitLine>;
  @useResult
  $Res call(
      {String? name,
      String? shortName,
      String? color,
      List<TransitAgency>? agencies,
      String? url,
      String? icon,
      String? textColor,
      TransitVehicle? vehicle});

  $TransitVehicleCopyWith<$Res>? get vehicle;
}

/// @nodoc
class _$TransitLineCopyWithImpl<$Res, $Val extends TransitLine>
    implements $TransitLineCopyWith<$Res> {
  _$TransitLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? shortName = freezed,
    Object? color = freezed,
    Object? agencies = freezed,
    Object? url = freezed,
    Object? icon = freezed,
    Object? textColor = freezed,
    Object? vehicle = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      agencies: freezed == agencies
          ? _value.agencies
          : agencies // ignore: cast_nullable_to_non_nullable
              as List<TransitAgency>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as TransitVehicle?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransitVehicleCopyWith<$Res>? get vehicle {
    if (_value.vehicle == null) {
      return null;
    }

    return $TransitVehicleCopyWith<$Res>(_value.vehicle!, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransitLineCopyWith<$Res>
    implements $TransitLineCopyWith<$Res> {
  factory _$$_TransitLineCopyWith(
          _$_TransitLine value, $Res Function(_$_TransitLine) then) =
      __$$_TransitLineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? shortName,
      String? color,
      List<TransitAgency>? agencies,
      String? url,
      String? icon,
      String? textColor,
      TransitVehicle? vehicle});

  @override
  $TransitVehicleCopyWith<$Res>? get vehicle;
}

/// @nodoc
class __$$_TransitLineCopyWithImpl<$Res>
    extends _$TransitLineCopyWithImpl<$Res, _$_TransitLine>
    implements _$$_TransitLineCopyWith<$Res> {
  __$$_TransitLineCopyWithImpl(
      _$_TransitLine _value, $Res Function(_$_TransitLine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? shortName = freezed,
    Object? color = freezed,
    Object? agencies = freezed,
    Object? url = freezed,
    Object? icon = freezed,
    Object? textColor = freezed,
    Object? vehicle = freezed,
  }) {
    return _then(_$_TransitLine(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      agencies: freezed == agencies
          ? _value._agencies
          : agencies // ignore: cast_nullable_to_non_nullable
              as List<TransitAgency>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as TransitVehicle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransitLine implements _TransitLine {
  const _$_TransitLine(
      {this.name,
      this.shortName,
      this.color,
      final List<TransitAgency>? agencies,
      this.url,
      this.icon,
      this.textColor,
      this.vehicle})
      : _agencies = agencies;

  factory _$_TransitLine.fromJson(Map<String, dynamic> json) =>
      _$$_TransitLineFromJson(json);

  /// Contains the full name of this transit line. eg. "7 Avenue Express".
  @override
  final String? name;

  /// Contains the short name of this transit line. This will normally be
  /// a line number, such as "M7" or "355".
  @override
  final String? shortName;

  /// Contains the color commonly used in signage for this transit line.
  /// The color will be specified as a hex string such as: #FF0033.
  @override
  final String? color;

  /// Is an array containing a single [TransitAgency] object.
  /// The [TransitAgency] object provides information
  /// about the operator of the line, including the following properties:
  ///  * `name` contains the name of the transit agency.
  ///  * `phone` contains the phone number of the transit agency.
  ///  * `url` contains the URL for the transit agency.
  ///
  ///   You must display the names and URLs of the transit agencies
  /// servicing the trip results.
  final List<TransitAgency>? _agencies;

  /// Is an array containing a single [TransitAgency] object.
  /// The [TransitAgency] object provides information
  /// about the operator of the line, including the following properties:
  ///  * `name` contains the name of the transit agency.
  ///  * `phone` contains the phone number of the transit agency.
  ///  * `url` contains the URL for the transit agency.
  ///
  ///   You must display the names and URLs of the transit agencies
  /// servicing the trip results.
  @override
  List<TransitAgency>? get agencies {
    final value = _agencies;
    if (value == null) return null;
    if (_agencies is EqualUnmodifiableListView) return _agencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Contains the URL for this transit line as provided by the transit agency.
  @override
  final String? url;

  /// Contains the URL for the icon associated with this line.
  @override
  final String? icon;

  /// Contains the color of text commonly used for signage of this line.
  /// The color will be specified as a hex string.
  @override
  final String? textColor;

  /// Contains the type of vehicle used on this line.
  /// This may include the following properties:
  ///  * `name` contains the name of the vehicle on this line. eg. "Subway."
  ///  * `type` contains the type of vehicle that runs on this line.
  /// See the [TransitVehicleType] documentation for a complete list of
  /// supported values.
  ///  * `icon` contains the URL for an icon associated with this vehicle type.
  ///  * `localIcon` contains the URL for the icon associated with this
  /// vehicle type, based on the local transport signage.
  @override
  final TransitVehicle? vehicle;

  @override
  String toString() {
    return 'TransitLine(name: $name, shortName: $shortName, color: $color, agencies: $agencies, url: $url, icon: $icon, textColor: $textColor, vehicle: $vehicle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransitLine &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._agencies, _agencies) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      shortName,
      color,
      const DeepCollectionEquality().hash(_agencies),
      url,
      icon,
      textColor,
      vehicle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransitLineCopyWith<_$_TransitLine> get copyWith =>
      __$$_TransitLineCopyWithImpl<_$_TransitLine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransitLineToJson(
      this,
    );
  }
}

abstract class _TransitLine implements TransitLine {
  const factory _TransitLine(
      {final String? name,
      final String? shortName,
      final String? color,
      final List<TransitAgency>? agencies,
      final String? url,
      final String? icon,
      final String? textColor,
      final TransitVehicle? vehicle}) = _$_TransitLine;

  factory _TransitLine.fromJson(Map<String, dynamic> json) =
      _$_TransitLine.fromJson;

  @override

  /// Contains the full name of this transit line. eg. "7 Avenue Express".
  String? get name;
  @override

  /// Contains the short name of this transit line. This will normally be
  /// a line number, such as "M7" or "355".
  String? get shortName;
  @override

  /// Contains the color commonly used in signage for this transit line.
  /// The color will be specified as a hex string such as: #FF0033.
  String? get color;
  @override

  /// Is an array containing a single [TransitAgency] object.
  /// The [TransitAgency] object provides information
  /// about the operator of the line, including the following properties:
  ///  * `name` contains the name of the transit agency.
  ///  * `phone` contains the phone number of the transit agency.
  ///  * `url` contains the URL for the transit agency.
  ///
  ///   You must display the names and URLs of the transit agencies
  /// servicing the trip results.
  List<TransitAgency>? get agencies;
  @override

  /// Contains the URL for this transit line as provided by the transit agency.
  String? get url;
  @override

  /// Contains the URL for the icon associated with this line.
  String? get icon;
  @override

  /// Contains the color of text commonly used for signage of this line.
  /// The color will be specified as a hex string.
  String? get textColor;
  @override

  /// Contains the type of vehicle used on this line.
  /// This may include the following properties:
  ///  * `name` contains the name of the vehicle on this line. eg. "Subway."
  ///  * `type` contains the type of vehicle that runs on this line.
  /// See the [TransitVehicleType] documentation for a complete list of
  /// supported values.
  ///  * `icon` contains the URL for an icon associated with this vehicle type.
  ///  * `localIcon` contains the URL for the icon associated with this
  /// vehicle type, based on the local transport signage.
  TransitVehicle? get vehicle;
  @override
  @JsonKey(ignore: true)
  _$$_TransitLineCopyWith<_$_TransitLine> get copyWith =>
      throw _privateConstructorUsedError;
}

OverviewPolyline _$OverviewPolylineFromJson(Map<String, dynamic> json) {
  return _OverviewPolyline.fromJson(json);
}

/// @nodoc
mixin _$OverviewPolyline {
  /// Contains [encoded polyline][enc_polyline] representation of the
  /// route. This polyline is an approximate (smoothed) path of the
  /// resulting directions.
  ///
  /// [enc_polyline]: https://developers.google.com/maps/documentation/utilities/polylinealgorithm
  String? get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OverviewPolylineCopyWith<OverviewPolyline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewPolylineCopyWith<$Res> {
  factory $OverviewPolylineCopyWith(
          OverviewPolyline value, $Res Function(OverviewPolyline) then) =
      _$OverviewPolylineCopyWithImpl<$Res, OverviewPolyline>;
  @useResult
  $Res call({String? points});
}

/// @nodoc
class _$OverviewPolylineCopyWithImpl<$Res, $Val extends OverviewPolyline>
    implements $OverviewPolylineCopyWith<$Res> {
  _$OverviewPolylineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OverviewPolylineCopyWith<$Res>
    implements $OverviewPolylineCopyWith<$Res> {
  factory _$$_OverviewPolylineCopyWith(
          _$_OverviewPolyline value, $Res Function(_$_OverviewPolyline) then) =
      __$$_OverviewPolylineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? points});
}

/// @nodoc
class __$$_OverviewPolylineCopyWithImpl<$Res>
    extends _$OverviewPolylineCopyWithImpl<$Res, _$_OverviewPolyline>
    implements _$$_OverviewPolylineCopyWith<$Res> {
  __$$_OverviewPolylineCopyWithImpl(
      _$_OverviewPolyline _value, $Res Function(_$_OverviewPolyline) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(_$_OverviewPolyline(
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OverviewPolyline extends _OverviewPolyline {
  const _$_OverviewPolyline({required this.points}) : super._();

  factory _$_OverviewPolyline.fromJson(Map<String, dynamic> json) =>
      _$$_OverviewPolylineFromJson(json);

  /// Contains [encoded polyline][enc_polyline] representation of the
  /// route. This polyline is an approximate (smoothed) path of the
  /// resulting directions.
  ///
  /// [enc_polyline]: https://developers.google.com/maps/documentation/utilities/polylinealgorithm
  @override
  final String? points;

  @override
  String toString() {
    return 'OverviewPolyline(points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OverviewPolyline &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, points);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OverviewPolylineCopyWith<_$_OverviewPolyline> get copyWith =>
      __$$_OverviewPolylineCopyWithImpl<_$_OverviewPolyline>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OverviewPolylineToJson(
      this,
    );
  }
}

abstract class _OverviewPolyline extends OverviewPolyline {
  const factory _OverviewPolyline({required final String? points}) =
      _$_OverviewPolyline;
  const _OverviewPolyline._() : super._();

  factory _OverviewPolyline.fromJson(Map<String, dynamic> json) =
      _$_OverviewPolyline.fromJson;

  @override

  /// Contains [encoded polyline][enc_polyline] representation of the
  /// route. This polyline is an approximate (smoothed) path of the
  /// resulting directions.
  ///
  /// [enc_polyline]: https://developers.google.com/maps/documentation/utilities/polylinealgorithm
  String? get points;
  @override
  @JsonKey(ignore: true)
  _$$_OverviewPolylineCopyWith<_$_OverviewPolyline> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeZoneTextValue _$TimeZoneTextValueFromJson(Map<String, dynamic> json) {
  return _TimeZoneTextValue.fromJson(json);
}

/// @nodoc
mixin _$TimeZoneTextValue {
  /// The time specified as a [String]. The time is displayed in the time
  /// zone of the transit stop.
  String? get text => throw _privateConstructorUsedError;

  /// Contains the time zone of this station. The value is the name
  /// of the time zone as defined in the [IANA Time Zone Database][iana],
  /// e.g. `"America/New_York"`.
  ///
  /// [iana]: http://www.iana.org/time-zones
  String? get timeZone => throw _privateConstructorUsedError;

  /// The time specified as a [DateTime] object.
  @MillisecondsDatetimeNullableConverter()
  DateTime? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeZoneTextValueCopyWith<TimeZoneTextValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeZoneTextValueCopyWith<$Res> {
  factory $TimeZoneTextValueCopyWith(
          TimeZoneTextValue value, $Res Function(TimeZoneTextValue) then) =
      _$TimeZoneTextValueCopyWithImpl<$Res, TimeZoneTextValue>;
  @useResult
  $Res call(
      {String? text,
      String? timeZone,
      @MillisecondsDatetimeNullableConverter() DateTime? value});
}

/// @nodoc
class _$TimeZoneTextValueCopyWithImpl<$Res, $Val extends TimeZoneTextValue>
    implements $TimeZoneTextValueCopyWith<$Res> {
  _$TimeZoneTextValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? timeZone = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeZoneTextValueCopyWith<$Res>
    implements $TimeZoneTextValueCopyWith<$Res> {
  factory _$$_TimeZoneTextValueCopyWith(_$_TimeZoneTextValue value,
          $Res Function(_$_TimeZoneTextValue) then) =
      __$$_TimeZoneTextValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? text,
      String? timeZone,
      @MillisecondsDatetimeNullableConverter() DateTime? value});
}

/// @nodoc
class __$$_TimeZoneTextValueCopyWithImpl<$Res>
    extends _$TimeZoneTextValueCopyWithImpl<$Res, _$_TimeZoneTextValue>
    implements _$$_TimeZoneTextValueCopyWith<$Res> {
  __$$_TimeZoneTextValueCopyWithImpl(
      _$_TimeZoneTextValue _value, $Res Function(_$_TimeZoneTextValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? timeZone = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_TimeZoneTextValue(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeZoneTextValue implements _TimeZoneTextValue {
  const _$_TimeZoneTextValue(
      {this.text,
      this.timeZone,
      @MillisecondsDatetimeNullableConverter() this.value});

  factory _$_TimeZoneTextValue.fromJson(Map<String, dynamic> json) =>
      _$$_TimeZoneTextValueFromJson(json);

  /// The time specified as a [String]. The time is displayed in the time
  /// zone of the transit stop.
  @override
  final String? text;

  /// Contains the time zone of this station. The value is the name
  /// of the time zone as defined in the [IANA Time Zone Database][iana],
  /// e.g. `"America/New_York"`.
  ///
  /// [iana]: http://www.iana.org/time-zones
  @override
  final String? timeZone;

  /// The time specified as a [DateTime] object.
  @override
  @MillisecondsDatetimeNullableConverter()
  final DateTime? value;

  @override
  String toString() {
    return 'TimeZoneTextValue(text: $text, timeZone: $timeZone, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeZoneTextValue &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, timeZone, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeZoneTextValueCopyWith<_$_TimeZoneTextValue> get copyWith =>
      __$$_TimeZoneTextValueCopyWithImpl<_$_TimeZoneTextValue>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeZoneTextValueToJson(
      this,
    );
  }
}

abstract class _TimeZoneTextValue implements TimeZoneTextValue {
  const factory _TimeZoneTextValue(
          {final String? text,
          final String? timeZone,
          @MillisecondsDatetimeNullableConverter() final DateTime? value}) =
      _$_TimeZoneTextValue;

  factory _TimeZoneTextValue.fromJson(Map<String, dynamic> json) =
      _$_TimeZoneTextValue.fromJson;

  @override

  /// The time specified as a [String]. The time is displayed in the time
  /// zone of the transit stop.
  String? get text;
  @override

  /// Contains the time zone of this station. The value is the name
  /// of the time zone as defined in the [IANA Time Zone Database][iana],
  /// e.g. `"America/New_York"`.
  ///
  /// [iana]: http://www.iana.org/time-zones
  String? get timeZone;
  @override

  /// The time specified as a [DateTime] object.
  @MillisecondsDatetimeNullableConverter()
  DateTime? get value;
  @override
  @JsonKey(ignore: true)
  _$$_TimeZoneTextValueCopyWith<_$_TimeZoneTextValue> get copyWith =>
      throw _privateConstructorUsedError;
}

Fare _$FareFromJson(Map<String, dynamic> json) {
  return _Fare.fromJson(json);
}

/// @nodoc
mixin _$Fare {
  /// The total fare amount, formatted in the requested language.
  String? get text => throw _privateConstructorUsedError;

  /// An [ISO 4217 currency code][iso4217] indicating the
  /// currency that the amount is expressed in.
  String? get currency => throw _privateConstructorUsedError;

  /// The total fare amount, in the currency specified above.
  num? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FareCopyWith<Fare> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FareCopyWith<$Res> {
  factory $FareCopyWith(Fare value, $Res Function(Fare) then) =
      _$FareCopyWithImpl<$Res, Fare>;
  @useResult
  $Res call({String? text, String? currency, num? value});
}

/// @nodoc
class _$FareCopyWithImpl<$Res, $Val extends Fare>
    implements $FareCopyWith<$Res> {
  _$FareCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? currency = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FareCopyWith<$Res> implements $FareCopyWith<$Res> {
  factory _$$_FareCopyWith(_$_Fare value, $Res Function(_$_Fare) then) =
      __$$_FareCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, String? currency, num? value});
}

/// @nodoc
class __$$_FareCopyWithImpl<$Res> extends _$FareCopyWithImpl<$Res, _$_Fare>
    implements _$$_FareCopyWith<$Res> {
  __$$_FareCopyWithImpl(_$_Fare _value, $Res Function(_$_Fare) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? currency = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_Fare(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Fare implements _Fare {
  const _$_Fare({this.text, this.currency, this.value});

  factory _$_Fare.fromJson(Map<String, dynamic> json) => _$$_FareFromJson(json);

  /// The total fare amount, formatted in the requested language.
  @override
  final String? text;

  /// An [ISO 4217 currency code][iso4217] indicating the
  /// currency that the amount is expressed in.
  @override
  final String? currency;

  /// The total fare amount, in the currency specified above.
  @override
  final num? value;

  @override
  String toString() {
    return 'Fare(text: $text, currency: $currency, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fare &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, currency, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FareCopyWith<_$_Fare> get copyWith =>
      __$$_FareCopyWithImpl<_$_Fare>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FareToJson(
      this,
    );
  }
}

abstract class _Fare implements Fare {
  const factory _Fare(
      {final String? text, final String? currency, final num? value}) = _$_Fare;

  factory _Fare.fromJson(Map<String, dynamic> json) = _$_Fare.fromJson;

  @override

  /// The total fare amount, formatted in the requested language.
  String? get text;
  @override

  /// An [ISO 4217 currency code][iso4217] indicating the
  /// currency that the amount is expressed in.
  String? get currency;
  @override

  /// The total fare amount, in the currency specified above.
  num? get value;
  @override
  @JsonKey(ignore: true)
  _$$_FareCopyWith<_$_Fare> get copyWith => throw _privateConstructorUsedError;
}

TransitStop _$TransitStopFromJson(Map<String, dynamic> json) {
  return _TransitStop.fromJson(json);
}

/// @nodoc
mixin _$TransitStop {
  /// The name of the transit station/stop. eg. "Union Square".
  String? get name => throw _privateConstructorUsedError;

  /// The location of the transit station/stop, represented as a
  /// lat and lng field
  GeoCoord? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransitStopCopyWith<TransitStop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransitStopCopyWith<$Res> {
  factory $TransitStopCopyWith(
          TransitStop value, $Res Function(TransitStop) then) =
      _$TransitStopCopyWithImpl<$Res, TransitStop>;
  @useResult
  $Res call({String? name, GeoCoord? location});

  $GeoCoordCopyWith<$Res>? get location;
}

/// @nodoc
class _$TransitStopCopyWithImpl<$Res, $Val extends TransitStop>
    implements $TransitStopCopyWith<$Res> {
  _$TransitStopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoCoord?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoCoordCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $GeoCoordCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransitStopCopyWith<$Res>
    implements $TransitStopCopyWith<$Res> {
  factory _$$_TransitStopCopyWith(
          _$_TransitStop value, $Res Function(_$_TransitStop) then) =
      __$$_TransitStopCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, GeoCoord? location});

  @override
  $GeoCoordCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_TransitStopCopyWithImpl<$Res>
    extends _$TransitStopCopyWithImpl<$Res, _$_TransitStop>
    implements _$$_TransitStopCopyWith<$Res> {
  __$$_TransitStopCopyWithImpl(
      _$_TransitStop _value, $Res Function(_$_TransitStop) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_TransitStop(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoCoord?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransitStop implements _TransitStop {
  const _$_TransitStop({required this.name, required this.location});

  factory _$_TransitStop.fromJson(Map<String, dynamic> json) =>
      _$$_TransitStopFromJson(json);

  /// The name of the transit station/stop. eg. "Union Square".
  @override
  final String? name;

  /// The location of the transit station/stop, represented as a
  /// lat and lng field
  @override
  final GeoCoord? location;

  @override
  String toString() {
    return 'TransitStop(name: $name, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransitStop &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransitStopCopyWith<_$_TransitStop> get copyWith =>
      __$$_TransitStopCopyWithImpl<_$_TransitStop>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransitStopToJson(
      this,
    );
  }
}

abstract class _TransitStop implements TransitStop {
  const factory _TransitStop(
      {required final String? name,
      required final GeoCoord? location}) = _$_TransitStop;

  factory _TransitStop.fromJson(Map<String, dynamic> json) =
      _$_TransitStop.fromJson;

  @override

  /// The name of the transit station/stop. eg. "Union Square".
  String? get name;
  @override

  /// The location of the transit station/stop, represented as a
  /// lat and lng field
  GeoCoord? get location;
  @override
  @JsonKey(ignore: true)
  _$$_TransitStopCopyWith<_$_TransitStop> get copyWith =>
      throw _privateConstructorUsedError;
}

TransitAgency _$TransitAgencyFromJson(Map<String, dynamic> json) {
  return _TransitAgency.fromJson(json);
}

/// @nodoc
mixin _$TransitAgency {
  /// Contains the name of the transit agency.
  String? get name => throw _privateConstructorUsedError;

  /// Contains the phone number of the transit agency.
  String? get phone => throw _privateConstructorUsedError;

  /// Contains the URL for the transit agency.
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransitAgencyCopyWith<TransitAgency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransitAgencyCopyWith<$Res> {
  factory $TransitAgencyCopyWith(
          TransitAgency value, $Res Function(TransitAgency) then) =
      _$TransitAgencyCopyWithImpl<$Res, TransitAgency>;
  @useResult
  $Res call({String? name, String? phone, String? url});
}

/// @nodoc
class _$TransitAgencyCopyWithImpl<$Res, $Val extends TransitAgency>
    implements $TransitAgencyCopyWith<$Res> {
  _$TransitAgencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransitAgencyCopyWith<$Res>
    implements $TransitAgencyCopyWith<$Res> {
  factory _$$_TransitAgencyCopyWith(
          _$_TransitAgency value, $Res Function(_$_TransitAgency) then) =
      __$$_TransitAgencyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? phone, String? url});
}

/// @nodoc
class __$$_TransitAgencyCopyWithImpl<$Res>
    extends _$TransitAgencyCopyWithImpl<$Res, _$_TransitAgency>
    implements _$$_TransitAgencyCopyWith<$Res> {
  __$$_TransitAgencyCopyWithImpl(
      _$_TransitAgency _value, $Res Function(_$_TransitAgency) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_TransitAgency(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransitAgency implements _TransitAgency {
  const _$_TransitAgency({this.name, this.phone, this.url});

  factory _$_TransitAgency.fromJson(Map<String, dynamic> json) =>
      _$$_TransitAgencyFromJson(json);

  /// Contains the name of the transit agency.
  @override
  final String? name;

  /// Contains the phone number of the transit agency.
  @override
  final String? phone;

  /// Contains the URL for the transit agency.
  @override
  final String? url;

  @override
  String toString() {
    return 'TransitAgency(name: $name, phone: $phone, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransitAgency &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, phone, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransitAgencyCopyWith<_$_TransitAgency> get copyWith =>
      __$$_TransitAgencyCopyWithImpl<_$_TransitAgency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransitAgencyToJson(
      this,
    );
  }
}

abstract class _TransitAgency implements TransitAgency {
  const factory _TransitAgency(
      {final String? name,
      final String? phone,
      final String? url}) = _$_TransitAgency;

  factory _TransitAgency.fromJson(Map<String, dynamic> json) =
      _$_TransitAgency.fromJson;

  @override

  /// Contains the name of the transit agency.
  String? get name;
  @override

  /// Contains the phone number of the transit agency.
  String? get phone;
  @override

  /// Contains the URL for the transit agency.
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_TransitAgencyCopyWith<_$_TransitAgency> get copyWith =>
      throw _privateConstructorUsedError;
}

TransitVehicle _$TransitVehicleFromJson(Map<String, dynamic> json) {
  return _TransitVehicle.fromJson(json);
}

/// @nodoc
mixin _$TransitVehicle {
  /// Contains the name of the vehicle on this line. eg. "Subway."
  String? get name => throw _privateConstructorUsedError;

  /// Contains the type of vehicle that runs on this line.
  TransitVehicleType? get type => throw _privateConstructorUsedError;

  /// Contains the URL for an icon associated with this vehicle type.
  String? get icon => throw _privateConstructorUsedError;

  /// Contains the URL for the icon associated with this
  /// vehicle type, based on the local transport signage.
  String? get localIcon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransitVehicleCopyWith<TransitVehicle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransitVehicleCopyWith<$Res> {
  factory $TransitVehicleCopyWith(
          TransitVehicle value, $Res Function(TransitVehicle) then) =
      _$TransitVehicleCopyWithImpl<$Res, TransitVehicle>;
  @useResult
  $Res call(
      {String? name,
      TransitVehicleType? type,
      String? icon,
      String? localIcon});
}

/// @nodoc
class _$TransitVehicleCopyWithImpl<$Res, $Val extends TransitVehicle>
    implements $TransitVehicleCopyWith<$Res> {
  _$TransitVehicleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? icon = freezed,
    Object? localIcon = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransitVehicleType?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      localIcon: freezed == localIcon
          ? _value.localIcon
          : localIcon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransitVehicleCopyWith<$Res>
    implements $TransitVehicleCopyWith<$Res> {
  factory _$$_TransitVehicleCopyWith(
          _$_TransitVehicle value, $Res Function(_$_TransitVehicle) then) =
      __$$_TransitVehicleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      TransitVehicleType? type,
      String? icon,
      String? localIcon});
}

/// @nodoc
class __$$_TransitVehicleCopyWithImpl<$Res>
    extends _$TransitVehicleCopyWithImpl<$Res, _$_TransitVehicle>
    implements _$$_TransitVehicleCopyWith<$Res> {
  __$$_TransitVehicleCopyWithImpl(
      _$_TransitVehicle _value, $Res Function(_$_TransitVehicle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? icon = freezed,
    Object? localIcon = freezed,
  }) {
    return _then(_$_TransitVehicle(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransitVehicleType?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      localIcon: freezed == localIcon
          ? _value.localIcon
          : localIcon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransitVehicle implements _TransitVehicle {
  const _$_TransitVehicle({this.name, this.type, this.icon, this.localIcon});

  factory _$_TransitVehicle.fromJson(Map<String, dynamic> json) =>
      _$$_TransitVehicleFromJson(json);

  /// Contains the name of the vehicle on this line. eg. "Subway."
  @override
  final String? name;

  /// Contains the type of vehicle that runs on this line.
  @override
  final TransitVehicleType? type;

  /// Contains the URL for an icon associated with this vehicle type.
  @override
  final String? icon;

  /// Contains the URL for the icon associated with this
  /// vehicle type, based on the local transport signage.
  @override
  final String? localIcon;

  @override
  String toString() {
    return 'TransitVehicle(name: $name, type: $type, icon: $icon, localIcon: $localIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransitVehicle &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.localIcon, localIcon) ||
                other.localIcon == localIcon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, icon, localIcon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransitVehicleCopyWith<_$_TransitVehicle> get copyWith =>
      __$$_TransitVehicleCopyWithImpl<_$_TransitVehicle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransitVehicleToJson(
      this,
    );
  }
}

abstract class _TransitVehicle implements TransitVehicle {
  const factory _TransitVehicle(
      {final String? name,
      final TransitVehicleType? type,
      final String? icon,
      final String? localIcon}) = _$_TransitVehicle;

  factory _TransitVehicle.fromJson(Map<String, dynamic> json) =
      _$_TransitVehicle.fromJson;

  @override

  /// Contains the name of the vehicle on this line. eg. "Subway."
  String? get name;
  @override

  /// Contains the type of vehicle that runs on this line.
  TransitVehicleType? get type;
  @override

  /// Contains the URL for an icon associated with this vehicle type.
  String? get icon;
  @override

  /// Contains the URL for the icon associated with this
  /// vehicle type, based on the local transport signage.
  String? get localIcon;
  @override
  @JsonKey(ignore: true)
  _$$_TransitVehicleCopyWith<_$_TransitVehicle> get copyWith =>
      throw _privateConstructorUsedError;
}

ViaWaypoint _$ViaWaypointFromJson(Map<String, dynamic> json) {
  return _ViaWaypoint.fromJson(json);
}

/// @nodoc
mixin _$ViaWaypoint {
  /// The location of the waypoint.
  GeoCoord? get location => throw _privateConstructorUsedError;

  /// The index of the step containing the waypoint.
  int? get stepIndex => throw _privateConstructorUsedError;

  /// The position of the waypoint along the step's polyline,
  /// expressed as a ratio from 0 to 1.
  num? get stepInterpolation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViaWaypointCopyWith<ViaWaypoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViaWaypointCopyWith<$Res> {
  factory $ViaWaypointCopyWith(
          ViaWaypoint value, $Res Function(ViaWaypoint) then) =
      _$ViaWaypointCopyWithImpl<$Res, ViaWaypoint>;
  @useResult
  $Res call({GeoCoord? location, int? stepIndex, num? stepInterpolation});

  $GeoCoordCopyWith<$Res>? get location;
}

/// @nodoc
class _$ViaWaypointCopyWithImpl<$Res, $Val extends ViaWaypoint>
    implements $ViaWaypointCopyWith<$Res> {
  _$ViaWaypointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? stepIndex = freezed,
    Object? stepInterpolation = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoCoord?,
      stepIndex: freezed == stepIndex
          ? _value.stepIndex
          : stepIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      stepInterpolation: freezed == stepInterpolation
          ? _value.stepInterpolation
          : stepInterpolation // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoCoordCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $GeoCoordCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ViaWaypointCopyWith<$Res>
    implements $ViaWaypointCopyWith<$Res> {
  factory _$$_ViaWaypointCopyWith(
          _$_ViaWaypoint value, $Res Function(_$_ViaWaypoint) then) =
      __$$_ViaWaypointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GeoCoord? location, int? stepIndex, num? stepInterpolation});

  @override
  $GeoCoordCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_ViaWaypointCopyWithImpl<$Res>
    extends _$ViaWaypointCopyWithImpl<$Res, _$_ViaWaypoint>
    implements _$$_ViaWaypointCopyWith<$Res> {
  __$$_ViaWaypointCopyWithImpl(
      _$_ViaWaypoint _value, $Res Function(_$_ViaWaypoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? stepIndex = freezed,
    Object? stepInterpolation = freezed,
  }) {
    return _then(_$_ViaWaypoint(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoCoord?,
      stepIndex: freezed == stepIndex
          ? _value.stepIndex
          : stepIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      stepInterpolation: freezed == stepInterpolation
          ? _value.stepInterpolation
          : stepInterpolation // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ViaWaypoint implements _ViaWaypoint {
  const _$_ViaWaypoint({this.location, this.stepIndex, this.stepInterpolation});

  factory _$_ViaWaypoint.fromJson(Map<String, dynamic> json) =>
      _$$_ViaWaypointFromJson(json);

  /// The location of the waypoint.
  @override
  final GeoCoord? location;

  /// The index of the step containing the waypoint.
  @override
  final int? stepIndex;

  /// The position of the waypoint along the step's polyline,
  /// expressed as a ratio from 0 to 1.
  @override
  final num? stepInterpolation;

  @override
  String toString() {
    return 'ViaWaypoint(location: $location, stepIndex: $stepIndex, stepInterpolation: $stepInterpolation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViaWaypoint &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.stepIndex, stepIndex) ||
                other.stepIndex == stepIndex) &&
            (identical(other.stepInterpolation, stepInterpolation) ||
                other.stepInterpolation == stepInterpolation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, location, stepIndex, stepInterpolation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViaWaypointCopyWith<_$_ViaWaypoint> get copyWith =>
      __$$_ViaWaypointCopyWithImpl<_$_ViaWaypoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ViaWaypointToJson(
      this,
    );
  }
}

abstract class _ViaWaypoint implements ViaWaypoint {
  const factory _ViaWaypoint(
      {final GeoCoord? location,
      final int? stepIndex,
      final num? stepInterpolation}) = _$_ViaWaypoint;

  factory _ViaWaypoint.fromJson(Map<String, dynamic> json) =
      _$_ViaWaypoint.fromJson;

  @override

  /// The location of the waypoint.
  GeoCoord? get location;
  @override

  /// The index of the step containing the waypoint.
  int? get stepIndex;
  @override

  /// The position of the waypoint along the step's polyline,
  /// expressed as a ratio from 0 to 1.
  num? get stepInterpolation;
  @override
  @JsonKey(ignore: true)
  _$$_ViaWaypointCopyWith<_$_ViaWaypoint> get copyWith =>
      throw _privateConstructorUsedError;
}

TextValue _$TextValueFromJson(Map<String, dynamic> json) {
  return _TextValue.fromJson(json);
}

/// @nodoc
mixin _$TextValue {
  String? get text => throw _privateConstructorUsedError;
  num? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextValueCopyWith<TextValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextValueCopyWith<$Res> {
  factory $TextValueCopyWith(TextValue value, $Res Function(TextValue) then) =
      _$TextValueCopyWithImpl<$Res, TextValue>;
  @useResult
  $Res call({String? text, num? value});
}

/// @nodoc
class _$TextValueCopyWithImpl<$Res, $Val extends TextValue>
    implements $TextValueCopyWith<$Res> {
  _$TextValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TextValueCopyWith<$Res> implements $TextValueCopyWith<$Res> {
  factory _$$_TextValueCopyWith(
          _$_TextValue value, $Res Function(_$_TextValue) then) =
      __$$_TextValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, num? value});
}

/// @nodoc
class __$$_TextValueCopyWithImpl<$Res>
    extends _$TextValueCopyWithImpl<$Res, _$_TextValue>
    implements _$$_TextValueCopyWith<$Res> {
  __$$_TextValueCopyWithImpl(
      _$_TextValue _value, $Res Function(_$_TextValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_TextValue(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextValue implements _TextValue {
  const _$_TextValue({this.text, this.value});

  factory _$_TextValue.fromJson(Map<String, dynamic> json) =>
      _$$_TextValueFromJson(json);

  @override
  final String? text;
  @override
  final num? value;

  @override
  String toString() {
    return 'TextValue(text: $text, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextValue &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextValueCopyWith<_$_TextValue> get copyWith =>
      __$$_TextValueCopyWithImpl<_$_TextValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextValueToJson(
      this,
    );
  }
}

abstract class _TextValue implements TextValue {
  const factory _TextValue({final String? text, final num? value}) =
      _$_TextValue;

  factory _TextValue.fromJson(Map<String, dynamic> json) =
      _$_TextValue.fromJson;

  @override
  String? get text;
  @override
  num? get value;
  @override
  @JsonKey(ignore: true)
  _$$_TextValueCopyWith<_$_TextValue> get copyWith =>
      throw _privateConstructorUsedError;
}
