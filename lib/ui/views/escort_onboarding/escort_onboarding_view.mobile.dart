import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'escort_onboarding_viewmodel.dart';

class EscortOnboardingViewMobile
    extends ViewModelWidget<EscortOnboardingViewModel> {
  const EscortOnboardingViewMobile({super.key});

  @override
  Widget build(BuildContext context, EscortOnboardingViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, MOBILE UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
