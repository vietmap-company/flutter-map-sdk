import 'package:flutter/material.dart';
import 'package:vietmap_flutter_gl/mapbox_gl.dart';

import 'page.dart';

class FullMapPage extends ExamplePage {
  FullMapPage() : super(const Icon(Icons.map), 'Full screen map');

  @override
  Widget build(BuildContext context) {
    return const FullMap();
  }
}

class FullMap extends StatefulWidget {
  const FullMap();

  @override
  State createState() => FullMapState();
}

class FullMapState extends State<FullMap> {
  VietmapController? mapController;
  var isLight = true;

  _onMapCreated(VietmapController controller) {
    mapController = controller;
  }

  _onStyleLoadedCallback() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Style loaded :)"),
      backgroundColor: Theme.of(context).primaryColor,
      duration: Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        // TODO: commented out when cherry-picking https://github.com/flutter-mapbox-gl/maps/pull/775
        // needs different dark and light styles in this repo
        // floatingActionButton: Padding(
        // padding: const EdgeInsets.all(32.0),
        // child: FloatingActionButton(
        // child: Icon(Icons.swap_horiz),
        // onPressed: () => setState(
        // () => isLight = !isLight,
        // ),
        // ),
        // ),
        body: VietmapGL(
      // TODO: styleString: isLight ? MapboxStyles.LIGHT : MapboxStyles.DARK,
      onMapCreated: _onMapCreated,
      initialCameraPosition: const CameraPosition(target: LatLng(0.0, 0.0)),
      onStyleLoadedCallback: _onStyleLoadedCallback,
      styleString:
          "https://run.mocky.io/v3/2cdf49bc-40fe-4aa5-a992-1954c8fb298f",
    ));
  }
}
