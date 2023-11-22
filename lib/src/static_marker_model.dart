part of vietmap_flutter_gl;

class StaticMarker extends Marker {
  /// The bearing of the marker, in degrees clockwise from north.
  /// This value will be normalized to be in the range [0, 360].
  /// You can get [bearing/heading] from GPS location,
  final double bearing;
  StaticMarker(
      {required this.bearing,
      required Widget child,
      required LatLng latLng,
      double width = 20,
      double height = 20,
      Alignment alignment = Alignment.center})
      : super(
            child: child,
            latLng: latLng,
            width: width,
            height: height,
            alignment: alignment);
}
