import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'escort_dashboard_view.desktop.dart';
import 'escort_dashboard_view.tablet.dart';
import 'escort_dashboard_view.mobile.dart';
import 'escort_dashboard_viewmodel.dart';

class EscortDashboardView extends StackedView<EscortDashboardViewModel> {
  const EscortDashboardView({super.key});

  @override
  Widget builder(
    BuildContext context,
    EscortDashboardViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const EscortDashboardViewMobile(),
      tablet: (_) => const EscortDashboardViewTablet(),
      desktop: (_) => const EscortDashboardViewDesktop(),
    );
  }

  @override
  EscortDashboardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EscortDashboardViewModel();
}
