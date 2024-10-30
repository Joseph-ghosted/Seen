import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'escort_dashboard_viewmodel.dart';

class EscortDashboardViewMobile
    extends ViewModelWidget<EscortDashboardViewModel> {
  const EscortDashboardViewMobile({super.key});

  @override
  Widget build(BuildContext context, EscortDashboardViewModel viewModel) {
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
