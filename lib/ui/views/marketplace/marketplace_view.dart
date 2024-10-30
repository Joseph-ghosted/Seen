import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'marketplace_view.desktop.dart';
import 'marketplace_view.tablet.dart';
import 'marketplace_view.mobile.dart';
import 'marketplace_viewmodel.dart';

class MarketplaceView extends StackedView<MarketplaceViewModel> {
  const MarketplaceView({super.key});

  @override
  Widget builder(
    BuildContext context,
    MarketplaceViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const MarketplaceViewMobile(),
      tablet: (_) => const MarketplaceViewTablet(),
      desktop: (_) => const MarketplaceViewDesktop(),
    );
  }

  @override
  MarketplaceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MarketplaceViewModel();
}
