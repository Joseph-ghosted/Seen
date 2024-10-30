import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'detection_map_view.desktop.dart';
import 'detection_map_view.tablet.dart';
import 'detection_map_view.mobile.dart';
import 'detection_map_viewmodel.dart';

class DetectionMapView extends StackedView<DetectionMapViewModel> {
  const DetectionMapView({super.key});

  @override
  Widget builder(
    BuildContext context,
    DetectionMapViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const DetectionMapViewMobile(),
      tablet: (_) => const DetectionMapViewTablet(),
      desktop: (_) => const DetectionMapViewDesktop(),
    );
  }

  @override
  DetectionMapViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DetectionMapViewModel();
}
