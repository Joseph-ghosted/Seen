import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';

import 'package:Seen/models/map_style.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

class DetectionMapViewModel extends BaseViewModel {
  static const CameraPosition kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  late GoogleMapController _mapController;

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  final String _mapStyle = '''
  [
    {
      "featureType": "all",
      "elementType": "labels",
      "stylers": [
        {
          "visibility": "off"
        }
      ]
    },
    {
      "featureType": "poi",
      "elementType": "all",
      "stylers": [
        {
          "visibility": "off"
        }
      ]
    },
    {
      "featureType": "transit",
      "elementType": "all",
      "stylers": [
        {
          "visibility": "off"
        }
      ]
    }
  ]
  ''';

  List<dynamic> contacts = [
    {
      "name": "Me",
      "position": LatLng(37.42796133580664, -122.085749655962),
      "marker": 'assets/markers/marker-1.png',
      "image": 'assets/images/avatar-1.png',
    },
    {
      "name": "Saman",
      "position": LatLng(37.42484642575639, -122.08309359848501),
      "marker": 'assets/markers/marker-2.png',
      "image": 'assets/images/avatar-2.png',
    },
    {
      "name": "Malte",
      "position": LatLng(37.42381625902441, -122.0928531512618),
      "marker": 'assets/markers/marker-3.png',
      "image": 'assets/images/avatar-3.png',
    },
    {
      "name": "Julia",
      "position": LatLng(37.41994095849639, -122.08159055560827),
      "marker": 'assets/markers/marker-4.png',
      "image": 'assets/images/avatar-4.png',
    },
    {
      "name": "Tim",
      "position": LatLng(37.413175077529935, -122.10101041942836),
      "marker": 'assets/markers/marker-5.png',
      "image": 'assets/images/avatar-5.png',
    },
    {
      "name": "Sara",
      "position": LatLng(37.419013242401576, -122.11134664714336),
      "marker": 'assets/markers/marker-6.png',
      "image": 'assets/images/avatar-6.png',
    },
    {
      "name": "CR7",
      "position": LatLng(37.40260962243491, -122.0976958796382),
      "marker": 'assets/markers/marker-7.png',
      "image": 'assets/images/avatar-7.png',
    },
  ];

  final List<Marker> _markers = [];
  List<Marker> get markers => _markers;

  Future<void> createMarkers(BuildContext context) async {
    Marker marker;
    // Iterate over the contacts to create markers.
    for (var contact in contacts) {
      marker = Marker(
        markerId: MarkerId(contact['name']),
        position: contact['position'],
        icon: await _getAssetIcon(context, contact['marker']),
        infoWindow: InfoWindow(
          title: contact['name'],
          snippet: 'Street 6 . 2min ago',
        ),
      );

      // Add each marker to the list.
      _markers.add(marker);
    }

    // Notify listeners to update the UI.
    notifyListeners();
  }

  Future<void> initialize() async {
    setBusy(true); // Indicate the ViewModel is busy (optional).

    // Perform your data fetching or initialization here.
    await Future.delayed(
        Duration(seconds: 2)); // Simulate some async operation.

    _mapController.setMapStyle(_mapStyle);

    setBusy(false); // Indicate the ViewModel is no longer busy.
    notifyListeners(); // Notify listeners to rebuild the UI.
  }

  onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    _mapController
        .setMapStyle(MapStyle().aubergine); // Apply the custom style here.
  }

  Future<BitmapDescriptor> _getAssetIcon(
      BuildContext context, String icon) async {
    final Completer<BitmapDescriptor> bitmapIcon =
        Completer<BitmapDescriptor>();
    final ImageConfiguration config =
        createLocalImageConfiguration(context, size: const Size(5, 5));

    AssetImage(icon)
        .resolve(config)
        .addListener(ImageStreamListener((ImageInfo image, bool sync) async {
      final ByteData? bytes =
          await image.image.toByteData(format: ImageByteFormat.png);
      final BitmapDescriptor bitmap =
          BitmapDescriptor.fromBytes(bytes!.buffer.asUint8List());
      bitmapIcon.complete(bitmap);
    }));

    return await bitmapIcon.future;
  }
}
