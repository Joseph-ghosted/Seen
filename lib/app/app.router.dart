// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i12;
import 'package:stacked/stacked.dart' as _i11;
import 'package:stacked_services/stacked_services.dart' as _i10;

import '../ui/views/detection_map/detection_map_view.dart' as _i8;
import '../ui/views/escort_dashboard/escort_dashboard_view.dart' as _i5;
import '../ui/views/escort_onboarding/escort_onboarding_view.dart' as _i4;
import '../ui/views/escort_profile/escort_profile_view.dart' as _i6;
import '../ui/views/home/home_view.dart' as _i2;
import '../ui/views/login/login_view.dart' as _i3;
import '../ui/views/marketplace/marketplace_view.dart' as _i7;
import '../ui/views/startup/startup_view.dart' as _i1;
import '../ui/views/unknown/unknown_view.dart' as _i9;

final stackedRouter =
    StackedRouterWeb(navigatorKey: _i10.StackedService.navigatorKey);

class StackedRouterWeb extends _i11.RootStackRouter {
  StackedRouterWeb({_i12.GlobalKey<_i12.NavigatorState>? navigatorKey})
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    StartupViewRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.StartupView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginViewRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    EscortOnboardingViewRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.EscortOnboardingView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    EscortDashboardViewRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.EscortDashboardView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    EscortProfileViewRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.EscortProfileView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    MarketplaceViewRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.MarketplaceView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    DetectionMapViewRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.DetectionMapView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    UnknownViewRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i9.UnknownView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(
          StartupViewRoute.name,
          path: '/',
        ),
        _i11.RouteConfig(
          HomeViewRoute.name,
          path: '/home-view',
        ),
        _i11.RouteConfig(
          LoginViewRoute.name,
          path: '/login-view',
        ),
        _i11.RouteConfig(
          EscortOnboardingViewRoute.name,
          path: '/escort-onboarding-view',
        ),
        _i11.RouteConfig(
          EscortDashboardViewRoute.name,
          path: '/escort-dashboard-view',
        ),
        _i11.RouteConfig(
          EscortProfileViewRoute.name,
          path: '/escort-profile-view',
        ),
        _i11.RouteConfig(
          MarketplaceViewRoute.name,
          path: '/marketplace-view',
        ),
        _i11.RouteConfig(
          DetectionMapViewRoute.name,
          path: '/detection-map-view',
        ),
        _i11.RouteConfig(
          UnknownViewRoute.name,
          path: '/404',
        ),
        _i11.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/404',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.StartupView]
class StartupViewRoute extends _i11.PageRouteInfo<void> {
  const StartupViewRoute()
      : super(
          StartupViewRoute.name,
          path: '/',
        );

  static const String name = 'StartupView';
}

/// generated route for
/// [_i2.HomeView]
class HomeViewRoute extends _i11.PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: '/home-view',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i3.LoginView]
class LoginViewRoute extends _i11.PageRouteInfo<void> {
  const LoginViewRoute()
      : super(
          LoginViewRoute.name,
          path: '/login-view',
        );

  static const String name = 'LoginView';
}

/// generated route for
/// [_i4.EscortOnboardingView]
class EscortOnboardingViewRoute extends _i11.PageRouteInfo<void> {
  const EscortOnboardingViewRoute()
      : super(
          EscortOnboardingViewRoute.name,
          path: '/escort-onboarding-view',
        );

  static const String name = 'EscortOnboardingView';
}

/// generated route for
/// [_i5.EscortDashboardView]
class EscortDashboardViewRoute extends _i11.PageRouteInfo<void> {
  const EscortDashboardViewRoute()
      : super(
          EscortDashboardViewRoute.name,
          path: '/escort-dashboard-view',
        );

  static const String name = 'EscortDashboardView';
}

/// generated route for
/// [_i6.EscortProfileView]
class EscortProfileViewRoute extends _i11.PageRouteInfo<void> {
  const EscortProfileViewRoute()
      : super(
          EscortProfileViewRoute.name,
          path: '/escort-profile-view',
        );

  static const String name = 'EscortProfileView';
}

/// generated route for
/// [_i7.MarketplaceView]
class MarketplaceViewRoute extends _i11.PageRouteInfo<void> {
  const MarketplaceViewRoute()
      : super(
          MarketplaceViewRoute.name,
          path: '/marketplace-view',
        );

  static const String name = 'MarketplaceView';
}

/// generated route for
/// [_i8.DetectionMapView]
class DetectionMapViewRoute extends _i11.PageRouteInfo<void> {
  const DetectionMapViewRoute()
      : super(
          DetectionMapViewRoute.name,
          path: '/detection-map-view',
        );

  static const String name = 'DetectionMapView';
}

/// generated route for
/// [_i9.UnknownView]
class UnknownViewRoute extends _i11.PageRouteInfo<void> {
  const UnknownViewRoute()
      : super(
          UnknownViewRoute.name,
          path: '/404',
        );

  static const String name = 'UnknownView';
}

extension RouterStateExtension on _i10.RouterService {
  Future<dynamic> navigateToStartupView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToHomeView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToLoginView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const LoginViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToEscortOnboardingView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const EscortOnboardingViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToEscortDashboardView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const EscortDashboardViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToEscortProfileView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const EscortProfileViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToMarketplaceView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const MarketplaceViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToDetectionMapView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const DetectionMapViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToUnknownView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithStartupView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithHomeView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithLoginView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const LoginViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithEscortOnboardingView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const EscortOnboardingViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithEscortDashboardView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const EscortDashboardViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithEscortProfileView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const EscortProfileViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithMarketplaceView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const MarketplaceViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithDetectionMapView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const DetectionMapViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithUnknownView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }
}
