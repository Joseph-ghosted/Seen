import 'package:Seen/app/app.locator.dart';
import 'package:Seen/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _routerService = locator<RouterService>();

  bool _click = false;

  bool get click => _click;

  // Place anything here that needs to happen before we get into the application
  Future runLoginRoute() async {
    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    await _routerService.replaceWith(const LoginViewRoute());
  }

  void setClick(bool value) {
    _click = value;
    notifyListeners();
  }
}
