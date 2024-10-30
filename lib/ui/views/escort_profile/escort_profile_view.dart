import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'escort_profile_view.desktop.dart';
import 'escort_profile_view.tablet.dart';
import 'escort_profile_view.mobile.dart';
import 'escort_profile_viewmodel.dart';

class EscortProfileView extends StackedView<EscortProfileViewModel> {
  const EscortProfileView({super.key});

  @override
  Widget builder(
    BuildContext context,
    EscortProfileViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const EscortProfileViewMobile(),
      tablet: (_) => const EscortProfileViewTablet(),
      desktop: (_) => const EscortProfileViewDesktop(),
    );
  }

  @override
  EscortProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EscortProfileViewModel();
}
