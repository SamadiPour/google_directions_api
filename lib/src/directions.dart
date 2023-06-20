// Copyright (c) 2021, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_polyline_algorithm/google_polyline_algorithm.dart'
    as gpl;
import 'package:http/http.dart' as http;

import 'converters.dart';

part 'directions.request.dart';
part 'directions.response.dart';

part 'directions.freezed.dart';
part 'directions.g.dart';


/// This service is used to calculate route between two points
class DirectionsService {
  Uri get _directionApiUrl => Uri(
        scheme: 'https',
        host: 'maps.googleapis.com',
        path: '/maps/api/directions/json',
      );

  static String? _apiKey;

  /// Initializer of [GoogleMap].
  ///
  /// `Required` if `Directions API` on `Mobile device` will be needed.
  /// For other cases, could be ignored.
  static void init(String apiKey) => _apiKey = apiKey;

  /// Gets an google API key
  static String? get apiKey => _apiKey;

  /// Calculates route between two points.
  ///
  /// `request` argument contains origin and destination points
  /// and also settings for route calculation.
  ///
  /// `callback` argument will be called when route calculations finished.
  Future<void> route(
    DirectionsRequest request,
    void Function(DirectionsResult, DirectionsStatus?) callback,
  ) async {
    final response = await http.get(
      _directionApiUrl.replace(
        queryParameters: {
          'key': apiKey,
          ...request.toJson(),
        },
      ),
    );

    if (response.statusCode != 200) {
      throw Exception(
        '${response.statusCode} (${response.reasonPhrase}), uri = ${response.request!.url}',
      );
    }

    final result = DirectionsResult.fromJson(json.decode(response.body));

    callback(result, result.status);
  }
}

/// A pair of latitude and longitude coordinates, stored as degrees.
@freezed
class GeoCoord with _$GeoCoord {
  /// Creates a geographical location specified in degrees [latitude] and
  /// [longitude].
  ///
  /// The latitude is clamped to the inclusive interval from -90.0 to +90.0.
  ///
  /// The longitude is normalized to the half-open interval from -180.0
  /// (inclusive) to +180.0 (exclusive)
  const factory GeoCoord({
    /// Latitude in degrees.
    /// The latitude in degrees between -90.0 and 90.0, both inclusive.
    @Assert('latitude >= -90.0 && latitude <= 90.0')
    @JsonKey(name: 'lat') required double latitude,

    /// Longitude in degrees.
    /// The longitude in degrees between -180.0 (inclusive) and 180.0 (exclusive).
    @Assert('longitude >= -180.0 && longitude < 180.0')
    @JsonKey(name: 'lng') required double longitude,
  }) = _GeoCoord;

  factory GeoCoord.fromJson(Map<String, dynamic> json) =>
      _$GeoCoordFromJson(json);
}

/// A latitude/longitude aligned rectangle.
///
/// The rectangle conceptually includes all points (lat, lng) where
/// * lat ∈ [`southwest.latitude`, `northeast.latitude`]
/// * lng ∈ [`southwest.longitude`, `northeast.longitude`],
///   if `southwest.longitude` ≤ `northeast.longitude`,
/// * lng ∈ [-180, `northeast.longitude`] ∪ [`southwest.longitude`, 180],
///   if `northeast.longitude` < `southwest.longitude`
@freezed
class GeoCoordBounds with _$GeoCoordBounds {
  const GeoCoordBounds._();

  /// Creates geographical bounding box with the specified corners.
  ///
  /// The latitude of the southwest corner cannot be larger than the
  /// latitude of the northeast corner.
  const factory GeoCoordBounds({
    /// The southwest corner of the rectangle.
    required GeoCoord southwest,

    /// The northeast corner of the rectangle.
    required GeoCoord northeast,
  }) = _GeoCoordBounds;

  factory GeoCoordBounds.fromJson(Map<String, dynamic> json) =>
      _$GeoCoordBoundsFromJson(json);

  /// Returns whether this rectangle contains the given [GeoCoord].
  bool contains(GeoCoord point) {
    return _containsLatitude(point.latitude) &&
        _containsLongitude(point.longitude);
  }

  bool _containsLatitude(double lat) {
    return (southwest.latitude <= lat) && (lat <= northeast.latitude);
  }

  bool _containsLongitude(double lng) {
    if (southwest.longitude <= northeast.longitude) {
      return southwest.longitude <= lng && lng <= northeast.longitude;
    } else {
      return southwest.longitude <= lng || lng <= northeast.longitude;
    }
  }
}

/// Represents an enum of various travel modes.
///
/// The valid travel modes that can be specified in a
/// `DirectionsRequest` as well as the travel modes returned
/// in a `DirectionsStep`. Specify these by value, or by using
/// the constant's name.
@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum TravelMode {
  /// Specifies a bicycling directions request.
  bicycling,

  /// Specifies a driving directions request.
  driving,

  /// Specifies a transit directions request.
  transit,

  /// Specifies a walking directions request.
  walking;
}
