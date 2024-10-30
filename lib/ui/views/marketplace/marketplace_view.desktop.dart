import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'marketplace_viewmodel.dart';

class MarketplaceViewDesktop extends ViewModelWidget<MarketplaceViewModel> {
  const MarketplaceViewDesktop({super.key});

  @override
  Widget build(BuildContext context, MarketplaceViewModel viewModel) {
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
