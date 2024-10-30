import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'escort_dashboard_viewmodel.dart';

class EscortDashboardViewTablet
    extends ViewModelWidget<EscortDashboardViewModel> {
  const EscortDashboardViewTablet({super.key});

  @override
  Widget build(BuildContext context, EscortDashboardViewModel viewModel) {
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
