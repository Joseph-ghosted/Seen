import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'escort_onboarding_view.desktop.dart';
import 'escort_onboarding_view.tablet.dart';
import 'escort_onboarding_view.mobile.dart';
import 'escort_onboarding_viewmodel.dart';

class EscortOnboardingView extends StackedView<EscortOnboardingViewModel> {
  const EscortOnboardingView({super.key});

  @override
  Widget builder(
    BuildContext context,
    EscortOnboardingViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const EscortOnboardingViewMobile(),
      tablet: (_) => const EscortOnboardingViewTablet(),
      desktop: (_) => const EscortOnboardingViewDesktop(),
    );
  }

  @override
  EscortOnboardingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EscortOnboardingViewModel();
}
