import 'dart:async';

import 'package:Seen/utils/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

import 'detection_map_viewmodel.dart';

class DetectionMapViewMobile extends ViewModelWidget<DetectionMapViewModel> {
  const DetectionMapViewMobile({super.key});

  @override
  Widget build(
    BuildContext context,
    DetectionMapViewModel viewModel,
  ) {
    final Completer<GoogleMapController> _controller =
        Completer<GoogleMapController>();

    Set<Marker> _markers = {};
    const CameraPosition kGooglePlex = CameraPosition(
      target: LatLng(6.5568768, 3.3488896),
      zoom: 14.4746,
    );

    return ViewModelBuilder<DetectionMapViewModel>.reactive(
        viewModelBuilder: () => DetectionMapViewModel(),
        onModelReady: (viewModel) => viewModel.initialize(),
        builder: (context, model, child) {
          return Scaffold(
            body: Scaffold(
              body: Container(
                height: screenHeight,
                width: screenWidth,
                child: Stack(
                  children: [
                    GoogleMap(
                      mapType: MapType.none,
                      // markers: Set<Marker>.of(viewModel.markers),
                      myLocationButtonEnabled: false,
                      onMapCreated: viewModel.onMapCreated,
                      initialCameraPosition: kGooglePlex,
                    ),
                    Positioned(
                      bottom: 20,
                      left: 10,
                      right: 10,
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: viewModel.contacts.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  //_controller.moveCamera(CameraUpdate.newLatLng(_contacts[index]["position"]));
                                },
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  margin: EdgeInsets.only(right: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        viewModel.contacts[index]['image'],
                                        width: 60,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        viewModel.contacts[index]["name"],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          )),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
