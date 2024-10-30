import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'escort_onboarding_viewmodel.dart';

class EscortOnboardingViewTablet
    extends ViewModelWidget<EscortOnboardingViewModel> {
  const EscortOnboardingViewTablet({super.key});

  @override
  Widget build(BuildContext context, EscortOnboardingViewModel viewModel) {
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
