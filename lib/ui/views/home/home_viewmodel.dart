import 'package:Seen/app/app.locator.dart';
import 'package:Seen/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _routerService = locator<RouterService>();
  double _currentPage = 0;

  double get currentPage => _currentPage;

  void actionRouteToDetectionMap() {
    _routerService.replaceWith(const DetectionMapViewRoute());
  }

  //navigation
  void actionRouteToMarketPlaceView() {
    _routerService.replaceWith(const MarketplaceViewRoute());
  }

  void setCurrentPage(double page) {
    _currentPage = page;
    notifyListeners();
  }
}
