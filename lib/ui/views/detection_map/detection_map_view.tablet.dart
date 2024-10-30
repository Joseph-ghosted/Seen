import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'detection_map_viewmodel.dart';

class DetectionMapViewTablet extends ViewModelWidget<DetectionMapViewModel> {
  const DetectionMapViewTablet({super.key});

  @override
  Widget build(BuildContext context, DetectionMapViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, TABLET UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
