import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'detection_map_viewmodel.dart';

class DetectionMapViewDesktop extends ViewModelWidget<DetectionMapViewModel> {
  const DetectionMapViewDesktop({super.key});

  @override
  Widget build(BuildContext context, DetectionMapViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, DESKTOP UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
