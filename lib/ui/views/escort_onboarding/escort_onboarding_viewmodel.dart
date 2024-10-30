import 'package:stacked/stacked.dart';

class EscortOnboardingViewModel extends BaseViewModel {
  bool _click1 = true;

  bool _click2 = false;

  bool _click3 = false;

  List<String> _selectedButtons = [];

  bool get click1 => _click1;

  bool get click2 => _click2;

  bool get click3 => _click3;

  List<String> get selectedButtons => _selectedButtons;

  bool isSelected(String title) {
    return _selectedButtons.contains(title);
  }

  void setClick(bool value) {
    _click1 = value;
    notifyListeners();
  }

  void setClick2(bool value) {
    _click2 = value;
    notifyListeners();
  }

  void setClick3(bool value) {
    _click3 = value;
    notifyListeners();
  }

  void toggleButton(String title) {
    if (_selectedButtons.contains(title)) {
      _selectedButtons.remove(title);
    } else {
      _selectedButtons.add(title);
    }
    notifyListeners();
  }
}
