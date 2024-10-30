import 'package:Seen/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:Seen/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:Seen/ui/views/home/home_view.dart';
import 'package:Seen/ui/views/startup/startup_view.dart';
import 'package:Seen/ui/views/unknown/unknown_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:Seen/ui/views/login/login_view.dart';
import 'package:Seen/ui/views/escort_onboarding/escort_onboarding_view.dart';
import 'package:Seen/ui/views/escort_dashboard/escort_dashboard_view.dart';
import 'package:Seen/ui/views/escort_profile/escort_profile_view.dart';
import 'package:Seen/ui/views/marketplace/marketplace_view.dart';
import 'package:Seen/ui/views/detection_map/detection_map_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    CustomRoute(page: StartupView, initial: true),
    CustomRoute(page: HomeView),
    CustomRoute(page: LoginView),
    CustomRoute(page: EscortOnboardingView),
    CustomRoute(page: EscortDashboardView),
    CustomRoute(page: EscortProfileView),
    CustomRoute(page: MarketplaceView),
    CustomRoute(page: DetectionMapView),
// @stacked-route

    CustomRoute(page: UnknownView, path: '/404'),

    /// When none of the above routes match, redirect to UnknownView
    RedirectRoute(path: '*', redirectTo: '/404'),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: RouterService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
