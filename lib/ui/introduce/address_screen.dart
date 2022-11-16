// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:myshop/ui/cart/cart_screen.dart';

import 'package:provider/provider.dart';

import '../shared/app_drawer.dart';

import '../cart/cart_manager.dart';
import '../products/top_right_badge.dart';

enum FilterOptions { favorites, all }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   GoogleMapController myController;
//
//   final LatLng _center = const LatLng(45.521563, -122.677433);
//
//   MapType _currentMapType = MapType.normal;
//
//   void _onMapTypeButtonPressed() {
//     setState(() {
//       _currentMapType = _currentMapType == MapType.normal
//           ? MapType.satellite
//           : MapType.normal;
//     });
//   }
//
//   void _onMapCreated(GoogleMapController controller) {
//     myController = controller;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter Maps Demo'),
//           backgroundColor: Colors.green,
//         ),
//         body: Stack(
//           children: <Widget>[
//             GoogleMap(
//               onMapCreated: _onMapCreated,
//               initialCameraPosition: CameraPosition(
//                 target: _center,
//                 zoom: 10.0,
//               ),
//               mapType: _currentMapType
//             ),
//             Padding(
//               padding: const EdgeInsets.all(14.0),
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: FloatingActionButton(
//                   onPressed: _onMapTypeButtonPressed,
//                   materialTapTargetSize: MaterialTapTargetSize.padded,
//                   backgroundColor: Colors.green,
//                   child: const Icon(Icons.map, size: 30.0),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class MyApp extends StatefulWidget {
  const MyApp({Key?key}) : super(key:key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoogleMapController myController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  // MapType _currentMapType = MapType.normal;

  // void _onMapTypeButtonPressed() {
  //   setState(() {
  //     _currentMapType = _currentMapType == MapType.normal
  //         ? MapType.satellite
  //         : MapType.normal;
  //   });
  // }

  void _onMapCreated(GoogleMapController controller) {
    myController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Maps Demo'),
          backgroundColor: Colors.green,
        ),
        body:
        // Stack(
        //   children: <Widget>[
            GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 10.0,
                ),
                // mapType: _currentMapType
            ),
            // Padding(
            //   padding: const EdgeInsets.all(14.0),
            //   child: Align(
            //     alignment: Alignment.topRight,
            //     child: FloatingActionButton(
            //       onPressed: _onMapTypeButtonPressed,
            //       materialTapTargetSize: MaterialTapTargetSize.padded,
            //       backgroundColor: Colors.green,
            //       child: const Icon(Icons.map, size: 30.0),
            //     ),
            //   ),
            // ),
          // ],
        //),
      ),
    );
  }
}
