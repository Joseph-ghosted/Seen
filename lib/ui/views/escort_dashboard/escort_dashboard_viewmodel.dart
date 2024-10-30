import 'package:stacked/stacked.dart';

class EscortDashboardViewModel extends BaseViewModel {
  double _currentPage = 0;

  double get currentPage => _currentPage;

  void setCurrentPage(double page) {
    _currentPage = page;
    notifyListeners();
  }
}
