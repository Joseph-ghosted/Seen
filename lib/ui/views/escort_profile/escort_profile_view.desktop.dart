import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'escort_profile_viewmodel.dart';

class EscortProfileViewDesktop extends ViewModelWidget<EscortProfileViewModel> {
  const EscortProfileViewDesktop({super.key});

  @override
  Widget build(BuildContext context, EscortProfileViewModel viewModel) {
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
